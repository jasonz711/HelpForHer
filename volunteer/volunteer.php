<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/volunteer.css">
<link type="text/css" rel="stylesheet" href="css/modal.css">
<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();

global $wpdb;
// get Google Map API key from DB
$mapkey=$wpdb->get_var("select `value` from `credentials` where `id`=1");
$query="select * from `volunteer` where `start_time`>=" . time();
$eventarr=$wpdb->get_results($query);
//sort events by time
$timearr=array();
foreach ($eventarr as $key => $value) {
	$timearr[$key]=$value->start_time;
}
array_multisort($timearr,SORT_ASC,$eventarr);

?>
<div style="min-height: 100%;padding-bottom: 300px;">
	<div style="text-align: center;padding-top: 20px;">
		<h4 style="display: inline;font-size: large;">Find out volunteering opportunities in Melbourne</h4><br>
		<form method="POST" id="category_form">
			<label><input type="radio" name="radio" value="all" <?php if ((isset($_POST['radio']) and $_POST['radio']=='all') or (!isset($_POST['radio']))) echo "checked='checked'"; ?>/>All</label>
			<label><input type="radio" name="radio" value="arts" <?php if (isset($_POST['radio']) && $_POST['radio']=='arts') echo "checked='checked'";?>/>Arts</label>
			<label><input type="radio" name="radio" value="culture" <?php if (isset($_POST['radio']) && $_POST['radio']=='culture') echo "checked='checked'";?>/>Culture</label>
			<label><input type="radio" name="radio" value="sports" <?php if (isset($_POST['radio']) && $_POST['radio']=='sports') echo "checked='checked'";?>/>Sports&Fitness</label>
		</form>
		<?php 
		$filteredVolunteer=array();
		if (isset($_POST['radio'])) {
			if ($_POST['radio']=='all') {
				$filteredVolunteer=$eventarr;
			} elseif ($_POST['radio']=='arts') {
				foreach ($eventarr as $index=>$row) {
					if (in_array($row->category_id, array(103,105,104,106))) {
						array_push($filteredVolunteer,$row);
					}
				}
			} elseif ($_POST['radio']=='culture') {
				foreach ($eventarr as $index=>$row) {
					if ($row->category_id==113) {
						array_push($filteredVolunteer,$row);
					}
				}
			} elseif ($_POST['radio']=='sports') {
				foreach ($eventarr as $index=>$row) {
					if ($row->category_id==108) {
						array_push($filteredVolunteer,$row);
					}
				}
			}			
		} else {
			$filteredVolunteer=$eventarr;
		}
		if (count($filteredVolunteer)==0) {echo "<h4>Opps, no volunteering events are available right now. Please come back later!</h4>";} ?>
	</div>
	<div id="content">	
		<?php foreach ($filteredVolunteer as $index=>$row) {	?>
			<div class="event_card">
				<div class="event_img">
					<img src="<?php if (isset($row->photo_url)) {
						echo $row->photo_url;
					} else {echo "img/event.jpg";} ?>">
				</div>
				<date class="card__date">
					<span class="card__date__day">
						<?php echo date("j",$row->start_time); ?>
					</span>
					<br/>
					<span class="card__date__month">
						<?php echo date("M",$row->start_time); ?>
					</span>
				</date>
				<div class="event_body">
					<div class="event_card_title">
						<p><?php echo $row->name; ?><br><br></p>
					</div>
					<div class="event_address">
						<a class="mapBtn" id="mapBtn<?php echo $index; ?>" onclick="mapBtnFunction(this.id)">
							<i class="fa fa-map-marker"></i>&nbsp<?php echo $row->placename; ?></a>
						</div>
					</div>
					<div class="event_card_footer">
						<i class="fa fa-clock-o"></i> <?php echo date("g:ia",$row->start_time); ?>&nbsp&nbsp
						<a id="descBtn<?php echo $index; ?>" onclick="descBtnFunction(this.id)"><i class="fa fa-file-text-o"></i> Description</a>
					</div>
				</div>
				<div class="modal" id="modal<?php echo $index; ?>">
					<div class="modal-content">							
						<iframe class="resp-mapiframe"								
						frameborder="0" style="border:0"
						src="https://www.google.com/maps/embed/v1/place?key=<?php echo $mapkey; ?>
						&q=<?php echo str_replace(" ","+",$row->address_1) . "," . str_replace(" ","+",$row->city);?>" allowfullscreen>
					</iframe>
				</div>
			</div>
			<div class="modal" id="desc_modal<?php echo $index; ?>">
				<div class="modal-content" style="height: auto;padding-bottom: 10px;">							
					<?php echo $row->description; ?>
				</div>
			</div>
			<?php				
		}?></div>
	</div>
</div>
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
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("input:radio").change(
			function()
			{					
				$("#category_form").submit();					
			});
	});
</script>
<?php get_footer();