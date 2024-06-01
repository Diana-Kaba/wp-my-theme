  <!-- Footer -->
  <footer class="py-5 bg-dark mt-4">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Bootdi 2024</p>
    </div>
    <!-- /.container -->
  </footer>

  <?php wp_footer();?>

  <!-- Ajax button -->
  <!-- <button id="bootdi_button">Надіслати</button> -->
      <script>
      jQuery(function($) {
          $('#bootdi_button').click(function() {
              $.ajax({
                  url: '<?php echo admin_url("admin-ajax.php") ?>',
                  type: 'POST',
                  data: 'action=bootdi&param1=2&param2=3', // передаємо дані – 2 та 3
                  beforeSend: function(xhr) {
                      $('#bootdi_button').text('Завантаження, 5 сек...');
                  },
                  success: function(data) {
                      $('#bootdi_button').text('Надіслати');
                      alert(data);
                  }
              });
          });
      });
    </script>

</body>

</html>