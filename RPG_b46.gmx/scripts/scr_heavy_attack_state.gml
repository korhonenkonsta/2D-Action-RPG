/// scr_heavy_attack_state

scr_get_input();

// States
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

}else{
    
    len = 140;
    var damage = instance_create(x,y,obj_cut_damage);
    damage.creator = id;
    damage.damage = 0;
    obj_cut_damage.phy_rotation = -dir;
    scr_get_face();
}

/// Attack
if (!heavy_attack_key or obj_player_stats.stamina <= 0){
    image_index = 0;
    
    // Get the speeds
    hspd = lengthdir_x(len,dir);
    vspd = lengthdir_y(len,dir);
    
    // Move
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    state = scr_cut_state;
}

if (!instance_exists(obj_charge)) instance_create(x,y,obj_charge);


// Control the sprite
image_speed = .2;


switch (face) {
    case RIGHT:
        sprite_index = spr_player_idle_right;
        break;
    case UP:
        sprite_index = spr_player_idle_up;
        break;
    case LEFT:
        sprite_index = spr_player_idle_left;
        break;
    case DOWN:
        sprite_index = spr_player_idle_down;
        break; 
}
