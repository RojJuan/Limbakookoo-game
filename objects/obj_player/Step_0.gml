var _right_key = keyboard_check( ord("D") );
var _left_key = keyboard_check( ord("A") );
var _up_key = keyboard_check( ord("W") );
var _down_key = keyboard_check( ord("S") );

 //player dead?
 if player_health <= 0{
	 game_restart();
 }

//player movement
    //get the direction

 

    var _horiz_key = _right_key - _left_key;
    var _vert_key = _down_key - _up_key;
    move_dir = point_direction(0, 0, _horiz_key, _vert_key);

 

    //get the x and y speed

 

    var _spd = 0;
    var _input_level = point_distance(0, 0, _horiz_key, _vert_key);
    _input_level = clamp( _input_level, 0, 1 )
    _spd = move_spd * _input_level;

 

    xspd = lengthdir_x(_spd, move_dir);
    yspd = lengthdir_y(_spd, move_dir);
    
    //collisions and move
    if place_meeting(x + xspd, y, obj_wall)
    {
    xspd = 0;
    }
x += xspd;
 if place_meeting(x, y + yspd, obj_wall)
    {
    yspd = 0;
    }
    
    y += yspd;
    
 