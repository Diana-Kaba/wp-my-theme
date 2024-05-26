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

  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.html">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="services.html">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Portfolio
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
            </div>
          </li>
          <li class="nav-item active dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Blog
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item active" href="blog-home-1.html">Blog Home 1</a>
              <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
              <a class="dropdown-item" href="blog-post.html">Blog Post</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPages" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Other Pages
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPages">
              <a class="dropdown-item" href="full-width.html">Full Width Page</a>
              <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
              <a class="dropdown-item" href="faq.html">FAQ</a>
              <a class="dropdown-item" href="404.html">404</a>
              <a class="dropdown-item" href="pricing.html">Pricing Table</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <!-- <h1 class="mt-4 mb-3">Blog Home One
      <small>Subheading</small>
    </h1> -->

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Blog Home 1</li>
    </ol>

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
        the_time(get_option('time_format'));
        ?>
        </p>
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
        wp_link_pages();
        // $defaults = array(
        //     'before' => '<div class="row justify-content-center align-items-center">' . __('Pages:'),
        //     'after' => '</div>',
        // );
        // wp_link_pages($defaults);
        ?>
        <hr>
        <!-- Tag cloud -->
        <?php if (has_tag()) {
            the_tags("", ", ");
            echo "<hr>";
        }
        ?>
        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <?php previous_post_link();?>
                </li>
                <li class="page-item">
                    <?php next_post_link();?>
                </li>
            </ul>

        <?php edit_post_link();?>

        <!-- Comments Form -->
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

        <h4>Related Posts
                <?php the_category()?>
            </h4>
            <div class="related-posts clearfix">
                <?php
$categories = get_the_category();
        $rp_query = new WP_Query([
            'posts_per_page' => 2,
            'post__not_in' => [$post->ID],
            'cat' => !empty($categories) ? $categories[0]->term_id : null,
        ]);
        if ($rp_query->have_posts()) {
            while ($rp_query->have_posts()) {
                $rp_query->the_post();
                ?>
                <div class="mpost clearfix">
                    <h5><?php the_category();?></h5>
                    <?php
if (has_post_thumbnail()) {
                    ?>
                    <div class="entry-image">
                        <a href="<?php the_permalink();?>">
                            <?php the_post_thumbnail('thumbnail');?>
                        </a>
                    </div>
                    <?php
}
                ?>
                    <div class="entry-c">
                        <div class="entry-title">
                            <h4>
                                <a href="<?php the_permalink();?>">
                                    <?php the_title();?>
                                </a>
                            </h4>
                        </div>
                        <ul class="entry-meta clearfix">
                            <li><i class="icon-calendar3"></i> <?php echo get_the_date(); ?></li>
                            <li><i class="icon-comments"></i> <?php comments_number('0');?></li>
                        </ul>
                        <div class="entry-content">
                            <?php the_excerpt();?>
                        </div>
                    </div>
                </div>
                <?php
}
            wp_reset_postdata();
            $query = new WP_Query(['category_name' => 'news']);
            while ($query->have_posts()) {
                $query->the_post();?>
            <!-- <ul> -->
            <li> <a href="<?php the_permalink();?>">
                    <?php the_title();?>
                </a></li>
            <!-- </ul> -->
            <?php
}
        }
        ?>
            </div>

      </div>
      <?php
}
}
?>
      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">
        <?php get_sidebar();?>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

<?php get_footer();?>
