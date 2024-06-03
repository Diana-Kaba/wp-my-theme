<?php
function kc_show_carousel($content)
{
    $args = [
        'showposts' => get_option('kc_count'),
        'category_name' => get_option('kc_category_name')? get_option('kc_category_name') : 'news',
        'post_type' => get_option('kc_post_type') ? get_option('kc_post_type') : 'post',
        'tag' => get_option('kc_tag'),
        'post_status' => 'publish',
        'orderby' => 'date',
        'order' => 'DESC',
    ];


    $query = new WP_Query($args);

    $html = '';
    if ($query->have_posts()) {
        $html = '<section id="demos">
        <div class="row">
            <div class="large-12 columns">
                <div class="owl-carousel owl-theme">';
            while ($query->have_posts()) {
                $query->the_post();
                $html .= '<div class="item" style="background: lightblue url(' . get_the_post_thumbnail_url($query->post->ID, 'thumbnail') . ') no-repeat; background-size:cover;"><h5>';
                $html .= '<a href="' . get_permalink($query->post->ID) . '" class="text-light" style="text-decoration: none;">' . $query->post->post_title . '</a>';
                $html .= '</h5></div>';
            }
            $html .= ' </div>
        </div>
    </div>
    </section>';
    }

    wp_reset_postdata();

    return $content . $html;
}
