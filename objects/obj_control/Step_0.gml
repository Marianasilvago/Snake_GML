/// @description Insert description here
// 
if (keyboard_check_pressed(vk_down)){
	//Prevenir atravezar snake
	if(global.dir != 8){
		// Solo se puede mover si es el gusano no esta subiendo
		global.dir = 2;
		//Sprite Mover
		//object_set_sprite(obj_snake,spr_snakeBody = 2);
	}
} else if(keyboard_check_pressed(vk_left)){
	//Prevenir atravezar snake
	if(global.dir != 6){
		// Solo se puede mover si es el gusano no esta subiendo
		global.dir = 4;
	}
} else if(keyboard_check_pressed(vk_up)){
	//Prevenir atravezar snake
	if(global.dir != 2){
		// Solo se puede mover si es el gusano no esta subiendo
		global.dir = 8;
	}
} else if (keyboard_check_pressed(vk_right)){
	//Prevenir atravezar snake
	if(global.dir != 4){
		// Solo se puede mover si es el gusano no esta subiendo
		global.dir = 6;
	}
}