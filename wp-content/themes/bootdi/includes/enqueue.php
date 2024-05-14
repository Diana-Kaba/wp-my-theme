<?php

function bootdi_enqueue()
{
    $url = get_theme_file_uri();
    wp_register_style('bootdi_google_fonts', 'https://fonts.googleapis.com/css?family=Open+Sans&display=swap'); // Google fonts
    wp_register_style('bootdi_bootstrap', $url . '/assets/vendor/bootstrap/css/bootstrap.min.css'); // bootstrap.min.css
    wp_register_style('bootdi_modern_business', $url . '/assets/css/modern-business.css'); // modern-business.css

    wp_enqueue_style('bootdi_google_fonts');
    wp_enqueue_style('bootdi_bootstrap');
    wp_enqueue_style('bootdi_modern_business');

    wp_register_script('bootdi_bootstrap', $url .
        '/assets/vendor/bootstrap/js/bootstrap.bundle.min.js', [], false, true);

    wp_enqueue_script('jquery');
    wp_enqueue_script('bootdi_bootstrap');
}
