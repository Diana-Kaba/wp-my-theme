<?php

// Setup

// Includes
include get_theme_file_path('includes/enqueue.php');

// Hooks
add_action('wp_enqueue_scripts', 'bootdi_enqueue');

// Shortcodes
