/// @description Alarme dos vagalumes

// No evento de alarme 0 do obj_part_creator
if (instance_number(obj_part_ambient) > 1) {
	// Destrói a instância atual do obj_part_creator
	 instance_destroy();
}else {
	 // Cria uma nova instância de obj_particle_2
	spawn_vagalumes();
}