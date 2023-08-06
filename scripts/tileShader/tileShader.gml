function scr_tile_wave_fx(){
	if event_type == ev_draw
   {
    if  event_number == 0
      {
        //Create event:
        uTime = floor(shader_get_uniform(shd_wave, "Time"));
        uTexel = floor(shader_get_uniform(shd_wave, "Texel"));

        //Draw event:
        shader_set(shd_wave);
        shader_set_uniform_f(uTime, current_time);
        shader_set_uniform_f(uTexel, 0.0025, 0.005);
      }
   }
}

function scr_tile_shader_reset(){
	shader_reset()
}