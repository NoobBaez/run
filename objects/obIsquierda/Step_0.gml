/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_left)
{
	image_alpha = .3;
}
else
{
	image_alpha = 0;
}

//Eliminar virtual key
if obControl.gameOver 
{
	virtual_key_delete(v_izquierda);
	image_alpha = 0;
}