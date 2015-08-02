<?php get_header(); ?>

    <div class="row">
        <div class="col-lg-6 col-md-6 contact-form">

            <h3><?php echo $post->post_title; ?></h3>
            <?php echo wpautop($post->post_content); ?>
            <?php echo do_shortcode('[contact-form-7 id="117" title="Contact Us"]'); ?>

        </div>
        <div class="col-lg-6 col-md-6 contact-map">

            <?php echo do_shortcode('[mappress mapid="1" width="100%" height="343px"]'); ?>
            <div class="contact-information">

                <?php $post_meta = get_post_meta($post->ID); ?>

                <?php if (isset($post_meta['Address'][0]) && $post_meta['Address'][0]) { ?>
                    <div class="contact-address">
                        <?php echo wpautop($post_meta['Address'][0]); ?>
                    </div>
                <?php } ?>

                <?php if (isset($post_meta['Phone'][0]) && $post_meta['Phone'][0]) { ?>
                    <div class="contact-phone">
                        <span><?php _e('Phone:') ?></span>
                        <?php echo $post_meta['Phone'][0]; ?>

                        <?php if (isset($post_meta['Time'][0]) && $post_meta['Time'][0]) { ?>
                            <span class="contact-time">
                            <?php echo $post_meta['Time'][0]; ?>
                            </span>
                        <?php } ?>

                    </div>
                <?php } ?>

                <?php if (isset($post_meta['Fax'][0]) && $post_meta['Fax'][0]) { ?>
                    <div class="contact-fax">
                        <span><?php _e('Fax:') ?></span>
                        <?php echo $post_meta['Fax'][0]; ?>
                    </div>
                <?php } ?>

                <?php if (isset($post_meta['Email'][0]) && $post_meta['Email'][0]) { ?>
                    <div class="contact-email">
                        <span><?php _e('Email:') ?></span>
                        <a href="mailto:<?php echo $post_meta['Email'][0]; ?>">
                            <?php echo $post_meta['Email'][0]; ?>
                        </a>
                    </div>
                <?php } ?>

            </div>

        </div>
    </div>

<?php get_footer() ?>