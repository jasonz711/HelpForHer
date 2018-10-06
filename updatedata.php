<?php 
require_once(dirname(__FILE__) . '/wp-config.php');
//extent max time limit to complete many API calls
set_time_limit(300);
require 'vendor/autoload.php';
use GuzzleHttp\Exception\ClientException;
global $wpdb;
$client = new GuzzleHttp\Client();
//code below is to update meetup event data
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
//delete old records
$query_delete="delete from `events` where `time`<" . time();
$wpdb->query($query_delete);

//code below is to update eventbrite volunteering data
$eventbriteApiKey=$wpdb->get_var("select `value` from `credentials` where `id`=3");
//try to connect Eventbrite API
try {
	$res = $client->request('GET', 'https://www.eventbriteapi.com/v3/events/search',[
		'query'=>[
			'categories'=>'113,103,105,104,108,106',
			'location.address'=>'melbourne',
			'q'=>'volunteer',
			'token'=>$eventbriteApiKey]
		]);
} catch (ClientException $e) {

}

// decode json result,save to database,override old ones
if (isset($res)) { 
	if ($res->getStatusCode()==200) {
		$apidata=json_decode($res->getBody(),ture);
		foreach ($apidata['events'] as $value) {
			$temparr = array('id' => $value['id'],
				'name' => $value['name']['text'],
				'start_time' => strtotime($value['start']['local']),
				'end_time' => strtotime($value['end']['local']),
				'event_url' => $value['url'],
				'description' => $value['description']['html'],
				'photo_url' => $value['logo']['url'],
				'category_id' => $value['category_id']);
			try {
				$venue_url="https://www.eventbriteapi.com/v3/venues/".$value['venue_id'];
				$venue_res = $client->request('GET', $venue_url,[
					'query'=>['token'=>$eventbriteApiKey]
				]);
			} catch (ClientException $e) {

			}
			if (isset($venue_res)) {
				if ($venue_res->getStatusCode()==200) {
					$venue_res=json_decode($venue_res->getBody(),ture);
					$temparr['placename']=$venue_res['name'];
					$temparr['lat']=$venue_res['latitude'];
					$temparr['lon']=$venue_res['longitude'];
					$temparr['address_1']=$venue_res['address']['address_1'];
					$temparr['address_2']=$venue_res['address']['address_2'];
					$temparr['city']=$venue_res['address']['city'];

				}
			}
			$wpdb->replace('volunteer',$temparr);
		}
	}
}
//delete old volunteer records
$query_delete="delete from `volunteer` where `start_time`<" . time();
$wpdb->query($query_delete);
?>