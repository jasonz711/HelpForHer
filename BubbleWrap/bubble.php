<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>

<script>

var popSound = document.createElement("audio");
popSound.src="http://bit.ly/AX202_PopSound";
function pop() {
  event.target.src="http://bit.ly/AX202_Pop";
  popSound.play();
}

function resetAll()
{
  for(var i=0; i<bubbles.length; ++i)
  {
    bubbles[i].src = unpoppedURL;
  }
}
</script>

<style>

.bubble-container {
  display: inline-grid;
  grid-template-columns: auto auto auto;
  background-color: #2196F3;
}
.bubble-item {
  background-color: rgba(255, 255, 255, 0.8);
}

.buttons { margin-bottom: 1.0em; }

button {
  font-size: 18px;
  font-family: sans-serif;
  display: inline-block;
  padding: 10px 20px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #191731;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);



</style>

<h1>Bubble Wrap</h1>
<p>Click to pop the bubbles</p>
<hr>
  
<div class="bubble-container">

  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>  
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
  <div class="bubble-item"><img src="http://bit.ly/AX202_UnPop" onclick="pop()"></div>
 
 </div>
	

<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>

<div align="center">

<button class="button" onClick="window.location.href=window.location.href">Refresh</button>
</div>

<?php get_footer();  
  
  

