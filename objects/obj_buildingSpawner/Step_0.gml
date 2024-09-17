elapsed_time+=delta_time/100000;
if(elapsed_time > next_spawn_time) {
	elapsed_time = 0;
	next_spawn_time = random_range(min_spawn_time, max_spawn_time);
	instance_create_layer(x,y,layer,building_type);
}