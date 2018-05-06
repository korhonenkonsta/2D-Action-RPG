/// scr_block_state

scr_get_input();

// States
if (!block_key or obj_player_stats.stamina <= 0){
    image_index = 0;
    state = scr_move_state;
}

if (roll_key and obj_player_stats.stamina > 0){
    state = scr_roll_state;
    alarm[0] = room_speed/3;
    /// Stamina
    obj_player_stats.stamina -= 120;
}

if (potion_key){
    image_index = 0;
    obj_player_stats.hp += 100;
}

if (attack_key and obj_player_stats.stamina > 0){
    image_index = 0;
    state = scr_attack_state;
    /// Stamina
    obj_player_stats.stamina -= 120;
}

// Get direction
dir = point_direction(0,0,xaxis,yaxis);

// Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;

}else if (xaxis != 0 and yaxis != 0){
    
    //len = ceil(spd/(sqrt(2)));
    len = spd;
    scr_get_face();

} else {
    len = spd;
    scr_get_face();
}

// Get the speeds
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Sub pixel movement
var v;
xExcess += hspd;
v = round(xExcess);
xExcess -= v;
phy_position_x += v;
 
yExcess += vspd;
v = round(yExcess);
yExcess -= v;
phy_position_y += v;

// Move
phy_position_x = round(phy_position_x);
phy_position_y = round(phy_position_y);

// Control the sprite
image_speed = sign(len)*.1;
if (len == 0) image_index = 0;


switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
        
}
