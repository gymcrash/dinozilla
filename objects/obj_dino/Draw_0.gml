switch(action_state) {
	case "RUN":
	 image_speed = 1;
		draw_sprite(spr_dinoZilla_run, -1, x, y);
		break;
	case "JUMP": 
		image_speed = 1;
		draw_sprite(spr_dinoZilla_jump, -1, x, y);
		break;
	case "JUMPING": 
		draw_sprite(spr_dinoZilla_jump, sprite_get_number(sprite_index)-1, x, y);
		image_speed = 0;
		break;
	case "LANDING": 
		direction = 0;
		draw_sprite(spr_dinoZilla_jump, sprite_get_number(sprite_index)-1, x, y);
		image_speed = -1;
		break;
}
