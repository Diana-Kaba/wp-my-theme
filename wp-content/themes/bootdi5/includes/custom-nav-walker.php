<?php
class Bootdi_Nav_Walker extends Walker_Nav_Menu
{
    public function start_lvl(&$output, $depth = 0, $args = array())
    {
        $output .= '<ul class="dropdown-menu" aria-labelledby="navbarDropdown">';
    }

    public function start_el(&$output, $item, $depth = 0, $args = array(), $id = 0)
    {
        $classes = empty($item->classes) ? array() : (array) $item->classes;
        $class_names = join(' ', apply_filters('nav_menu_css_class', array_filter($classes), $item, $args));
        $class_names = ' class="' . esc_attr($class_names) . '"';

        $output .= '<li' . $class_names .'>';

        $attributes  = ! empty( $item->attr_title ) ? ' title="'  . esc_attr( $item->attr_title ) .'"' : '';
        $attributes .= ! empty( $item->target )     ? ' target="' . esc_attr( $item->target     ) .'"' : '';
        $attributes .= ! empty( $item->xfn )        ? ' rel="'    . esc_attr( $item->xfn        ) .'"' : '';
        $attributes .= ! empty( $item->url )        ? ' href="'   . esc_attr( $item->url        ) .'"' : '';

        $item_output = $args->before;
        if ($item->is_dropdown && $depth === 0) {
            $attributes .= ' class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"';
        } elseif ($depth === 0) {
            $attributes .= ' class="nav-link"';
        } elseif ($depth === 1) {
            $attributes .= ' class="dropdown-item"';
        }

        $item_output .= '<a'. $attributes .'>';
        $item_output .= $args->link_before . apply_filters('the_title', $item->title, $item->ID) . $args->link_after;
        $item_output .= '</a>';
        $item_output .= $args->after;

        $output .= apply_filters('walker_nav_menu_start_el', $item_output, $item, $depth, $args);
    }

    public function display_element($element, &$children_elements, $max_depth, $depth = 0, $args, &$output)
    {
        if ($element->current) {
            $element->classes[] = 'active';
        }

        $element->is_dropdown = !empty($children_elements[$element->ID]);
        if ($element->is_dropdown) {
            if ($depth === 0) {
                $element->classes[] = 'nav-item dropdown';
            } elseif ($depth === 1) {
                $element->classes[] = 'dropdown-submenu';
            }
        } else {
            if ($depth === 0) {
                $element->classes[] = 'nav-item';
            }
        }

        parent::display_element($element, $children_elements, $max_depth, $depth, $args, $output);
    }

    public function end_el(&$output, $item, $depth = 0, $args = array())
    {
        $output .= '</li>';
    }

    public function end_lvl(&$output, $depth = 0, $args = array())
    {
        $output .= '</ul>';
    }
}
?>
