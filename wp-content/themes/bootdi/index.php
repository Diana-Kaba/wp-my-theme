<?php
get_header();?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>
  <?php get_header(); ?>

  <!-- Page Content -->
  <div class="container mt-4 mb-3">

    <!-- <?php breadcrumbs(); ?> -->
    <?php echo do_shortcode('[breadcrumbs]'); ?>

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

      <?php if (have_posts()) {
        while (have_posts()) {
            the_post();
            get_template_part('partials/posts/content', 'excerpt');
        }
      }
      ?>

        <!-- Pagination -->
        <!-- <ul class="pagination justify-content-center mb-4">
          <li class="page-item">
          <?php previous_posts_link("&larr; Older");?>
            <a class="page-link" href="#">&larr; Older</a>
          </li>
          <li class="page-item disabled">
          <?php next_posts_link("Newer &rarr;");?>
            <a class="page-link" href="#">Newer &rarr;</a>
          </li>
        </ul> -->

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">
        <?php get_sidebar();?>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

<?php get_footer();?>
