<?php get_header();?>

<div class="row">
    <div class="col-lg-3 col-md-3">
        <h2 class="glass-title"><?php echo $post->post_title; ?></h2>
        <p class="glass-content"><?php echo $post->post_content; ?></p>
    </div>

    <div class="col-lg-9 col-md-9">
        <?php echo do_shortcode('[nggallery id=2]');?>
    </div>
</div>

<?php get_footer()?>