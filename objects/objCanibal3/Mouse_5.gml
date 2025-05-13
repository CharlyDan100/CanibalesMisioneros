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

if(objCanibal3.abordo == true && objBarco.perder == false){
	if(objBarco.derecha == true){
		objCanibal3.x = 932;
		objCanibal3.y = 279;
		
		objCanibal3.abordo = false;
		
		objBarco.espacios--;
		audio_play_sound(Sonido_bajar, 0, 0);
	}else{
		objCanibal3.x = 375;
		objCanibal3.y = 279;
		
		objCanibal3.abordo = false;
		
		objBarco.espacios--;
		audio_play_sound(Sonido_bajar, 0, 0);
		ganar_juego();
	}
}

