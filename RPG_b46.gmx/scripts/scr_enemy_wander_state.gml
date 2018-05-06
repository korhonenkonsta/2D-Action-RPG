/// scr_enemy_wander_state()
scr_check_for_player();

// Get direction
dir = point_direction(x,y,targetx,targety);

// Get the length
len = spd;
    
// Get the speeds
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;


