/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//FUNCIÓN PARA COMPROBAR CANIBALISMO
function valida_canibalismo(){

	if(contMisDer < contCanDer && contMisDer > 0){
		if(objMisionero1.derecha == true){
			objMisionero1.image_angle = -90;
			objMisionero1.x += 96;
			objMisionero1.y += 65;
			objMisionero1.sprite_index = sprMisioneroDead;
		}
		
		if(objMisionero2.derecha == true){
			objMisionero2.image_angle = -90;
			objMisionero2.x += 96;
			objMisionero2.y += 65;
			objMisionero2.sprite_index = sprMisioneroDead;
		}
		
		if(objMisionero3.derecha == true){
			objMisionero3.image_angle = -90;
			objMisionero3.x += 96;
			objMisionero3.y += 65;
			objMisionero3.sprite_index = sprMisioneroDead;
		}
		objBarco.perder = true;
		objMuerte.visible = true;
		audio_play_sound(Sonido_grito, 0, 0);
	}
	
	if(contMisIzq < contCanIzq && contMisIzq > 0){
		if(objMisionero1.derecha == false){
			objMisionero1.image_angle = -90;
			objMisionero1.x += 96;
			objMisionero1.y += 65;
			objMisionero1.sprite_index = sprMisioneroDead;
		}
		
		if(objMisionero2.derecha == false){
			objMisionero2.image_angle = -90;
			objMisionero2.x += 96;
			objMisionero2.y += 65;
			objMisionero2.sprite_index = sprMisioneroDead;
		}
		
		if(objMisionero3.derecha == false){
			objMisionero3.image_angle = -90;
			objMisionero3.x += 96;
			objMisionero3.y += 65;
			objMisionero3.sprite_index = sprMisioneroDead;
		}
		objBarco.perder = true;
		objMuerte.visible = true;
		audio_play_sound(Sonido_grito, 0, 0);
	}
	
}


//FUNCION PARA MOVER A LOS PASAJEROS A LA IZQUIERDA
function mover_pasajeros_izquierda(){
	if(objMisionero1.abordo == true){
		objMisionero1.x -= 210;
		objMisionero1.derecha = false;
		contMisDer --;
		contMisIzq ++;
	}
	
	if(objMisionero2.abordo == true){
		objMisionero2.x -= 210;
		objMisionero2.derecha = false;
		contMisDer --;
		contMisIzq ++;
	}
	
	if(objMisionero3.abordo == true){
		objMisionero3.x -= 210;
		objMisionero3.derecha = false;
		contMisDer --;
		contMisIzq ++;
	}
	
	if(objCanibal1.abordo == true){
		objCanibal1.x -=210;
		objCanibal1.derecha = false;
		contCanDer --;
		contCanIzq ++;
	}
	
	if(objCanibal2.abordo == true){
		objCanibal2.x -=210;
		objCanibal2.derecha = false;
		contCanDer --;
		contCanIzq ++;
	}
	
	if(objCanibal3.abordo == true){
		objCanibal3.x -=210;
		objCanibal3.derecha = false;
		contCanDer --;
		contCanIzq ++;
	}
	
	valida_canibalismo();
}

//FUNCION PARA MOVER A LOS PASAJEROS A LA DERECHA
function mover_pasajeros_derecha(){
	if(objMisionero1.abordo == true){
		objMisionero1.x += 210;
		objMisionero1.derecha = true;
		contMisDer ++;
		contMisIzq --;
	}
	
	if(objMisionero2.abordo == true){
		objMisionero2.x += 210;
		objMisionero2.derecha = true;
		contMisDer ++;
		contMisIzq --;
	}
	
	if(objMisionero3.abordo == true){
		objMisionero3.x += 210;
		objMisionero3.derecha = true;
		contMisDer ++;
		contMisIzq --;
	}
	
	if(objCanibal1.abordo == true){
		objCanibal1.x +=210;
		objCanibal1.derecha = true;
		contCanDer ++;
		contCanIzq --;
	}
	
	if(objCanibal2.abordo == true){
		objCanibal2.x +=210;
		objCanibal2.derecha = true;
		contCanDer ++;
		contCanIzq --;
	}
	
	if(objCanibal3.abordo == true){
		objCanibal3.x +=210;
		objCanibal3.derecha = true;
		contCanDer ++;
		contCanIzq --;
	}
	valida_canibalismo();
}

if(espacios > 0 && perder == false){
	if(objBarco.derecha == true){
		objBarco.x = 300;
		objBarco.derecha = false;
		
		audio_play_sound(Moviendo_barco, 0, 0);
		
		mover_pasajeros_izquierda();
		
		valida_canibalismo();
	}else{
		objBarco.x = 510;
		objBarco.derecha = true;
		
		audio_play_sound(Moviendo_barco, 0, 0);
		
		mover_pasajeros_derecha();
		
		valida_canibalismo();
	}
}else{
	audio_play_sound(Sonido_bloqueado, 0, 0);
}





