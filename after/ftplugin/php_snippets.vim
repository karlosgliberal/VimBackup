if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim
exec "Snippet formalter /**<CR>* Implementation of hook_form_alter().<CR>*/<CR>function ".st."FunctionName".et."_form_alter ($form_id, &$form){<CR>if ($form_id == ".st."variable".et."){<CR>}<CR>}<CR>".st.et
exec "Snippet nodeapi /**<CR>* Implementation of hook_nodeapir().<CR>*/<CR>function ".st."FunctionName".et."_nodeapi (&$node, $op, $a3 = NULL, $a4 = NULL){<CR>switch ($op){<CR>case 'submit':<CR>".st.et."<CR>break;<CR>case 'insert':<CR>case 'update':<CR>".st.et."<CR>break:<CR>case 'view':<CR>".st.et."<CR>break;<CR>}<CR>}<CR>".st.et
exec "Snippet linkalter /**<CR>* Implementation of hook_link_alter().<CR>*/<CR>function ".st."FunctionName".et."_link_alter (&$node, &$links){<CR>foreach($links as $module  => $link ){<CR>if (strstr($module, 'taxonomy_term')){<CR>//link alter example return tu forum not tu taxonomy/term<CR>$links[$module]['#href'] = str_replace('taxonomy/term', 'forum', $link['#href']);<CR>}<CR>}<CR>}<CR>".st.et
exec "Snippet menu /**<CR>* Implementation of hook_menu().<CR>*/<CR>function ".st."FunctionName".et."_menu ($may_cache){<CR>$items = array();<CR>if($may_cache){<CR>$items[] = array(<CR>'path' => '".st."YourMenu".et."',<CR>'callback' => '".st."callback".et."',<CR>'type' => MENU_CALLBACK,<CR>'access' => user_access('".st."role".et."'),<CR>);<CR>}<CR>return $items;<CR>}<CR>".st.et
exec "Snippet dhelp /**<CR>* Implementation of hook_help().<CR>*/<CR>function ".st."FunctionName".et."_help ($path, $arg){<CR>switch ($path){<CR>case 'admin/help#".st."YourModuleOrOther".et."':<CR>".st.et."<CR>return '<p>'.t('Text for your help in your module or section of your module').'</p>';<CR>}<CR>}<CR>".st.et
exec "Snippet perm /**<CR>* Implementation of hook_permr().<CR>*/<CR>function ".st."FunctionName".et."_perm(){<CR>return array('your name perm');<CR>}<CR>".st.et
exec "Snippet dphpp <?php<CR><CR>".st.et."<CR><CR>"

exec "Snippet printr print_r \$".st."variable".et.";".st.et."<CR>".st.et
exec "Snippet dprintr dprint_r \$".st."variable".et.";".st.et."<CR>".st.et
exec "Snippet elseif elseif ( ".st."condition".et." ){<CR><Tab>".st.et."<CR>}<CR>".st.et
exec "Snippet do do<CR>{<CR>".st.et."<CR><CR>} while ( ".st.et." );<CR>".st.et
exec "Snippet reql require_once( '".st."file".et."' );<CR>".st.et
exec "Snippet if? $".st."retVal".et." = ( ".st."condition".et." ) ? ".st."a".et." : ".st."b".et." ;<CR>".st.et
exec "Snippet phpp <?php<CR><CR>".st.et."<CR><CR>?>"
exec "Snippet switch switch ( ".st."variable".et." ){<CR>case '".st."value".et."':<CR>".st.et."<CR>break;<CR><CR>".st.et."<CR><CR>default:<CR>".st.et."<CR>break;<CR>}<CR>".st.et
exec "Snippet incll include_once( '".st."file".et."' );".st.et
exec "Snippet incl include( '".st."file".et."' );".st.et
exec "Snippet foreach foreach( $".st."variable".et." as $".st."key".et." => $".st."value".et." ){<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ifelse if ( ".st."condition".et." ){<CR>".st.et."<CR>}<CR>else{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet $_ $_REQUEST['".st."variable".et."']<CR>".st.et
exec "Snippet case case '".st."variable".et."':<CR>".st.et."<CR>break;<CR>".st.et
exec "Snippet print print \"".st."string".et."\"".st.et.";".st.et."<CR>".st.et
exec "Snippet function ".st."public".et."function ".st."FunctionName".et." (".st.et."){<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet if if ( ".st."condition".et." ){<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet else else{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet array $".st."arrayName".et." = array( '".st.et."',".st.et." );".st.et
exec "Snippet -globals $GLOBALS['".st."variable".et."']".st.et.st."something".et.st.et.";<CR>".st.et
exec "Snippet req require( '".st."file".et."' );<CR>".st.et
exec "Snippet for for ( $".st."i".et."=".st.et."; $".st."i".et." < ".st.et."; $".st."i".et."++ ){ <CR>".st.et."<CR>}<CR>".st.et
