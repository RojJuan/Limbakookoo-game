direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 1;
if obj_player.x > x+1 {
image_xscale = -2;
}

if obj_player.x < x-1{
image_xscale = 2;
}

if (place_meeting(x,y,obj_player)){
	speed = 0;
sprite_index = spr_crow_attack;	
}
else{
	speed = 2;
sprite_index = spr_crow_fly;
}