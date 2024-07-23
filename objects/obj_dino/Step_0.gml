function jump() {
	y = lerp(y, start_y-jump_height, 0.2);
	if(y < (start_y-jump_height+0.2)) {
		action_state = "LANDING";
	}
}

function land() {
	y = lerp(y, start_y, 0.4);
}


switch(action_state) {
 case "JUMP":
	jump();
	if(floor(image_index) == sprite_get_number(sprite_index)-1) {
			action_state = "JUMPING";
	}
	break;
 case "JUMPING":
	jump();
	break;
 case "LANDING":
	land();
	if(y > (start_y-0.1)) {
		action_state = "RUN";
		y = start_y;
	}
	break;
	
}

