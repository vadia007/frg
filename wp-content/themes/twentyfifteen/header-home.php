<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <!--[if lt IE 9]>
    <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/html5.js"></script>
    <![endif]-->
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="wrapper" class="container">

    <header>
        <div class="row">
            <div class="col-lg-3 hearer-left-col">
                <div class="logo-img">
                    <a href="<?php bloginfo('url'); ?>">
                        <img src="<?php echo get_template_directory_uri() . '/img/home-logo.png'; ?>"
                             alt="<?php bloginfo('name'); ?>"/>
                    </a>
                </div>
                <div class="logo-text-wrapper">

                    <?php $post_meta = get_post_meta(114); ?>

                    <span class="logo-phone"><i class="fa fa-phone"></i>
                        <?php echo isset($post_meta['Phone'][0]) && $post_meta['Phone'][0] ?
                            $post_meta['Phone'][0] : '204-475-2774'; ?>
                    </span>

                    <span class="logo-text">
                        <?php echo isset($post_meta['Address'][0]) && $post_meta['Address'][0] ?
                            $post_meta['Address'][0] : __('380 Osborne Street Sothh, Winnipeg, MB R3L 1Z8'); ?>
                    </span>

                    <?php if (isset($post_meta['Email'][0]) && $post_meta['Email'][0]) { ?>

                        <a class="logo-mail" href="mailto:<?php echo $post_meta['Email'][0]; ?>">
                            <?php echo $post_meta['Email'][0]; ?>
                        </a>

                    <?php } else { ?>

                        <a class="logo-mail" href="mailto:info@frg.ca">info@frg.ca</a>

                    <?php } ?>

                </div>

                <?php $welcome_post_id = 4;
                $welcome_post = get_post($welcome_post_id);
                if (is_object($welcome_post)) {
                    ?>

                    <div class="welcome-block">
                        <h3><?php echo $welcome_post->post_title; ?></h3>

                        <p><?php echo $welcome_post->post_content; ?></p>
                    </div>

                <?php } ?>
                <div class="view-gallery">
                    <a href="#"><?php _e('View gallery'); ?></a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="head-slider">
                    <?php echo do_shortcode('[nggallery id=1 template="3dfluxsliderview"]'); ?>

                    <?php $top_args = array(
                        'menu' => 2
                    );
                    wp_nav_menu($top_args);

                    $bottom_args = array(
                        'menu' => 3
                    );
                    wp_nav_menu($bottom_args);?>
                </div>
            </div>
        </div>
    </header>
    <!-- .site-header -->

    <div id="content">
