/// @description Insert description here
// You can write your code in this editor
if(other.owner != id){//this bullet is not yours, take damage.
	score+=10+ 10*((other.image_xscale-1)*3);
	hp -= 10+ 10*((other.image_xscale-1)*3);
	instance_destroy(other);
}
