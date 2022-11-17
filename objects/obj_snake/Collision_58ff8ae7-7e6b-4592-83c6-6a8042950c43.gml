/// @description Insert description here
// 

// Suma 1 punto , cad vez que colisiona con el Snake

// Ancho
xl = position_random_x();
//Altura
yl = position_random_y();
// Create Manzana
instance_create_layer(xl,yl,obj_control,obj_point);
global.points++;
