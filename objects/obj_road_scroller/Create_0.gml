road_objects = [obj_road1, obj_road2, obj_road3];
roads = [];
road_width = sprite_get_width(spr_road1);


function _add_road(_xoffset) {

	var _road_obj =  road_objects[floor(random_range(0, array_length(road_objects)))];
	var _instance = instance_create_layer(_xoffset*road_width, y,"Bg_instances", _road_obj);
	_instance.speed = 1;
	_instance.direction = 180;
	array_push(roads, _instance);
}



for(var _i = 0; _i < ceil(room_width / road_width); _i++) {
	_add_road(_i)
}

_add_road(array_length(roads));
 