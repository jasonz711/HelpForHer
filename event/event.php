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
<div style="text-align: center;padding-top: 20px;">
	<h4 style="display: inline;font-size: large;">Find out what's happening in Melbourne</h4><br>
</div>
<div id="content">	
	<?php foreach ($eventarr as $row) {	?>
		<div id="card">
			<div id="front">
				<p><?php echo $row->name; ?><br><br>
					<small><?php echo date("D,j M Y g:ia",$row->time+10*3600); ?></small></p>
				</div>
				<div id="back" style="text-align: left;">
					<div>
						<p><b>Address: </b><?php echo $row->address_1; ?></p>
						<?php 
						if (isset($row->phone)){ ?>
							<p><b>Phone: </b><?php echo $row->phone; ?></p> <?php
						} 
						if (isset($row->event_url)) { ?>
							<p><b>Website: </b><a href=<?php echo $row->event_url; ?> target="_blank" class="button" id="button">
								Click here</a></p> <?php
							}?>
						</div>
					</div>
				</div>

				<?php
				
			}?></div>
			

		</div>
		<link type="text/css" rel="stylesheet" href="css/card-display.css">

		<?php get_footer();