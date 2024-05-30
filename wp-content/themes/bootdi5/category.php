<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Category</title>
     <!-- Favicon-->
     <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<?php wp_head();?>
</head>
<body>
<?php get_header();?>

    <!-- Page Content -->
<div class="container mt-4">
<?php breadcrumbs(); ?>

<!-- Marketing Icons Section -->

<div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8">
        <?php if (have_posts()) {
while (have_posts()) {
    the_post();
    get_template_part('partials/posts/content', 'excerpt');
}
} else {
get_template_part('partials/posts/content', 'none');
}
?>

        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
                <?php previous_posts_link("← Older");?>
            </li>
            <li class="page-item">
                <?php next_posts_link("Newer →");?>
            </li>
        </ul>
    </div>
    <?php get_sidebar();?>
    <!-- /.row -->

</div>
<!-- /.container -->

</div>

<?php get_footer();?>
<?php wp_footer();?>

</body>
</html>
