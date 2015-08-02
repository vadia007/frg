<?php get_header(); ?>

    <div class="row">
        <div class="col-lg-8 col-md-8">
            <h2 class="glass-title"><?php echo $post->post_title; ?></h2>

            <p class="glass-content"><?php echo do_shortcode(wpautop($post->post_content)); ?></p>
        </div>

        <div class="col-lg-4 col-md-4 about-sidebar-wrap">
            <div class="row about-sidebar">
                <div class="col-lg-12 col-md-12 col-sm-4 view-gallery-block">

                    <?php $img_url = wp_get_attachment_url( get_post_thumbnail_id(105) );?>
                    <img src="<?php echo $img_url;?>" width="100%" alt="<?php _e('View gallery'); ?>"/>
                    <a href="#"><?php _e('View gallery'); ?></a>

                </div>
                <div class="col-lg-12 col-md-12 col-sm-4 about-request-block">

                    <?php $img_url = wp_get_attachment_url( get_post_thumbnail_id(108) );?>
                    <img src="<?php echo $img_url;?>" width="100%" alt="<?php _e('Request a quote'); ?>"/>
                    <a href="#"><?php _e('Request a quote'); ?></a>

                </div>
                <div class="col-lg-12 col-md-12 col-sm-4 ask-question-block">

                    <?php $img_url = wp_get_attachment_url( get_post_thumbnail_id(111) );?>
                    <img src="<?php echo $img_url;?>" width="100%" alt="<?php _e('Request a quote'); ?>"/>
                    <a href="#"><?php _e('Ask a question'); ?></a>

                </div>
            </div>
        </div>
    </div>

<?php get_footer() ?>