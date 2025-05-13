/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
objBarco.derecha = true;
objBarco.espacios = 0;
objBarco.x = 510;

objMisionero1.x = 1028;
objMisionero1.y = 343;
objMisionero1.derecha = true;
objMisionero1.abordo = false;

objMisionero2.x = 1188;
objMisionero2.y = 407;
objMisionero2.derecha = true;
objMisionero2.abordo = false;

objMisionero3.x = 1124;
objMisionero3.y = 471;
objMisionero3.derecha = true;
objMisionero3.abordo = false;

objCanibal1.x = 932;
objCanibal1.y = 151;
objCanibal1.derecha = true;
objCanibal1.abordo = false;

objCanibal2.x = 1156;
objCanibal2.y = 151;
objCanibal2.derecha = true;
objCanibal2.abordo = false;

objCanibal3.x = 932;
objCanibal3.y = 279;
objCanibal3.derecha = true;
objCanibal3.abordo = false;

objBarco.contCanDer = 3;
objBarco.contCanIzq = 0;
objBarco.contMisDer = 3;
objBarco.contMisIzq = 0;

if(objMisionero1.image_angle == -90){
	objMisionero1.image_angle = 0;
}

if(objMisionero2.image_angle == -90){
	objMisionero2.image_angle = 0;
}

if(objMisionero3.image_angle == -90){
	objMisionero3.image_angle = 0;
}

objBarco.perder = false;
audio_play_sound(Sonido_Reset, 0, 0);

objMuerte.visible = false;
objFelicidades.visible = false;

objMisionero1.sprite_index = sprMisionero;
objMisionero2.sprite_index = sprMisionero;
objMisionero3.sprite_index = sprMisionero;
//Sonido_fondo.
