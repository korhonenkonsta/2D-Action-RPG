/// scr_get_input
right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
roll_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('X'));
heavy_attack_key = keyboard_check(ord('S'));
potion_key = keyboard_check_pressed(ord('E'));
block_key = keyboard_check(ord('Z'));
run_key = keyboard_check(ord('V'));

// Get the axis
xaxis = (right_key - left_key); 
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0,gp_axislh);
    yaxis = gamepad_axis_value(0,gp_axislv);
    roll_key = gamepad_button_check_pressed(0,gp_face2);
    attack_key = gamepad_button_check_pressed(0,gp_shoulderr);
    heavy_attack_key = gamepad_button_check(0,gp_shoulderrb);
    potion_key = gamepad_button_check_pressed(0,gp_face3);
    block_key = gamepad_button_check(0,gp_shoulderl);
    run_key = gamepad_button_check(0,gp_face2);
}
