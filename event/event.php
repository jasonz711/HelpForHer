<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();

require 'vendor/autoload.php';
global $wpdb;
$client = new GuzzleHttp\Client();
$res = $client->request('GET', 'https://api.meetup.com/2/open_events',[
	'query'=>[
		'category'=>1,
		'country'=>'au',
		'city'=>'melbourne',
		'key'=>'43d1e76135b34636c37457273d4c']
	]);
if ($res->getStatusCode()==200) {
	$apidata=json_decode($res->getBody(),ture);
	foreach ($apidata['results'] as $value) {
		$temparr = array('id' => $value['id'],
			'name' => $value['name'],
			'time' => $value['time']/1000,
			'placename' => $value['venue']['name'],
			'lat' => $value['venue']['lat'],
			'lon' => $value['venue']['lon'],
			'address_1' => $value ['venue']['address_1'],
			'address_2' => $value['venue']['address_2'],
			'address_3' => $value['venue']['address_3'],
			'city' => $value['venue']['city'],
			'phone' => $value['venue']['phone'],
			'event_url' => $value['event_url'],
			'description' => $value['description'],
			'duration' => $value['duration']/1000,
			'photo_url' => $value['photo_url']);
		$wpdb->replace('events',$temparr);
	}
}
$query="select * from `events` where `time`>=" . time();
//delete old records
$query_delete="delete from `events` where `time`<" . time();
$wpdb->query($query_delete);
$eventarr=$wpdb->get_results($query);
//sort events by time
$timearr=array();
foreach ($eventarr as $key => $value) {
	$timearr[$key]=$value->time;
}
array_multisort($timearr,SORT_ASC,$eventarr);

?>
<div style="min-height: 100%;padding-bottom: 300px;">
	<div style="text-align: center;padding-top: 20px;">
		<h4 style="display: inline;font-size: large;">Find out what's happening in Melbourne</h4><br>
	</div>
	<div id="content">	
		<?php foreach ($eventarr as $index=>$row) {	?>
			<div id="card">
				<div id="front">
					<p><?php echo $row->name; ?><br><br>
						<small><?php echo date("D,j M Y g:ia",$row->time+10*3600); ?></small></p>
					</div>
					<div id="back" style="text-align: left;">
						<div>
							<p><i class="fa fa-map-marker" style="color: #fff;"></i>&nbsp<?php echo $row->address_1; ?></p>
							<?php 
							if (isset($row->phone)){ ?>
								<p><i class="fa fa-phone" style="color: #fff;"></i>&nbsp<?php echo $row->phone; ?></p> <?php
							}?>							
							<a class="mapBtn button" id="mapBtn<?php echo $index; ?>" onclick="mapBtnFunction(this.id)" style="font-size: smaller;">Description</a>
						</div>
					</div>
				</div>
				<div class="modal" id="modal<?php echo $index; ?>">
					<div class="modal-content" style="height: auto;padding-bottom: 10px;">							
						<?php echo $row->description; ?>
					</div>
				</div>
				<?php

			}?></div>
		</div>
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
</style>
<?php get_footer();