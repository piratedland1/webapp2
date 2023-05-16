var rdp_hit_times = 0;
var rdp_duplicate_posts = [];
var rdp_process = 0;
var rdp_force_stop = 0;
var rdp_int_timer = '';
jQuery(document).ready(function($) {

    jQuery('#rdp-match-title').click(function() {
        rdp_update_text_query();
    });

    jQuery('#rdp-title-contains, #rdp-post-status, #rdp-post-types').change(function() {
        rdp_update_text_query();
    });

    jQuery('.search-duplicates').click(function() {        

        if( rdp_process == 0 ) {

            rdp_force_stop = 0;
            rdp_hit_times = 0;
            rdp_duplicate_posts = [];

            drp_search_duplicates(50);

            // setTimeout(function() {
            drp_rows_search(); 
            // }, 8000);
        } else if ( rdp_process == 1 ) {

            alert( 'Please wait until the process is complete.' );
        }

        rdp_disbale_search_button();  
    });

    jQuery('.rdp-delt-permanently, .rdp-move-trash').click(function() {

        var remove_type = jQuery(this).data('type');
        if( jQuery('#rdp-duplicate-ids').val() == '' || typeof jQuery('#rdp-duplicate-ids').val() == 'undefined' ) {
            alert( 'Please select a post to delete' );
        } else {

            if( remove_type == 'remove' ) {

                var remove_posts = confirm("Are you sure to remove the selected duplicate posts permanently?");
            } else {

                var remove_posts = confirm("If Trash is disabled, the post will permanently deleted. Are you sure to proceed");
            }

            if ( remove_posts == true ) {
                jQuery('.rdp-result').show();
                rdp_delete_posts( 0, remove_type );
            }
        }
    });

    var counter = 0;
    function rdp_delete_posts( index_num, remove_type ) {

        counter = index_num;

        // how many rows delete per query
        var per_request_delete = 5;

        // show loader
        rdp_show_loader();

        // Getting all the duplicate ids
        var rdp_duplicate_ids = jQuery('#rdp-duplicate-ids').val();

        // string ids to array
        rdp_duplicate_ids = rdp_duplicate_ids.split(',');

        // Initaite empty duplicate ids or no duplicate ids
        var dp_id = '';

        if( rdp_duplicate_ids.length > 0 ) { // If duplicate founds
            var range_to_delete = index_num + per_request_delete; // calculate how many data to be removed
            for( var i = index_num; i <= range_to_delete; i++  ) { // loop
                if( rdp_duplicate_ids[index_num] != '' ) {
                    if( typeof rdp_duplicate_ids[index_num] != 'undefined' ) { // if array has value
                        dp_id += rdp_duplicate_ids[index_num]+',';
                        index_num = i;
                    }
                }
            }
        }

        counter = index_num; // set counter to recall ajax with next query

        var data = {
            'action': 'rdp_ajax_process',
            'duplicate_ids_to_remove': dp_id,
            'remove_type': remove_type,
            'target': 'remove_duplicates_posts'
        };

        if( dp_id != '' ) { // If found duplicate ids

            jQuery.post(ajaxurl, data, function(response) {
                //counter++;
                rdp_hide_loader();

                // SetUp progress bar
                var percent = ( counter / rdp_duplicate_ids.length ) * 100;
                percent = percent.toFixed(0);

                if( percent <= 100 ) {
                    jQuery( '.rdp-loader .rows-search' ).html( 'Removing selected rows' );
                    jQuery('.rdp-progess').show();
                    jQuery('.rdp-progress-fill').text( percent + '%');
                    jQuery('.rdp-progress-fill').css( 'width',percent+'%' );
                }

                if( counter <= rdp_duplicate_ids.length )
                    rdp_delete_posts( counter, remove_type );

                if( counter == rdp_duplicate_ids.length ) {
                    setTimeout(function () {
                        jQuery('.rdp-result').hide();
                        jQuery('.rdp-message').html('<div class="rdp-success">All selected duplicate posts have been removed</div>');
                        jQuery('.rdp-success').fadeIn();
                        jQuery('.rdp-actions').hide();
                        jQuery('.rdp-loader').hide();
                        setTimeout(function () {
                            jQuery('.rdp-progess').fadeOut();
                        },3000);
                    },2000);
                }             
                
                rdp_duplicate_posts = [];
            });
        }
    }

    jQuery('.rdp-adv-setting').click(function () {
        jQuery('.rdp-adv-setting-content').toggle();
    });    

    jQuery(document).on('click','#rdp_rdp_force_stop',function() {
        rdp_force_stop = 1;
    });
});

function drp_rows_search() {

    jQuery( '.rdp-loader .rows-search' ).html( 'Calculating rows' );
    
    rdp_int_timer = setInterval(() => {
        jQuery( '.rdp-loader .rows-search' ).html( 'Searching in ' + rdp_hit_times + ' rows... <a href="javascript:void(0)" id="rdp_rdp_force_stop">stop</a>' );
    }, 5500);

}

function drp_search_duplicates( request_per_hit ) {
   
    rdp_hit_times = rdp_hit_times + 50;
    var selected_post_type = jQuery('.rdp-post-types').val();
    var title_contains = jQuery('#rdp-title-contains').val();
    var status = jQuery('#rdp-post-status').find(":selected").val();
    
    var match_title = '';
    if( jQuery('#rdp-match-title').is(':checked') ) {
        match_title = 'yes';
    } else {
        match_title = 'no';
    }

    rdp_show_loader();

    // jQuery('.rdp-result').show();
    jQuery('.rdp-success').html('');

    var data = {
        'action': 'rdp_ajax_process',
        'selected_post_type': selected_post_type,
        'title_contains': title_contains,
        'match_title': match_title,
        'status': status,
        'target': 'search_duplicates',
        'search_per_req': request_per_hit
    };

    jQuery.post(ajaxurl, data, function(response) {
        rdp_hide_loader();

        if( response != '0' && rdp_force_stop == 0 ) {            
            
            rdp_duplicate_posts = response;
            
            if( response.indexOf('rdp-duplicate-link') > 0 ){ // If duplicates found
                drp_search_duplicates(rdp_hit_times);                    
            } else {
                jQuery('.rdp-actions').hide();            
                drp_search_duplicates(rdp_hit_times);                    
            }

        } else if( response == '0' || rdp_force_stop == 1 ) {

            jQuery('.rdp-result').html( 'Loading...' );

            rdp_get_result();            
            rdp_enabale_search_button();
            clearInterval(rdp_int_timer);
        }
    });
}

function rdp_disbale_search_button() {
    
    rdp_process = 1;
    jQuery( '.search-duplicates' ).css({ 'opacity': '0.5'}) 
}

function rdp_enabale_search_button() {
    
    rdp_process = 0;
    jQuery( '.search-duplicates' ).css({ 'opacity': '1'}) 
}

function rdp_get_result() {
    
    var data = {
        'action': 'rdp_get_result',
        'duplicate_ids':  rdp_duplicate_posts
    };

    jQuery.post(ajaxurl, data, function(response) {

        jQuery('.rdp-actions').show();
        jQuery('.rdp-result').show();
        jQuery('.rdp-result').html( response );

        jQuery( '.rdp-multi-check' ).click(function() {
            get_all_selected_posts();                
        });

        jQuery('.rdp-select-all').click(function() {
            if (jQuery(this).is(':checked')) {
                jQuery('input.rdp-multi-check').prop('checked', true);
            } else {
                jQuery('input.rdp-multi-check').prop('checked', false);
            }

            get_all_selected_posts();
        });
    });
}

function rdp_update_text_query() {

    if( jQuery('#rdp-match-title').is(':checked') ) {
        jQuery('span#rdp-operator').text('=');
        jQuery('span#rdp-title').text('"title"');
    } else {
        jQuery('span#rdp-operator').text('LIKE');
        jQuery('span#rdp-title').text('"%title%"');
    }

    var title_contains = jQuery('#rdp-title-contains').val();
    if( title_contains != '' ) {
        jQuery('span#rdp-operator').text('LIKE');
        jQuery('span#rdp-title').text('"%'+title_contains+'%"');
    }

    var post_type = jQuery('#rdp-post-types').val();
    jQuery('span#rdp-post-type').text(post_type);

    var post_status = jQuery('#rdp-post-status').val();
    jQuery('span#rdp-post-status').text(post_status);
}

function isEmptyObject(obj) {
    var name;
    for (name in obj) {
      return false;
    }
    return true;
  }

function rdp_show_loader() {
    jQuery('.rdp-loader').show();
    jQuery('.rdp-result').css('opacity','0.5');
}

function rdp_hide_loader() {
    jQuery('.rdp-loader').hide();
    jQuery('.rdp-result').css('opacity','1');
}

function get_all_selected_posts() {

    jQuery('#rdp-duplicate-ids').val( '' );
    jQuery('.rdp-multi-check').each(function() {
        
        if (jQuery(this).is(':checked')) {
            var p_id = jQuery(this).val();
            var get_ids_to_remove = jQuery('#rdp-duplicate-ids').val();
            jQuery('#rdp-duplicate-ids').val( get_ids_to_remove + ',' + p_id );

        } else {
            var p_id = jQuery(this).val();
            var get_ids_to_remove = jQuery('#rdp-duplicate-ids').val();
            var get_ids_to_remove = get_ids_to_remove.replace(p_id,'');
            jQuery('#rdp-duplicate-ids').val( get_ids_to_remove );
        }

        var get_ids_to_remove = jQuery('#rdp-duplicate-ids').val();                
        get_ids_to_remove = get_ids_to_remove.replace(',,',',');
        get_ids_to_remove = get_ids_to_remove.replace(/^,|,$/g, '');
        jQuery('#rdp-duplicate-ids').val( get_ids_to_remove );
    });
}