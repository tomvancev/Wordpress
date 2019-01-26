<?php
/**
 * Register meta boxes.
 */
function hcf_register_meta_boxes() {
    add_meta_box( 'hcf-1', 'Enter KW data', 'hcf_display_callback', 'product' ,'side','high');
}
add_action( 'add_meta_boxes', 'hcf_register_meta_boxes' );

/**
 * Meta box display callback.
 *
 * @param WP_Post $post Current post object.
 */
function hcf_display_callback( $post ) {
    ?>
    <div class="hcf_box">
    <style scoped>
        .hcf_box{
            display: grid;
            grid-template-columns: max-content 1fr;
            grid-row-gap: 10px;
            grid-column-gap: 20px;
        }
        .hcf_field{
            display: contents;
        }
    </style>
    <p class="meta-options hcf_field">
        <label for="hcf_kw">kW</label>
        <input id="hcf_kw" type="text" name="hcf_kw"
value="<?php echo esc_attr( get_post_meta( get_the_ID(), 'hcf_kw', true ) ); ?>"
        >
    </p>
    <script type="text/javascript">
		function setInputFilter(textbox, inputFilter) {
		  ["input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop"].forEach(function(event) {
		    textbox.addEventListener(event, function() {
		      if (inputFilter(this.value)) {
		        this.oldValue = this.value;
		        this.oldSelectionStart = this.selectionStart;
		        this.oldSelectionEnd = this.selectionEnd;
		      } else if (this.hasOwnProperty("oldValue")) {
		        this.value = this.oldValue;
		        this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
		      }
		    });
		  });
		}
		setInputFilter(document.getElementById("hcf_kw"), function(value) {
		  return /^\d*\.?\d*$/.test(value);
		});
    </script>
</div>
<?php
}

function hcf_save_meta_box( $post_id ) {
    if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) return;
    if ( $parent_id = wp_is_post_revision( $post_id ) ) {
        $post_id = $parent_id;
    }
    $field = 'hcf_kw';

        if ( array_key_exists( $field, $_POST ) ) {
            update_post_meta( $post_id, $field, sanitize_text_field( $_POST[$field] ) );
        }
}
add_action( 'save_post', 'hcf_save_meta_box' );