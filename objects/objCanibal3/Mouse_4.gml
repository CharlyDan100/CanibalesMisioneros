/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(objBarco.derecha == true && objBarco.espacios != 2 && objCanibal3.abordo != true && objCanibal3.derecha == true && objBarco.perder == false){
	if(objBarco.espacios == 0){
		objCanibal3.x = 700;
		objCanibal3.y = 320;
		objCanibal3.abordo = true;
		
		objBarco.espacios++;
		
		audio_play_sound(Sonido_abordar, 0, 0);
	}else if(objCanibal2.x == 860 || objCanibal1.x == 860 || objMisionero3.x == 860 || objMisionero2.x == 860 || objMisionero1.x == 860){
		objCanibal3.x = 700;
		objCanibal3.y = 320;
		objCanibal3.abordo = true;
		
		objBarco.espacios++;
		audio_play_sound(Sonido_abordar, 0, 0);
	}else{
		objCanibal3.x = 860;
		objCanibal3.abordo = true;
		objCanibal3.y = 320;
		
		objBarco.espacios++;
		audio_play_sound(Sonido_abordar, 0, 0);
	}
}else if(objCanibal3.abordo != true && objBarco.espacios < 2 && objBarco.derecha == false && objCanibal3.derecha == false && objBarco.perder == false){//Abordar de izquierda a derecha
	if(objBarco.espacios == 0){
		objCanibal3.x = 700-210;
		objCanibal3.y = 320;
		objCanibal3.abordo = true;
		
		objBarco.espacios++;
		audio_play_sound(Sonido_abordar, 0, 0);
	}else if(objCanibal2.x == 860-210 || objCanibal1.x == 860-210 || objMisionero3.x == 860-210 || objMisionero2.x == 860-210 || objMisionero1.x == 860-210){
		objCanibal3.x = 700-210;
		objCanibal3.y = 320;
		objCanibal3.abordo = true;
		
		objBarco.espacios++;
		audio_play_sound(Sonido_abordar, 0, 0);
	}else{
		objCanibal3.x = 860-210;
		objCanibal3.abordo = true;
		objCanibal3.y = 320;
		
		objBarco.espacios++;
		audio_play_sound(Sonido_abordar, 0, 0);
	}
}else{//Sonido de bloqueado
	audio_play_sound(Sonido_bloqueado, 0, 0);
}

