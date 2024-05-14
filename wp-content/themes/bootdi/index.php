<?php

wp_head(); // здесь автоматически будет подключен файл functions.php

$str = 'Diana Kaba';
echo $str = apply_filters('my_filter1', $str); // <strong>Diana Kaba'</strong>
echo "<br>";
echo apply_filters('my_filter2', $str); // Hello Diana Kaba!
echo "<br>";

do_action('my_action'); // Произошло событие "my_action"!
