<?php include(TEMPLATEPATH . '/header-home.php'); ?>

    <div class="row">

        <div class="col-lg-4 col-md-4">
            <div class="left-col home-col">
                <?php $why_post_id = 44;
                $why_post = get_post($why_post_id);?>
                <?php if (is_object($why_post)) { ?>

                    <h3>
                        <?php echo $why_post->post_title; ?>
                    </h3>

                    <?php $img_url = wp_get_attachment_url( get_post_thumbnail_id($why_post->ID) );?>
                    <img src="<?php echo $img_url;?>" width="100%" alt="<?php $why_post->post_title; ?>"/>

                <?php } ?>
                <p><?php echo $why_post->post_content; ?></p>
            </div>
        </div>

        <div class="col-lg-4 col-md-4">
            <div class="center-col home-col">
                <h3><?php _e('What`s new'); ?></h3>

                <?php $args = array(
                    'numberposts' => 3,
                    'category' => 4,
                    'orderby' => 'post_date',
                    'order' => 'DESC'
                );
                $news_posts = get_posts($args);
                if (!empty($news_posts)) {
                    foreach ($news_posts as $post) {
                        setup_postdata($post);?>

                        <span class="date">
                        <?php the_time('M d Y'); ?>
                    </span>
                        <?php the_excerpt(); ?>

                    <?php } ?>
                    <div class="home-col-btn">
                        <a href="#"><?php _e('More news') ?></a>
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="col-lg-4 col-md-4">
            <div class="right-col home-col">
                <?php $ssg_post_id = 53;
                $ssg_post = get_post($ssg_post_id);?>
                <?php if (is_object($ssg_post)) { ?>

                    <h3>
                        <?php echo $ssg_post->post_title; ?>
                    </h3>

                    <?php $img_url = wp_get_attachment_url( get_post_thumbnail_id($ssg_post->ID) );?>
                    <img src="<?php echo $img_url;?>" width="100%" alt="<?php $ssg_post->post_title; ?>"/>

                <?php } ?>
                <p><?php echo $ssg_post->post_content; ?></p>

                <div class="home-col-btn">
                    <a href="#"><?php _e('Visit ssg notion') ?></a>
                </div>
            </div>
        </div>

    </div>

<?php get_footer(); ?>