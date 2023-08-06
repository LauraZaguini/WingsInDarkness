function sc_EDN_load() {
	R = R_save[EDN_hour]
	G = G_save[EDN_hour]
	B = B_save[EDN_hour]
	R1 = R1_save[EDN_hour]
	G1 = G1_save[EDN_hour]
	B1 = B1_save[EDN_hour]

	EDN_sun_direction   = EDN_sun_direction_save[EDN_hour];
	EDN_sun_direction1  = EDN_sun_direction1_save[EDN_hour];
	EDN_sun_distance    = EDN_sun_distance_save[EDN_hour];
	EDN_sun_distance1   = EDN_sun_distance1_save[EDN_hour];

	/*
	EDN_output[EDN_hour] = string("sc_EDN_color(")+string(EDN_hour)+string(",")+string(EDN_hour+1)+string(",")
	+string(R)+string(",")+string(G)+string(",")+string(B)+string(",")
	+string(R1)+string(",")+string(G1)+string(",")+string(B1)+string(",")
	+string(EDN_sun_direction)+string(",")+string(EDN_sun_direction1)+string(",")+string(EDN_sun_distance)+string(",")+string(EDN_sun_distance1)
	+string(");")


/* end sc_EDN_load */
}
