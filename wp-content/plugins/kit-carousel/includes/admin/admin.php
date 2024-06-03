<?php
// create custom plugin settings menu
function kc_create_menu()
{
    //create new top-level menu
    add_menu_page('Kit Carousel Plugin Settings', 'Kit Carousel', 'administrator', __FILE__, 'kc_settings_page', plugins_url('/images/icon.png', __FILE__));
    //call register settings function
    add_action('admin_init', 'register_kc_settings');
}
function register_kc_settings()
{
    //register our settings
    register_setting('kc-settings-group', 'kc_post_type');
    register_setting('kc-settings-group', 'kc_category_name');
    register_setting('kc-settings-group', 'kc_tag');
    register_setting('kc-settings-group', 'kc_count');
}
function kc_settings_page()
{
?>

<div class="wrap">
<h2>Kit Carousel Settings</h2>
<form method="post" action="options.php">
    <?php settings_fields('kc-settings-group');?>
    <table class="form-table">
        <tr valign="top">
        <th scope="row">Post Type</th>
        <td><input type="text" name="new_option_name" value="<?php echo get_option('new_option_name'); ?>" /></td>
        </tr>
        <tr valign="top">
        <th scope="row">Category Name</th>
        <td><input type="text" name="some_other_option" value="<?php echo get_option('some_other_option'); ?>" /></td>
        </tr>
        <tr valign="top">
        <th scope="row">Tags</th>
        <td><input type="text" name="option_etc" value="<?php echo get_option('option_etc'); ?>" /></td>
        </tr>
        <tr valign="top">
                <th scope="row">Count</th>
                <td><input type="number" name="kc_count" value="<?php echo get_option('kc_count'); ?>" min="1"
                        max="12" /></td>
            </tr>
    </table>
    <p class="submit">
    <input type="submit" class="button-primary" value="<?php _e('Save Changes')?>" />
    </p>
</form>
</div>
<?php
}
?>
