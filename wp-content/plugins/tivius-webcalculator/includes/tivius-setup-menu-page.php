<?php

function register_tivius_settings_menu_page(){

add_menu_page(
  'tivius-calculator',
  'Tivius Calculator',
   'manage_options',
   'tivius-webcalculator/includes/tivius-menu-page.php',
   '',
   'dashicons-welcome-widgets-menus',
   26
 );

}

add_action('admin_menu','register_tivius_settings_menu_page',11);


function tivius_settings_menu_page(){
?>
<div>ARE <b>asd<b></div>
<?php

}
