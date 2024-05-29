<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php the_title()?></title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <?php wp_head();?>
</head>
<body>
<?php get_header();?>

<!-- Page Content -->
<div class="container mt-4">
    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">
        <?php if (have_posts()) {
    while (have_posts()) {
        the_post();
        global $post;
        $author_ID = $post->post_author;
        $author_URL = get_author_posts_url($author_ID);
        ?>
            <!-- Title -->
            <h1 class="mt-4"><?php the_title()?></h1>

            <!-- Post category: -->
            <h2 class="mt-4"><?php the_category(" ")?></h2>

            <!-- Author -->
            <p class="lead">
                by
                <a href="<?php echo $author_URL; ?>"><?php the_author();?></a>
            </p>
            <hr>

            <!-- Date/Time -->
            <p><?php the_time(get_option('date_format'));
        echo " ";
        the_time(get_option('time_format'));?></p>
            <hr>
            <!-- Preview Image -->
            <?php
if (has_post_thumbnail()) {
            the_post_thumbnail("full", ["class" => "card-img-top"]);
        }
        ?>
            <hr>
            <!-- Post Content -->
            <?php the_content();
        // $defaults = array(
        //     'before' => '<div class="row justify-content-center align-items-center">' . __('Pages:'),
        //     'after' => '</div>',
        // );
        wp_link_pages();
        ?>

         <!-- Tag cloud -->
         <?php if(has_tag()) {
    the_tags("", ", ");
}?>
            <hr>
           <?php edit_post_link(); ?>

           <!-- Pagination -->
           <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <?php previous_post_link();?>
                </li>
                <li class="page-item">
                    <?php next_post_link();?>
                </li>
            </ul>

            <?php
        if (comments_open() || get_comments_number()) {
            comments_template();
        }
?>
                <!-- Post Author Info -->
                <div class="card mb-4">
                <div class="card-header mb-2">
                    <strong>
                        Posted by
                        <a href="<?php echo $author_URL; ?>"><?php the_author();?></a>
                    </strong>
                </div>
                <div class="card-body">
                    <div class="author-image">
                        <?php echo get_avatar($author_ID, 90, '', false, ['class' => 'rounded-circle']); ?>
                    </div>
                    <?php echo nl2br(get_the_author_meta('description')); ?>
                </div>
            </div>
        <!-- Post Single - Author End -->
            <?php
}
}?>
        </div>
        <?php get_sidebar();?>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>

<?php get_footer(); ?>
<?php wp_footer();?>

</body>
</html>

