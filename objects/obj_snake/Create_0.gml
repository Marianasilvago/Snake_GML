/// @description  Llama alarma

sprite_index = spr_snakeHeadUp;
switch(global.dir){
		case 6:	// Derecha
			// change spr
			sprite_index  = spr_snakeHeadRight;
		break;
		case 4: // Izquierda
			// Change spr
			sprite_index  = spr_snakeHeadLeft;
		break;
		case 2:	// Abajo
			// Change spr
			sprite_index  = spr_snakeHeadDown;
		break;
		case 8:	// arriba
			// Change spr
			sprite_index = spr_snakeHeadUp;

		break;
		default:
		//
	}
// *Longitud del snake*
// Longitud es igual al puntaje
// Si el puntaje incrementa, incrementará el tamaño del snake
// se suma +1 por que global.point inicia en 0
	longitud = global.points+1
	
	
	// Orientación 
	// ésta variable fue creada para almacenar la orientación de la instancia cuando fue creada
	orientacion = global.dir;
	
	
	
	
	
// Hace referencia a la *posición de cuadriculas de la serpiente *
// al crearse se vuelve la cabeza principal, pero según pasen las alarmas, 
// la posición se sumará +1 , y si posición es igual longitud
	position = 0;	// 0 Cabeza


// Llama a la alarma x 1 segundo
alarm [0] = room_speed;	