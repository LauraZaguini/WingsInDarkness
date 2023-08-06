instance_create(x,y,obj_EDN_cursor);
globalvar EDN_light; EDN_light = surface_create(room_width, room_height);     //reating surface ------

R = 0;R1 = 0;   //Default value for R and R1-----
G = 0;G1 = 0;   //Default value for G and G1-----
B = 100;B1 = 0;   //Default value for B and B1-----

globalvar EDN_color; EDN_color = make_colour_rgb(R,G,B);    //Create RGB-----

globalvar EDN_sun_direction;    EDN_sun_direction = 0;         //Default value for sun positioning -----
globalvar EDN_sun_distance;     EDN_sun_distance = 0            //default value for sun distance-----
globalvar EDN_sun_direction1;    EDN_sun_direction1 = 0;         //Default value for sun positioning -----
globalvar EDN_sun_distance1;     EDN_sun_distance1 = 0            //default value for sun distance-----
globalvar EDN_day;              EDN_day = 0;                    //Default value for day -----
globalvar EDN_minute;           EDN_minute = 0;                 //Default value for minute -----
globalvar EDN_hour;             EDN_hour = 0;                   //Default value for hour -----
globalvar EDN_minute_real;      EDN_minute_real = 2.5;           // What time will take 1 game hour in real seconds
globalvar EDN_minute_speed;     EDN_minute_speed = 0;
globalvar EDN_active;           EDN_active = true;              //Default value for activation -----
globalvar EDN_HUD;              EDN_HUD = false;                 //HUD Visibility
globalvar EDN_Max_hours;        EDN_Max_hours = 24;             //<----------

