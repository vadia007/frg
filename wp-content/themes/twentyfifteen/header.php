<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="wrapper" class="container">

    <header>
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="logo-image">
                    <a href="<?php bloginfo('url'); ?>">
                        <img src="<?php echo get_template_directory_uri() . '/img/logo.png'; ?>"
                             alt="<?php bloginfo('name'); ?>"/>
                    </a>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="header-center-col">
                    <img src="<?php echo get_template_directory_uri() . '/img/header-center-col.png'; ?>"
                         alt="Fort Rouge Glass"/>
                </div>
            </div>

            <div class="col-lg-3 col-md-3">
                <div class="right-block">
                    <div class="text">

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
                    <div class="request-quote">
                        <img src="<?php echo get_template_directory_uri() . '/img/request_quote.png'; ?>"
                             alt="Request a quote"/>
                        <a href="#"><?php _e('Request a quote'); ?></a>
                    </div>
                </div>
            </div>
        </div>
    </header><!-- .site-header -->

    <?php $args = array(
        'menu' => 5
    );
    wp_nav_menu($args);?>

    <div id="content" class="site-content">
