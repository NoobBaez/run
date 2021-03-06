/// @description Declarando las variables utilizadas en el carro (Player)
velocidad = 33.75;
xDireccion = 0;
xMovimiento = 0;
sombraX = 10;
timeCoinF = 0;

puedeMoverse = false;
colision = false;
iniciarJuego = true;
volando = false;
SplashSound = false;

yInicial = 750;
randomize();
x = 460;
y = room_height;

////PARTICULAS DERRAPE
sistema_derrape = part_system_create(); //Sistema
part_system_automatic_draw(sistema_derrape,false);

particula_derrape = part_type_create();//Particula
part_type_shape(particula_derrape,pt_shape_smoke);
part_type_direction(particula_derrape,240,300,false,1);
part_type_speed(particula_derrape,30,30,false,false);
part_type_color2(particula_derrape,c_gray,c_black);
part_type_alpha2(particula_derrape,1,0);
part_type_size(particula_derrape,0.1,2,.01,false);
part_type_life(particula_derrape,5,25)

particula_derrape2 = part_type_create();//Particula
part_type_shape(particula_derrape2,pt_shape_pixel);
part_type_direction(particula_derrape2,240,300,false,1);
part_type_speed(particula_derrape2,30,30,false,false);
part_type_size(particula_derrape2,2,2,0,false);
part_type_color1(particula_derrape2,c_black);


emisor_derrape = part_emitter_create(sistema_derrape); //Emisor

//PARTICULAS Like
sistema_frases = part_system_create(); //Sistema

particula_frase = part_type_create();//Particula
part_type_sprite(particula_frase,spLikeMano,false,false,false);
part_type_scale(particula_frase,2,2);
part_type_direction(particula_frase,0,360,false,false);
part_type_gravity(particula_frase,10,270)
part_type_speed(particula_frase,10,10,false,false);
part_type_alpha2(particula_frase,1,.5);
part_type_life(particula_frase,30,50);

emisor_frase = part_emitter_create(sistema_frases);//Emisor


///New LVL effect
particula_lvl = part_type_create()
part_type_sprite(particula_lvl,spNewLVL,false,false,false);
//part_type_scale(particula_lvl,1,1);
part_type_size(particula_lvl,.05,.1,false,true)
part_type_direction(particula_lvl,50,130,false,false);
//part_type_gravity(particula_lvl,20,270)
part_type_speed(particula_lvl,10,20,false,false);
part_type_alpha2(particula_lvl,1,.5);
part_type_life(particula_lvl,15,25);
part_type_blend(particula_lvl,true);

emisor_lvl = part_emitter_create(sistema_frases);




//Create Particle System
systemConfety = part_system_create();
// Create Confetti Particle Type
partTypeConfetti = part_type_create();
// Set random (randomizes image_index) to TRUE here
part_type_sprite(partTypeConfetti, spConfety, false, false, true); 
// Add some image_angle wiggle (45)
part_type_orientation(partTypeConfetti, 0, 360, 0, 45, 0);
// Depending on case of usage, add downwards gravity
// Change values for wind or top-down camera
part_type_gravity(partTypeConfetti, 0.3, 270);
// Spread, spread it wide. Some direction wiggle doesn't hurt too.
// Our rectangles are wiggly after all.
part_type_direction(partTypeConfetti, 0, 360, 0, 30);
// Movement speed and deceleration 
part_type_speed(partTypeConfetti, 10, 15, -0.3, 0);
part_type_size(partTypeConfetti, 0.2, 0.3, 0, 0);
part_type_life(partTypeConfetti, 60, 120);

emitterConfeti = part_emitter_create(systemConfety);

//RASTRO//
systemRastro = part_system_create();
part_system_automatic_draw(systemRastro,false);

partRastro = part_type_create();
part_type_sprite(partRastro,sprite_index,true,false,false);
part_type_blend(partRastro,true);
part_type_size(partRastro,1,1,0,0);
part_type_alpha2(partRastro,.5,0);
part_type_life(partRastro,10,10);
part_type_speed(partRastro,20,40,5,false);
part_type_direction(partRastro,270,270,false,false);

emiteRastro = part_emitter_create(systemRastro)


