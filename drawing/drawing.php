<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>
<div id="toolbar">
	<div id="rad">
		Radius <span id="radval">10</span>
		<div id="decrad" class="radcontrol">-</div>
		<div id="incrad" class="radcontrol">+</div>
	</div>
	<div id="colors"></div>
	<div id="clear">Clear</div>
</div>
<canvas id='canvas' style="display: block;">
	Looks like your browser doesn't support canvas!
</canvas>

<style type="text/css">
*{
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	font-family: sans-serif;

	user-select: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

#canvas{
	padding: 0;
	margin: 0;
	width: inherit;
}

#toolbar{
	width: 100%;
	height: 50px;
	padding: 10px;
	position: relative;
	top: 0;
	background: #2f2f2f;
	color: white;
}
.radcontrol{
	width: 30px;
	height: 30px;
	background: #4f4f4f;
	display: inline-block;
	text-align: center;
	padding: 5px;
}

#rad{
	float: left;
}

#colors{
	float: right;
}
.swatch{
	width: 30px;
	height: 30px;
	border-radius: 15px;
	box-shadow: inset 0px 1px 0px rgba(255 , 255 , 255 , 0.5), 0px 2px 2px rgba(0 , 0 , 0 , 0.5);
	display: inline-block;
	margin-left: 10px;
}
.swatch.active{
	border: 2px solid white;
	box-shadow: inset 0px 1px 2px rgba(0,0,0,0.5);
}
#clear{
	float: right;
	margin-right: 20px;
	height: 30px;
	padding: 8px;
	background: #434343;
}
#clear:hover{
	background: #818181;
	cursor: pointer;
}
</style>
<script type="text/javascript">
	var canvas = document.getElementById('canvas');
	var context = canvas.getContext('2d');

	var radius = 10;
	var dragging = false;

	canvas.width = window.innerWidth;
	canvas.height = window.innerHeight;
	var CleanBtn = document.getElementById('clear');

	context.lineWidth = radius*2;

	var putPoint = function(e){
		if(dragging == true){
			context.lineCap = 'square';
			context.lineTo(e.clientX, e.clientY);
			context.stroke();
			context.beginPath();
			context.arc(0, 0, radius, 0, 2*Math.PI/2^2*5);
			context.fill();
			context.beginPath();
			context.moveTo(e.clientX, e.clientY);
		}
	}

	var engage = function(e){
		dragging = true;
		putPoint(e);
	}

	var disengage = function(){
		dragging = false;
		context.beginPath();
	}

	var CleanCanvas = function(){
		context.fillStyle = 'white';
		context.fillRect(0,0, window.innerWidth, window.innerWidth);
		setSwatch({target: document.getElementsByClassName("swatch")[0]});
	}

	CleanBtn.addEventListener('click', CleanCanvas);
	canvas.addEventListener('mousedown', engage);
	canvas.addEventListener('mouseout', disengage);
	canvas.addEventListener('mousemove', putPoint);
	canvas.addEventListener('mouseup', disengage);

	var setRadius = function(newRadius){
		if(newRadius<minRad){
			newRadius = minRad;
		}else if(newRadius>maxRad){
			newRadius = maxRad;
		}
		radius = newRadius;
		context.lineWidth = radius*2;

		radSpan.innerHTML = radius;
	}

	var minRad = 0.5,
	maxRad = 100,
	interval = 5,
	defaultRad = 20,
	radSpan = document.getElementById('radval'),
	decRad = document.getElementById('decrad'),
	incRad = document.getElementById('incrad');
	decRad.addEventListener('click', function(){
		setRadius(radius-interval);
	})

	incRad.addEventListener('click', function(){
		setRadius(radius+interval);
	})

	setRadius(defaultRad);

	var colors = ['black', 'grey', 'white', 'red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet'];

	for(var i=0, n=colors.length; i<n; i++){
		var swatch = document.createElement('div');
		swatch.className = "swatch";
		swatch.style.backgroundColor = colors[i];
		swatch.addEventListener('click', setSwatch);
		document.getElementById('colors').appendChild(swatch);
	}

	function setColor(color){
		context.fillStyle = color;
		context.strokeStyle = color;
		var active = document.getElementsByClassName("active")[0];
		if(active){
			active.className = "swatch";
		}
	}

	function setSwatch(e){
		var swatch = e.target;
		setColor(swatch.style.backgroundColor);
		swatch.className += " active";
	}

	setSwatch({target: document.getElementsByClassName("swatch")[0]});
</script>
<?php get_footer();