<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();

require 'vendor/autoload.php';

$client = new GuzzleHttp\Client();
$res = $client->request('GET', 'https://api.meetup.com/2/open_events',[
	'query'=>[
		'category'=>1,
		'country'=>'au',
		'city'=>'melbourne',
		'key'=>'43d1e76135b34636c37457273d4c']
	]);
$apidata=json_decode($res->getBody(),ture);
echo $res->getStatusCode();
// "200"
echo $res->getHeader('content-type');
// 'application/json; charset=utf8'
foreach ($apidata['results'] as $value) {
	echo $value['name'] . "<br>";
}

?>


<?php get_footer();