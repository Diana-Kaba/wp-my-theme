<?php $unique_id = esc_attr(uniqid('search-form-'));?>
<!-- Search Widget -->
<div class="card mb-4">
    <h5 class="card-header"><?php _e('Search');?></h5>
    <div class="card-body">
        <form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
            <div class="input-group">
                <input type="search" id="<?php echo $unique_id; ?>" name="s" value="<?php echo get_search_query() ?>"
                    class="form-control" placeholder="<?php _e('Search for...');?>">
                <span class="input-group-append">
                    <button class="btn btn-secondary" type="submit"><?php _e('OK');?></button>
                </span>
            </div>
        </form>
    </div>
</div>
