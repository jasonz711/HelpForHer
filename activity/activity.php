<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>
<link type="text/css" rel="stylesheet" href="style.css">

<form method="get">
	<input type="checkbox" name="type[]" value="dance">Dance
	<input type="checkbox" name="type[]" value="yoga">Yoga
	<input type="checkbox" name="type[]" value="fitness">Fitness centre
	<input type="checkbox" name="type[]" value="swimming">Swimming pool
	<input type="checkbox" name="type[]" value="club">Club
	<input type="checkbox" name="type[]" value="martial arts">Martial arts
	<input type="checkbox" name="type[]" value="tai chi">Tai Chi
	<input type="checkbox" name="type[]" value="recreation group">Recreation group
	<input type="checkbox" name="type[]" value="walking">Walking club


	<input type="submit" name="set" value="search">

</form>
<?php 
if ($_GET['set']) {
	$type=$_GET['type'];
	if (empty($type)) {
		echo "You didn't select any types";
	} else {
		global $wpdb;
		$str=implode("%'or`category` like '%",$type);
		$result=$wpdb->get_results("select * from `activities` where `category` like '%$str%'"); ?>	
		<div class="cards">	
			<?php foreach ($result as $print) {	?>

				<div class="card">
					<img src="images/wave1.jpg">
					<div class="card-title">
						<a href="http://www.google.com/" class="toggle-info btn">
							<span class="left"></span>
							<span class="right"></span>
						</a>
						<h2>
							<?php echo $print->name; ?>
							<small><?php echo $print->category; ?></small>
						</h2>
					</div>
					<div class="card-flap flap1">
						<div class="card-description">
							<?php echo $print->address; ?><br/>
							<?php echo $print->postcode; ?>
						</div>
						<div class="card-flap flap2">
							<div class="card-actions">
								<a href="http://www.jsdaima.com/" class="btn">More</a>
							</div>
						</div>
					</div>
				</div>
				<?php
			}?></div><?php 
		} 
	}


	?>
	<script type="text/javascript" src="./jquery-3.3.1.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js'></script>
	<script type="text/javascript" src="index.js"></script>
	<?php get_footer();