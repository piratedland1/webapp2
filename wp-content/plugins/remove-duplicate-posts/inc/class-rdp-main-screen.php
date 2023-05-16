<?php

// If this file is called directly, abort.
if ( ! defined( 'ABSPATH' ) ) exit;

Class RDP_Main_Screen {

    function __construct() {
        add_action( 'admin_menu', array($this,'rdp_add_admin_menu') );
        add_action( 'wp_ajax_rdp_ajax_process', array($this,'rdp_ajax_process') );
        add_action( 'wp_ajax_rdp_get_result', array($this,'rdp_get_result') );
        add_filter( "plugin_action_links_".RDP_PLUGIN_BASENAME, array($this,'rdp_settling_link') );
    }

    /**
     * Main Screen To Select Which Duplicate Post Check
     * @since 1.0.0
     */
    function rdp_add_admin_menu(){
        add_submenu_page(
            'tools.php',
            __( 'Remove Duplicate Posts', 'rdp_textdomain' ),
            'Remove Duplicate Posts',
            'manage_options',
            'remove-duplicate-posts',
            array($this,'rdp_main_screen_content')
        );
    }

    function rdp_settling_link( $links ) {
        $settings_link = '<a href="tools.php?page=remove-duplicate-posts">' . __( 'Settings' ) . '</a>';
        array_push( $links, $settings_link );
        return $links;
    }

    /**
     * Main Screen Content
     * @since 1.0.0
     * @version 1.3
     */
    function rdp_main_screen_content(){
        $html = '<div class="rdp-main-screen-wrapper">
                <div class="rdp-main-screen-content">
                    <div class="rdp-title">'. __('Select Post Type','rdp_domain') .'</div>
                    <div class="rdp-select-post">
                        <select class="rdp-post-types" id="rdp-post-types">';

        foreach( $this->rdp_get_all_posts() as $post_type ) {            
            $html .= '<option value="'.$post_type.'">'.$post_type.'</option>';
        }

        $html .= '</select>
                        <input type="button" class="rdp-btn search-duplicates" value="'. __('Search Duplicates','rdp_domain') .'">
                        
                        <div class="rdp-adv-setting">Advanced Settings</div>
                        <div class="rdp-adv-setting-content">
                            <div class="rdp-adv-opt">
                            <div class="rdp-adv-field">
                            <div class="tooltip"><span class="dashicons dashicons-editor-help"></span>
                                <span class="tooltiptext">Remove posts that have the same post titles</span>
                            </div>    
                            <label for="rdp-match-title" class="rdp-match-title rdp-lbl">'.__('Match exact title','rdp_domain').'</label>
                                <input type="checkbox" class="rdp-match-title" id="rdp-match-title">
                            </div>

                            <div class="rdp-adv-field">
                            <div class="tooltip"><span class="dashicons dashicons-editor-help"></span>
                                <span class="tooltiptext">Remove posts that have a specific word in the title</span>
                            </div> 
                                <label for="rdp-title-contains" class="rdp-title-contains rdp-lbl">'.__('Title Contains','rdp_domain').'</label>
                                <input type="text" class="rdp-title-contains" id="rdp-title-contains">
                            </div>

                            <div class="rdp-adv-field">
                            <div class="tooltip"><span class="dashicons dashicons-editor-help"></span>
                                <span class="tooltiptext">Remove duplicate posts that have particular post status</span>
                            </div> 
                                <label for="rdp-post-status" class="rdp-post-status rdp-lbl">'.__('Post Status','rdp_domain').'</label>
                                <select class="rdp-post-status" id="rdp-post-status">
                                    <option value="publish">Publish</option>
                                    <option value="draft">Draft</option>
                                    <option value="pending">Pending</option>
                                    <option value="trash">Trash</option>
                                </select>
                            </div>    
                            </div>
                        </div>
                        <div class="rdp-query">SELECT ID
                        FROM <span id="rdp-tbl">`wp_posts`</span>
                        WHERE `post_title` <span id="rdp-operator">LIKE</span> <span id="rdp-title">"%title%"</span>
                        AND `post_type` = "<span id="rdp-post-type">post</span>" AND `post_status` = "<span id="rdp-post-status">publish</span>"
                        ORDER BY <span id="rdp-date">`post_date`</span> ASC</div>
                    </div>                    
                    
                    <div class="rdp-progess">
                        <div class="rdp-progress-bar">
                            <div class="rdp-progress-fill"></div>
                        </div>
                    </div>
                    
                    <div class="rdp-result"></div>
                    
                    <div class="rdp-loader"><img src="'. RDP_PLUGIN_URL .'assets/img/loader.gif" width="40"/> <div class="rows-search">Calculating rows... <span></span></div> </div>
                    
                    <div class="rdp-message"></div>
                    
                    <div class="rdp-actions">
                        <!-- <div class="rdp-delt-permanently rdp-btn"><span class="dashicons dashicons-trash"></span> </div> -->
                        <div class="rdp-move-trash rdp-btn" data-type="trash"><span class="dashicons dashicons-trash"></span> '. __('MOVE TO TRASH','rdp_domain') .'</div>
                        <div class="rdp-delt-permanently rdp-btn" data-type="remove"><span class="dashicons dashicons-trash"></span> '. __('DELETE PERMANENTLY','rdp_domain') .'</div>
                        <div class="rdp-notice">'. __('Note: Please take backup before proceeding','rdp_domain') .'</div>
                    </div>
                </div>
            </div>';

        echo $html;
    }    

    /**
     * Ajax Call Back Function
     * Performing Ajax Queries
     * @since 1.0.0
     * @version 1.3.1
     */
    function rdp_ajax_process() {
        global $wpdb;

        if( $_POST['target'] == 'remove_duplicates_posts' ) {
            $dp_ids = $_POST['duplicate_ids_to_remove'];
            $dp_remove_type = $_POST['remove_type'];
            $duplicate_ids = explode(',',$dp_ids);
            foreach( $duplicate_ids as $dp_id ) {
                if( !empty($dp_id) ) {

                    if( $dp_remove_type == 'trash' ) {
                        wp_delete_post( $dp_id, false );
                    } else {
                        wp_delete_post( $dp_id, true );
                    }
                    echo $dp_id.'-';
                }
            }
        }

        $query_status = '';
        if( isset( $_POST['status'] ) && $_POST['status'] != '' ) {
            $query_status = " AND $wpdb->posts.post_status = '".$_POST['status']."' ";
        }

        if( $_POST['target'] == 'search_duplicates' ) { // Setup WP_Query as per search
            $selected_post_type = $_POST['selected_post_type'];
            $title_s = array();

            if( !empty( $_POST['title_contains'] ) ) {
                $title_s['s'] = $_POST['title_contains'];
                $args = array(
                    'post_type' => $selected_post_type,
                    's' => $_POST['title_contains'],
                    'posts_per_page' => -1
                );
            } else {
                $args = array(
                    'post_type' => $selected_post_type,
                    'posts_per_page' => -1
                );
            }

            $args = array(
                'post_type' => $selected_post_type,
                'posts_per_page' => -1,
                'orderby' => 'date',
                'order' => 'ASC',
                'post_status' => $_POST['status']
            );            

            $getting_all_posts = new WP_Query( $args );

            $total_posts = 0; $last_title_search = array(); $stop_searching = 0;
            if ( $getting_all_posts->have_posts() ) {                
                
                $found_duplicates = array();
                $html = ''; $skip = false;
                while ( $getting_all_posts->have_posts() ) {
                    $getting_all_posts->the_post();

                    $operator = '=';
                    if( !empty( $_POST['title_contains'] ) ) {                        
                        $title = '%'.$_POST['title_contains'].'%';
                        $operator = 'LIKE';
                    } else if( $_POST['match_title'] == 'yes' ) {
                        $title = get_the_title();
                    } else {
                        $title = '%'.get_the_title().'%';
                        $operator = 'LIKE';
                    }

                    // Ignore the same query for the same title.
                    if( in_array( $title, $last_title_search ) )
                        continue;

                    $last_title_search[] = $title;

                    $current_post_ID = get_the_ID();
                    $skip = false;                    
                    
                    foreach( $found_duplicates as $duplicate_ids => $duplicates) {                        
                        if( $current_post_ID == $duplicate_ids ) {                            
                            $skip = true;
                            break;
                        }
                    }

                    if( $skip == true ) {                        
                        continue;
                    }

                    $limit = ( $_POST['search_per_req'] - 50) .",". ( $_POST['search_per_req'] + 1 );
                    
                    $query_count = "SELECT count(*) as num_rows from `wp_posts` WHERE `post_type` = '".$selected_post_type."'";
                    $query_count = $wpdb->get_results($query_count);                    

                    // Query to get all duplicate posts
                    $querystr = "SELECT $wpdb->posts.ID
                    FROM $wpdb->posts
                    WHERE $wpdb->posts.post_title $operator '".$title."'
                    AND $wpdb->posts.post_type = '".$selected_post_type."'
                    ". $query_status ."
                    ORDER BY $wpdb->posts.post_date ASC LIMIT $limit";                
                
                    $posts_found = $wpdb->get_results($querystr, OBJECT);
                    // echo 'count: ' . count( $posts_found );
                    if( count( $posts_found ) == 0 ) {                        
                        echo '0'; // Stop searching, and print the duplicates
                        $stop_searching = 1;
                        break;
                    }

                    $post_count = 0;
                    foreach( $posts_found as $post_ids ) {
                        $post_count++;
                        // Don't remove original post
                        if( $post_count == 1 ) {
                            continue;
                        }
                        
                        $found_duplicates['id'] = $post_ids->ID; 
                        $found_duplicates['title'] = get_the_title( $post_ids->ID );
                        $p_d[] = $found_duplicates;                        

                        $total_posts++;
                    }

                    wp_reset_postdata();
                }

                if( $_POST['search_per_req'] >= $query_count[0]->num_rows && $total_posts == 0 && $stop_searching == 0 ) {
                    echo '0'; // Stop searching, and print the duplicates
                } else if( $total_posts > 0 ) {
                    echo json_encode( $p_d );
                }
                
            } else {
                echo '0';
            }

        }
        wp_die();
    }

    /**
     * Getting Result
     * Performing Ajax Queries
     * @since 1.3
     * @version 1.0
     */
    function rdp_get_result() {

        $found_duplicates = json_decode( stripslashes($_POST['duplicate_ids']) );

        // Save ids that are printed in result, to avoid duplication data printed
        $dp_ids_printed = array();

        // Make new array to store all the duplicate items
        $rdp_duplicate_ids = ''; $dp_msg = ''; $total_posts = 0;        

        if( count( $found_duplicates ) >= 1 ) {
            // If Duplicate Posts Exists
            foreach( $found_duplicates as $dp_posts_value ) {                    

                if( in_array( $dp_posts_value->id, $dp_ids_printed ) )
                    continue;
                    
                $dp_ids_printed[] = $dp_posts_value->id;

                $html .= '<div class="rdp-dpl-product-title"><input type="checkbox" class="rdp-multi-check" checked value="'.$dp_posts_value->id.'">'.$dp_posts_value->title.'</div>';
                $total_posts++; 
                $rdp_duplicate_ids .= $dp_posts_value->id.',';

                $html .= '<div class="rdp-duplicate-link"><a href="'. get_permalink( $dp_posts_value->id ) .'">'.get_permalink( $dp_posts_value->id ).'</a></div>';                              
            }
            
            $rdp_duplicate_ids = rtrim($rdp_duplicate_ids,',');
        }
        
        // Put Duplicate Ids in Hidden value to get it form Ajax/jQuery
        if( !empty($rdp_duplicate_ids) && count( $found_duplicates ) >= 1 ) {
            $html .= '<input type="hidden" id="rdp-duplicate-ids" value="'.$rdp_duplicate_ids.'" />';
            $dp_msg = '<h2>'. ( $total_posts ) . __(' Duplicate Posts Found','rdp_domain') .'</h2>';
            $dp_msg .= 'Select / Unselect All <input type="checkbox" class="rdp-select-all" checked/>';
        } else {
            $html .= '<div class="drp-response">'.__('No Duplicate Posts Found <span class="dashicons dashicons-smiley"></span>','rdp_domain').'</div>';
        }
        $html = $dp_msg . $html;

        echo $html;

        wp_die();
    }

    /**
     * Getting Registered Post Types
     * @since: 1.0.0
     * @return available post types
     */
    function rdp_get_all_posts() {
        $args = array(
            'public'   => true,
            '_builtin' => false
        );

        $builtin = array(
            'post',
            'page',            
        );

        $output = 'names'; // names or objects, note names is the default
        $operator = 'and'; // 'and' or 'or'

        $post_types = get_post_types( $args, $output, $operator );
        $post_types = array_merge($builtin, $post_types);

        return $post_types;
    }
}
