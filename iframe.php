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
	padding-top: 35px;
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
/*.responsive {
	width: 100%;
	height: 0%;
	padding-bottom: 56.25;
	position: relative;
	}*/
/*.responsive iframe {
	position: absolute;
	width: 100%;
	height: 100%;
	}*/
</style>

<div class="resp-container hidden-xs hidden-sm" id="desk">
	<iframe class="resp-iframe" src="http://weavesilk.com/" frameborder="0" allowfullscreen></iframe>

	<iframe style="display:none;"width="560" height="315" src="https://www.youtube.com/embed/RZrcaOnqu-E?rel=0&autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

</div>


<?php get_footer();