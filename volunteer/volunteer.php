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

require 'vendor/autoload.php';
use GuzzleHttp\Exception\ClientException;
global $wpdb;

//extent max time limit to complete many API calls
// set_time_limit(300);
// $client = new GuzzleHttp\Client();
// $eventbriteApiKey=$wpdb->get_var("select `value` from `credentials` where `id`=3");
// //try to connect Eventbrite API
// try {
// 	$res = $client->request('GET', 'https://www.eventbriteapi.com/v3/events/search',[
// 		'query'=>[
// 			'categories'=>'113,103,110,105,104,108,106',
// 			'location.address'=>'melbourne',
// 			'q'=>'volunteer',
// 			'token'=>$eventbriteApiKey]
// 		]);
// } catch (ClientException $e) {

// }

//decode json result,save to database,override old ones
// if (isset($res)) { 
// 	if ($res->getStatusCode()==200) {
// 		$apidata=json_decode($res->getBody(),ture);
// 		foreach ($apidata['events'] as $value) {
// 			$temparr = array('id' => $value['id'],
// 				'name' => $value['name']['text'],
// 				'start_time' => strtotime($value['start']['local']),
// 				'end_time' => strtotime($value['end']['local']),
// 				'event_url' => $value['url'],
// 				'description' => $value['description']['html'],
// 				'photo_url' => $value['logo']['url']);
// 			try {
// 				$venue_url="https://www.eventbriteapi.com/v3/venues/".$value['venue_id'];
// 				$venue_res = $client->request('GET', $venue_url,[
// 					'query'=>['token'=>$eventbriteApiKey]
// 				]);
// 			} catch (ClientException $e) {

// 			}
// 			if (isset($venue_res)) {
// 				if ($venue_res->getStatusCode()==200) {
// 					$venue_res=json_decode($venue_res->getBody(),ture);
// 					$temparr['placename']=$venue_res['name'];
// 					$temparr['lat']=$venue_res['latitude'];
// 					$temparr['lon']=$venue_res['longitude'];
// 					$temparr['address_1']=$venue_res['address']['address_1'];
// 					$temparr['address_2']=$venue_res['address']['address_2'];
// 					$temparr['city']=$venue_res['address']['city'];

// 				}
// 			}
// 			$wpdb->replace('volunteer',$temparr);
// 		}
// 	}
// }

// get Google Map API key from DB
$mapkey=$wpdb->get_var("select `value` from `credentials` where `id`=1");
$query="select * from `volunteer` where `start_time`>=" . time();
//delete old records
$query_delete="delete from `volunteer` where `start_time`<" . time();
$wpdb->query($query_delete);
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
<?php get_footer();