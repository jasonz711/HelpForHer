<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>
<style>
.resp-container {
	position: relative;
	overflow: hidden;
	padding-bottom: 56.25%;
	height: 0;
}
.resp-iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 0;
}

}

</style>

<div class="resp-container hidden-xs hidden-sm">
	<iframe class="resp-iframe" src="https://colormandala.com/" frameborder="0" allowfullscreen></iframe>

</div>
<div class="hidden-md hidden-lg" style="padding-top: 50px;padding-bottom:50px;">
	<p>Sorry this feature is available only for Desktop version.</p>
</div>

</div>



<?php get_footer();