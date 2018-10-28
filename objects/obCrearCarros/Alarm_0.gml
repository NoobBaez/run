/// @description Crear carros cada X frame
xInicial = random_range(300,635);
yInicial = -2000;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);

if !obControl.gameOver //&& instance_exists(obPlayer) 
{
	alarm[0] = irandom_range(35,maxTime);
	maxTime-=1//(35/60);
	maxTime = clamp(maxTime,45,200);
}
