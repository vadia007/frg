</div><!-- .site-content -->
</div><!-- .wrapper -->

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="footer-left-col">
                    <div class="img">
                        <img src="<?php echo get_template_directory_uri() . '/img/frg-footer.png'; ?>" alt=""/>
                    </div>
                    <div class="text">

                        <?php $post_meta = get_post_meta(114); ?>

                        <span class="logo-text">
                        <?php echo isset($post_meta['Address'][0]) && $post_meta['Address'][0] ?
                            $post_meta['Address'][0] : __('380 Osborne Street Sothh, Winnipeg, MB R3L 1Z8'); ?>
                        </span>

                        <span class="logo-phone"><i class="fa fa-phone"></i>
                            <?php echo isset($post_meta['Phone'][0]) && $post_meta['Phone'][0] ?
                                $post_meta['Phone'][0] : '204-475-2774'; ?>
                        </span>

                        <?php if (isset($post_meta['Email'][0]) && $post_meta['Email'][0]) { ?>

                            <a class="logo-mail" href="mailto:<?php echo $post_meta['Email'][0]; ?>">
                                <?php echo $post_meta['Email'][0]; ?>
                            </a>

                        <?php } else { ?>

                            <a class="logo-mail" href="mailto:info@frg.ca">info@frg.ca</a>

                        <?php } ?>

                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="footer-right-col">
                    <div class="img">
                        <a href="#">
                            <img src="<?php echo get_template_directory_uri() . '/img/ssg-footer.png'; ?>" alt=""/>
                        </a>
                    </div>
                    <div class="text">
                        <span><?php _e('Click the Logo to View'); ?></span>
                        <span><?php _e('Stainless Steel Railing Division'); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer><!-- .site-footer -->

<span class="copyright">
        <?php _e('© 2014 Fort Rouge Glass LTD.'); ?>
    </span>

<?php wp_footer(); ?>

</body>
</html>
