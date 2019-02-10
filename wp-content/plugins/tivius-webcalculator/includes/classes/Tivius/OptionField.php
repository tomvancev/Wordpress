<?php
class Tivius_OptionField{

  public $data_field_name;
  public $data_field_text;
  public $opt_val;
  public $js_name;

  function __construct( $data_field_name, $data_field_text, $js_name ) {
    $this->data_field_text = $data_field_text;
    $this->data_field_name = $data_field_name;
    $this->js_name = $js_name;

    // Read their posted value or get it from database
    $this->opt_val = get_option( $data_field_name );

  }

  public function saveData(){
    // Save the posted value in the database
    // error_log(print_r($this->data_field_name . " -> " . $_POST[$this->data_field_name] ,true));
    $this->opt_val = $_POST[$this->data_field_name];
    update_option( $this->data_field_name, $this->opt_val);

  }

  public function printItem($hr=false){
    ?>
    <p>
      <?php echo $this->data_field_text; ?>
    </p>

    <input type="text" name="<?php echo $this->data_field_name; ?>" value="<?php echo $this->opt_val; ?>" size="20">
    <?php if ($hr == true): ?>
    <hr />
    <?php
          endif;
  }

} // end of class
