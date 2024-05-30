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

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="entry-title"><?php _e('Nothing found');?>
    </h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.php">Home</a>
        </li>
        <li class="breadcrumb-item active">Content None</li>
    </ol>

    <div class="jumbotron">
        <p>
            <?php _e("Nothing found, please use the search.")?>
        </p>
    </div>
    <!-- /.jumbotron -->


    <div class="row">
        <div class="col-lg-8">
        <h2>Pages</h2>
        <ul>
            <?php wp_list_pages('title_li=');?>
        </ul>
        <h2>Posts</h2>
        <?php
        $cats = get_categories();
        foreach ($cats as $cat) {
            query_posts('posts_per_page=-1&cat=' . $cat->cat_ID);
        ?>
        <h3><?php echo $cat->cat_name; ?></h3>
        <ul>
            <?php while (have_posts()) {the_post(); ?>
            <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
            <?php 
            }
            wp_reset_query();
            ?>
            </ul>
        <?php } ?>
        </div>
    </div>
    
    <?php get_search_form(); ?>
</div>
<!-- /.container -->

    <?php get_footer();?>
    <?php wp_footer();?>

</body>
</html>
