<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();

require 'vendor/autoload.php';
use GuzzleHttp\Exception\ClientException;
global $wpdb;
$client = new GuzzleHttp\Client();
$meetupkey=$wpdb->get_var("select `value` from `credentials` where `id`=2");
//try to connect Meetup API
try {
	$res = $client->request('GET', 'https://api.meetup.com/2/open_events',[
		'query'=>[
			'category'=>1,
			'country'=>'au',
			'city'=>'melbourne',
			'key'=>$meetupkey]
		]);
} catch (ClientException $e) {

}
//decode json result,save to database,override old ones
if(isset($res)) {
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
}

//get Google Map API key from DB
$mapkey=$wpdb->get_var("select `value` from `credentials` where `id`=1");
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
			<div class="event_card">
				<div class="event_img">
					<img src="<?php if (isset($row->photo_url)) {
						echo $row->photo_url;
					} else {echo "img/event.jpg";} ?>">
				</div>
				<date class="card__date">
					<span class="card__date__day">
						<?php echo date("j",$row->time+10*3600); ?>
					</span>
					<br/>
					<span class="card__date__month">
						<?php echo date("M",$row->time+10*3600); ?>
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
						<i class="fa fa-clock-o"></i> <?php echo date("g:ia",$row->time+10*3600); ?>&nbsp&nbsp
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
<link type="text/css" rel="stylesheet" href="css/event.css">
<link type="text/css" rel="stylesheet" href="css/modal.css">
<script type="text/javascript" src="js/modal.js"></script>
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