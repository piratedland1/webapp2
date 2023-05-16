<?php
/**
 * Result Count
 *
 * Shows text: Showing x - x of x results.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/result-count.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     3.7.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

global $wp_query;

if ( ! woocommerce_products_will_display() )
	return;
?>
<p class="woocommerce-result-count">
	<?php
		if( 1 === $total ) :
			_e( 'Showing the single result', 'jevelin' );
		elseif ( $total <= $per_page || -1 === $per_page ) :
			/* translators: %d: total results */
			printf( _n( 'Showing all <strong>%d</strong> result', 'Showing all <strong>%d</strong> results', $total, 'jevelin' ), $total );
		else :
			$first = ( $per_page * $current ) - $per_page + 1;
			$last  = min( $total, $per_page * $current );
			/* translators: 1: first result 2: last result 3: total results */
			printf( _nx( 'Showing the single result', 'Showing <strong>%1$d&ndash;%2$d</strong> of <strong>%3$d</strong> results', $total, 'with first and last result', 'jevelin' ), $first, $last, $total );
		endif;
	?>
</p>
