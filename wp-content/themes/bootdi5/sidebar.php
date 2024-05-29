<!-- Sidebar Widgets Column -->
<div class="col-md-4">
          <?php
          get_search_form();
            if (is_active_sidebar('bootdi_sidebar')) {
                dynamic_sidebar('bootdi_sidebar');
            }
          ?>
</div>