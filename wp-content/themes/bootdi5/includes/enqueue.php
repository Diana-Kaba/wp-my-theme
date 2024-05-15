<?php

function bootdi_enqueue()
{
    $url = get_theme_file_uri();
    $ver = BOOTSTRAPTOPIC_DEV_MODE ? time() : false;
    wp_register_style('bootstraptopic_icons', 'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css', [], $ver); // Bootstrap Icons
    wp_register_style('bootstraptopic_google_fonts1', 'https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700', [], $ver); // Google fonts 1
    wp_register_style('bootstraptopic_google_fonts2', 'https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic', [], $ver); // Google fonts 2
    wp_register_style('bootstraptopic_plugin', 'https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css', [], $ver); // SimpleLightbox plugin CSS
    wp_register_style('bootstraptopic_bootstrap', $url . '/css/styles.css', [], $ver); // Core theme CSS (includes Bootstrap)
    wp_register_style('bootstraptopic_js', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js', [], $ver); // Bootstrap core JS
    wp_register_style('bootstraptopic_plugin_js', 'https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js', [], $ver); // SimpleLightbox plugin JS
    wp_register_style('bootstraptopic_bootstrap_js', $url . '/js/scripts.js', [], $ver); // Core theme JS
    wp_register_style('bootstraptopic_form', 'https://cdn.startbootstrap.com/sb-forms-latest.js', [], $ver); // SB Forms JS

    wp_enqueue_style('bootstraptopic_icons');
    wp_enqueue_style('bootstraptopic_bootstrap1');
    wp_enqueue_style('bootstraptopic_bootstrap2');
    wp_enqueue_style('bootstraptopic_plugin');
    wp_enqueue_style('bootstraptopic_bootstrap');
    wp_enqueue_script('jquery');
    wp_enqueue_style('bootstraptopic_js');
    wp_enqueue_style('bootstraptopic_plugin_js');
    wp_enqueue_style('bootstraptopic_bootstrap_js');
    wp_enqueue_style('bootstraptopic_form');
}
