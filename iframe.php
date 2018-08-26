<?php
require_once(dirname(__FILE__) . '/wp-config.php');
$wp->init();
$wp->parse_request();
$wp->query_posts();
$wp->register_globals();
$wp->send_headers();

get_header();
?>
.responsive {
    width: 100%;
    height: 0%;
    padding-bottom: 56.25;
    position: relative;
}
.responsive iframe {
    position: absolute;
    width: 100%;
    height: 100%;
}
<div class="responsive">
<iframe width="560" height="300" src="https://sketch.io/sketchpad/" frameborder="0" allowfullscreen></iframe>
</div>

<?php get_footer();