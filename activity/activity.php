<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>

<?php 

session_start();
global $wpdb;
$_SESSION['arts']=$wpdb->get_results("select * from `arts`");
$_SESSION['fitness']=$wpdb->get_results("select * from `fitness`");
$_SESSION['sport']=$wpdb->get_results("select * from `sport`");

?>

<div style="min-height: 100%;padding-bottom: 300px;">
	<div style="text-align: center;padding-top: 20px;">
		<h4 style="display: inline;font-size: large;">What is your interest?</h4><br>
		<h4 style="display: inline;">Find more details about the places based on your interests</h4>
	</div>
	<div style="text-align: center;padding-top: 30px;padding-bottom: 20px;">
		<div class="dropdown">
			<button class="dropbtn" style="font-weight: bold;">Arts</button>
			<div class="dropdown-content">
				<a href="?search=true&category=arts">All</a>
				<a href="?search=true&category=arts&subcategory=dance">Dance</a>
				<a href="?search=true&category=arts&subcategory=gallery">Gallery</a>
				<a href="?search=true&category=arts&subcategory=literature">Literature</a>
				<a href="?search=true&category=arts&subcategory=music">Music</a>
				<a href="?search=true&category=arts&subcategory=musuem">Musuem</a>
				<a href="?search=true&category=arts&subcategory=theatre">Theatre</a>
				<a href="?search=true&category=arts&subcategory=visual arts and craft">Visual arts and craft</a>				
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn" style="font-weight: bold;">Fitness</button>
			<div class="dropdown-content">
				<a href="?search=true&category=fitness">All</a>
				<a href="?search=true&category=fitness&subcategory=dance class">Dance Class</a>
				<a href="?search=true&category=fitness&subcategory=fitness centre">Fitness centre</a>
				<a href="?search=true&category=fitness&subcategory=gymnasium workouts">Gymnasium Workouts</a>
				<a href="?search=true&category=fitness&subcategory=martial arts">Martial Arts</a>				
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn" style="font-weight: bold;">Sports</button>
			<div class="dropdown-content">
				<a href="?search=true&category=sport">All</a>
				<a href="?search=true&category=sport&subcategory=Badminton">Badminton</a>
				<a href="?search=true&category=sport&subcategory=Basketball">Basketball</a>
				<a href="?search=true&category=sport&subcategory=Baseball">Baseball</a>
				<a href="?search=true&category=sport&subcategory=BMX">BMX</a>
				<a href="?search=true&category=sport&subcategory=Cycling">Cycling</a>
				<a href="?search=true&category=sport&subcategory=Football">Football</a>
				<a href="?search=true&category=sport&subcategory=Golf">Golf</a>
				<a href="?search=true&category=sport&subcategory=Gridiron">Gridiron</a>
				<a href="?search=true&category=sport&subcategory=Hockey">Hockey</a>
				<a href="?search=true&category=sport&subcategory=Lacrosse">Lacrosse</a>
				<a href="?search=true&category=sport&subcategory=Netball">Netball</a>
				<a href="?search=true&category=sport&subcategory=Rugby">Rugby</a>
				<a href="?search=true&category=sport&subcategory=Sailing">Sailing</a>
				<a href="?search=true&category=sport&subcategory=Shooting Sports">Shooting Sports</a>
				<a href="?search=true&category=sport&subcategory=Skating">Skating</a>
				<a href="?search=true&category=sport&subcategory=soccer">Soccer</a>
				<a href="?search=true&category=sport&subcategory=Softball">Softball</a>
				<a href="?search=true&category=sport&subcategory=Squash">Squash</a>
				<a href="?search=true&category=sport&subcategory=Surf Life Saving">Surf Life Saving</a>
				<a href="?search=true&category=sport&subcategory=Swimming">Swimming</a>
				<a href="?search=true&category=sport&subcategory=Team Handball">Team Handball</a>
				<a href="?search=true&category=sport&subcategory=Tennis">Tennis</a>
				<a href="?search=true&category=sport&subcategory=Touch Football">Touch Football</a>
				<a href="?search=true&category=sport&subcategory=Volleyball">Volleyball</a>			
			</div>
		</div>
	</div>

	<?php 
	if ($_GET['search']) {
		$category=strtolower($_GET['category']);
		$subcategory=empty($_GET['subcategory'])?false:strtolower($_GET['subcategory']);
		?>
		<div style="text-align: center;"><p style="display: inline;font-size: larger;"><?php 
		if ($subcategory===false) {
			echo ucfirst($category) . " - All";
		} else {
			echo ucfirst($category) . " - " . ucwords($subcategory);
		}
		?></p></div>
		<div id="content">	
			<?php foreach ($_SESSION[$category] as $index=>$row) {	
				if ($subcategory==false or strpos(strtolower(trim($row->subcategory)),$subcategory)!==false){ ?>
					<div id="card">
						<div id="front">
							<p><?php echo $row->name; ?><br><br>
								<small><?php echo $row->suburb; ?></small><br>
								<span style="font-size: small;"><?php echo $row->address . " " . $row->postcode; ?></span></p>
							</div>
							<div id="back" style="text-align: left;">
								<div>									
									<?php 
									if (!(strtolower(trim($row->phone))=="na")){ ?>
										<p><b>Phone: </b><?php echo $row->phone; ?></p> <?php
									} 
									if (!(strtolower(trim($row->website))=="na")) { ?>
										<p><b>Website: </b><a href=<?php echo $row->website; ?> target="_blank" class="button" id="button">
										Click here</a></p>							
										<?php
									}?>
									<a style="text-decoration: none;" class="mapBtn" id="mapBtn<?php echo $index; ?>" onclick="mapBtnFunction(this.id)">show me there</a>
								</div>
							</div>
						</div>
						<div class="modal" id="modal<?php echo $index; ?>">
							<div class="modal-content">							
							<iframe class="resp-mapiframe"								
							frameborder="0" style="border:0"
							src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCY06u4Q0z7X9VJ308Mk1WxeShKhH5noBw
							&q=<?php echo str_replace(" ","+",$row->address) . "," . str_replace(" ","+",$row->state);?>" allowfullscreen>
						</iframe>
					</div>
				</div>
				<?php
			}
		}?></div>
		<?php 				
	}  ?>

</div>
<link type="text/css" rel="stylesheet" href="css/card-display.css">
<link type="text/css" rel="stylesheet" href="css/modal.css">
<script type="text/javascript" src="js/modal.js"></script>
<style>
html,body{
	height: 100%;
	margin: 0;
	padding: 0;
}
footer{
	height: 300px;
	margin-top: -300px;
}
.dropbtn {
	display: inline-block;
	background-color: #24223a;
	color: white;
	font-size: 16px;
	border: none;	
	width: 100px;
	height: 50px;
}

.dropdown {
	position: relative;
	display: inline-block;	
	padding-left: 10px;
	padding-right: 10px;

}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	z-index: 1;
	max-height: 200px;
	overflow: auto;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {opacity: 0.8;}
</style>
<?php get_footer();