<?php
function bootdi_widgets()
{
    // register_sidebar(["name" => __("Bootdi First Sidebar", "bootdi"), "id" => "bootdi_sidebar", "description" => __("Bootdi first Sidebar for something.")]);
    register_sidebar([
        'name' => __('Bootdi First Sidebar', 'bootdi'),
        'id' => 'bootdi_sidebar',
        'description' => __('Bootdi first Sidebar for something.'),
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ]);
}
