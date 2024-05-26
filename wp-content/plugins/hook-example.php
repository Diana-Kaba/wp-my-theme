<?php
/**
 * Plugin Name: Hooks example
 */

 function hooked_title($title)
 {
     return '&#9829; ' . $title;
 }

 function added_footer()
{
    echo 'Added to footer by hook-example plugin ';
}

add_filter('the_title', 'hooked_title');
// add_action('wp_footer', 'added_footer');
