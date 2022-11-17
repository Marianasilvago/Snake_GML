/// @description Mover, borrar bloque o incrementar posición



// Final cola
if (position == global.points){
	// Cambiar al Sprite de cuerpo
	sprite_index =spr_snakeEnd
	

}


// Avanza el personaje 
// Si éste objeto es la cabeza, entonces , tiene privilegios para crear otro objetox
if (position == 0){
	// Usar esta función para la explosion de bomberman, es otro poryecto
	switch(global.dir){
		case 6:	// Derecha
			// Crea una instancia - Right
			instance_create_layer(x+64,y,obj_snake,obj_snake);
		break;
		case 4: // Izquierda
			// Crea una instancia - Left
			instance_create_layer(x-64,y,obj_snake,obj_snake);
		break;
		case 2:	// Abajo
			// Crea una instancia - Down
			instance_create_layer(x,y+64,obj_snake,obj_snake);
		break;
		case 8:	// arriba
			// Crea una instancia - Up
			instance_create_layer(x,y-64,obj_snake,obj_snake);
		break;
		default:
		//
	}
}
//sumador
position++;



if (position != 0){// Significa que es de posisión 1 para arriba
	
	if (position == global.points){ // Si es verdadero, mostrará un sprite de la Cola
		sprite_index = spr_snakeEnd;
		// Verificaar la orientación que tuvo		
		switch(orientacion){
			case 8:
				image_index = 0;
			break;
			case 2:
				image_index = 3;
			break;
			case 4:
				image_index = 2;
			break;
			case 6:
				image_index = 1;
			break;
			default:
			image_index = 0;	// error
			break;
		}
		
		
	}else {	// Muestra el cuerpo 
		sprite_index = spr_snakeBody;
		// Verificaar la orientación que tuvo
		switch(orientacion){
			case 8:
				image_index = 4;
			break;
			case 2:
				image_index = 4;
			break;
			case 4:
				image_index = 1;
			break;
			case 6:
				image_index = 1;
			break;
			default:
			image_index = 0;	// error
			break;
		}
	}
}

	//Llegó a longitud maxima
//}else if (orientación){
	

//}

	// Ciclo - Vuelve a llamar alarma x 1 segundo
	alarm [0] = room_speed;	






// Destruir 
if (position ==  global.points+1){
	//Destruir Instancia
	instance_destroy(); 
}
