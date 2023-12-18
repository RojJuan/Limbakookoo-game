var _right_key2 = keyboard_check( vk_right);
var _left_key2 = keyboard_check( vk_left );
var _up_key2 = keyboard_check( vk_up);
var _down_key2 = keyboard_check( vk_down);

 

//player movement
    //get the direction

 

    var _horiz_key2 = _right_key2 - _left_key2;
    var _vert_key2 = _down_key2 - _up_key2;
    move_dir2 = point_direction(0, 0, _horiz_key2, _vert_key2);

 

    //get the x and y speed

 

    var _spd2 = 0;
    var _input_level2 = point_distance(0, 0, _horiz_key2, _vert_key2);
    _input_level2 = clamp( _input_level2, 0, 1 )
    _spd2 = move_spd2 * _input_level2;

 

    xspd2 = lengthdir_x(_spd2, move_dir2);
    yspd2 = lengthdir_y(_spd2, move_dir2);
    
    //collisions and move
    if place_meeting(x + xspd2, y, obj_wall)
    {
    xspd2 = 0;
    }
x += xspd2;
 if place_meeting(x, y + yspd2, obj_wall)
    {
    yspd2 = 0;
    }
    
    y += yspd2;
    


