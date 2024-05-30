<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creative - Start Bootstrap Theme</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

    <?php wp_head();?>
</head>
<body>
<?php get_header();?>
<!-- Page Content -->
<div class="container">
    <div class="row">
        <!-- Post Content Column -->
        <div class="col-lg-12">
            <?php
while (have_posts()) {
    the_post();
    ?>
            <!-- Title -->
            <h1 class="mt-4 mb-3"><?php the_title()?></h1>
            <hr>
            <!-- Preview Image -->
            <?php
if (has_post_thumbnail()) {
        the_post_thumbnail("full", ["class" => "img-fluid rounded"]);
    }
    ?>
            <!-- Page Content -->
            <?php the_content();
    ?>
            <hr>
            <!-- Post Author Info -->
            <?php
edit_post_link();
    ?>
            <!-- Tag cloud -->
            <?php the_tags('', ', ');?>
            <hr>
            <!-- Pagination -->
            <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <?php previous_post_link();?>
                </li>
                <li class="page-item">
                    <?php next_post_link();?>
                </li>
            </ul>
            <!-- Comments -->
            <?php
if (comments_open() || get_comments_number()) {
        comments_template();
    }
    ?>
            <?php
}
?>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>

    <?php get_footer();?>
    <?php wp_footer();?>

</body>
</html>
