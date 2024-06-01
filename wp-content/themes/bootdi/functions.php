<?php

// Setup
define('BOOTSTRAPTOPIC_DEV_MODE', true);

// Includes
include get_theme_file_path('./includes/enqueue.php');
include get_theme_file_path('./includes/setup.php');
include get_theme_file_path('./includes/custom-nav-walker.php');
include get_theme_file_path('./includes/widgets.php');

// Hooks
add_action('wp_enqueue_scripts', 'bootdi_enqueue');
add_action( 'after_setup_theme', 'bootdi_setup_theme');
add_action('widgets_init', 'bootdi_widgets');

// add_filter('next_posts_link_attributes', 'posts_link_attributes');
// add_filter('previous_posts_link_attributes', 'posts_link_attributes');

// function posts_link_attributes() {
//     return 'class="page-link"';
// }

// Shortcodes

// [foobar]
function foobar_func( $atts ){
    return "<h4>foo and bar</h4>";
}
add_shortcode('foobar', 'foobar_func');

// [bartag foo="foo-value"]
function bartag_func($atts) {
    extract( shortcode_atts( array(
        'foo' => 'значення за замовчуванням 1',
        'bar' => 'значення за замовчуванням 2',
    ), $atts));
    return "<h5 style='text-align: center;'>{$foo}</h5>";
}
add_shortcode( 'bartag', 'bartag_func');
