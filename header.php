<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<div  id="page-top" class="header-top">
	<?php mesmerize_print_header_top_bar(); ?>
	<?php mesmerize_get_navigation(); ?>
</div>

<div id="page" class="site">
    <div class="header-wrapper">
        <div <?php echo mesmerize_header_background_atts(); ?>>
            <?php do_action( 'mesmerize_before_header_background' ); ?>
			<?php mesmerize_print_video_container(); ?>
<!-- 					<?php mesmerize_print_inner_pages_header_content(); ?> -->
            <?php mesmerize_print_header_separator(); ?>
        </div>
    </div>
