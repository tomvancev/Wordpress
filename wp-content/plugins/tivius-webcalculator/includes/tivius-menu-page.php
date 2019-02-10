<?php
global $validationFields;
  if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
  }

  $hidden_field_name = 'mt_submit_hidden';

     if( isset($_POST[ $hidden_field_name ]) && $_POST[ $hidden_field_name ] == 'Y' ) :
        foreach ($validationFields as $field) {
          $field->saveData();
        }

         // Put a "settings saved" message on the screen
   ?>
   <div class="updated"><p><strong><?php _e('settings saved.', 'tivius' ); ?></strong></p><hr /></div>
   <?php

  endif;

     // Now display the settings editing screen
     echo '<div class="wrap">';
     // header
     echo "<h2>" . __( 'Tivius Calculator Settings', 'tivius' ) . "</h2>";


     // settings form
     ?>
   <form name="form1" method="post" action="">
     <input type="hidden" name="<?php echo $hidden_field_name; ?>" value="Y">

      <?php foreach ($validationFields as $field) { // fields
        $field->printItem(true);
      } ?>

     <p class="submit">
     <input type="submit" name="Submit" class="button-primary" value="<?php esc_attr_e('Save Changes') ?>" />
     </p>

   </form>
   </div>

 <?php
