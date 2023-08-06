sc_EDN_editor_step();


//REMEMBER - You max outputs must be 1 less to EDN_editor_max_hours_in_day

if keyboard_check_pressed(vk_enter) {
    EDN_saved_c = true;
    
clipboard_set_text(
+string("//Copy this to sc_EDN_cycle") +chr(13) +chr(10)
+EDN_output[0] +chr(13) +chr(10)
+EDN_output[1] +chr(13) +chr(10)
+EDN_output[2] +chr(13) +chr(10)
+EDN_output[3] +chr(13) +chr(10)
+EDN_output[4] +chr(13) +chr(10)
+EDN_output[5] +chr(13) +chr(10)
+EDN_output[6] +chr(13) +chr(10)
+EDN_output[7] +chr(13) +chr(10)
+EDN_output[8] +chr(13) +chr(10)
+EDN_output[9] +chr(13) +chr(10)
+EDN_output[10] +chr(13) +chr(10)
+EDN_output[11] +chr(13) +chr(10)
+EDN_output[12] +chr(13) +chr(10)
+EDN_output[13] +chr(13) +chr(10)
+EDN_output[14] +chr(13) +chr(10)
+EDN_output[15] +chr(13) +chr(10)
+EDN_output[16] +chr(13) +chr(10)
+EDN_output[17] +chr(13) +chr(10)
+EDN_output[18] +chr(13) +chr(10)
+EDN_output[19] +chr(13) +chr(10)
+EDN_output[20] +chr(13) +chr(10)
+EDN_output[21] +chr(13) +chr(10)
+EDN_output[22] +chr(13) +chr(10)
+EDN_output[23] +chr(13) +chr(10)
)};




/*So if you have more hours in day, for example 25 add this 
+EDN_output[24] +chr(13) +chr(10)




/* */
/*  */
