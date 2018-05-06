/// scr_roll_state
if (len = 0){
    dir = face*90+180;
}

len = spd * 4;

// Get the speeds
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the roll effect
var roll = instance_create(x,y,obj_roll_effect);
roll.sprite_index = sprite_index;
roll.image_index = image_index;
