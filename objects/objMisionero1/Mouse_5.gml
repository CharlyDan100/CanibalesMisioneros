/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
function ganar_juego(){
	if(objMisionero1.abordo == false && objMisionero1.derecha == false
	   && objMisionero2.abordo == false && objMisionero2.derecha == false
	   && objMisionero3.abordo == false && objMisionero3.derecha == false
	   && objCanibal1.abordo == false && objCanibal1.derecha == false
	   && objCanibal2.abordo == false && objCanibal2.derecha == false
	   && objCanibal3.abordo == false && objCanibal3.derecha == false
	){
		objFelicidades.visible = true;
		objBarco.perder = true;
		audio_play_sound(Sonido_Felicidades, 0, 0);
	}
}

if(objMisionero1.abordo == true && objBarco.perder == false){
	if(objBarco.derecha == true){
		objMisionero1.x = 1028;
		objMisionero1.y = 343;
		
		objMisionero1.abordo = false;
		
		objBarco.espacios--;
		audio_play_sound(Sonido_bajar, 0, 0);
	}else{
		objMisionero1.x = 230;
		objMisionero1.y = 380;
		
		objMisionero1.abordo = false;
		
		objBarco.espacios--;
		audio_play_sound(Sonido_bajar, 0, 0);
		ganar_juego();
	}
}
