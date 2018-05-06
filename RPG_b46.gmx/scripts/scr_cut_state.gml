/// scr_cut_state
image_speed = .3;

var damage = instance_create(x,y,obj_cut_damage);
damage.creator = id;
damage.damage = obj_player_stats.attack;
obj_cut_damage.phy_rotation = -dir+180;

switch (sprite_index) {
    case spr_player_idle_down:
        sprite_index = spr_player_attack_down;
        break;
    case spr_player_run_down:
        sprite_index = spr_player_attack_down;
        break;
        
    case spr_player_idle_right:
        sprite_index = spr_player_attack_right;
        break;
    case spr_player_run_right:
        sprite_index = spr_player_attack_right;
        break;
        
    case spr_player_idle_left:
        sprite_index = spr_player_attack_left;
        break;
    case spr_player_run_left:
        sprite_index = spr_player_attack_left;
        break;
        
    case spr_player_idle_up:
        sprite_index = spr_player_attack_up;
        break;
    case spr_player_run_up:
        sprite_index = spr_player_attack_up;
        break;
}



if (image_index >= 3 and attacked == false){
    
    var xx = 0;
    var yy = 0;
    
    switch (sprite_index) {
        case spr_player_attack_down:
            xx = x;
            yy = y + 12;
            break;
        case spr_player_attack_right:
            xx = x + 10;
            yy = y + 2;
            break;
        case spr_player_attack_left:
            xx = x - 10;
            yy = y + 2;
            break;
        case spr_player_attack_up:
            xx = x;
            yy = y - 10;
            break;
    }
    
    
    attacked = true;
}
