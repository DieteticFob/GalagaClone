///move_state();
//Moving
var seconds_passed = delta_time/1000000;
var move_speed_this_frame = move_speed*seconds_passed;

var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    
    if(move_dir = 180 || move_dir = 225 || move_dir = 135) {
        sprite_index = spr_player_left2;
    } else if (move_dir = 0 || move_dir = 45 || move_dir = 315) {
        sprite_index = spr_player_right2;
    }    
    show_debug_message(move_dir);
    x += lengthdir_x(move_speed_this_frame, move_dir);
    y += lengthdir_y(move_speed_this_frame, move_dir);

} else {
    sprite_index = spr_player;
}


