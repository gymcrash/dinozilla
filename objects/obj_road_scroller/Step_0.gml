for(var _i = 0; _i < array_length(roads); _i++) {
	if(roads[_i] . x + roads[_i].sprite_width < 0) {
		roads[_i].x = room_width;
	}
}