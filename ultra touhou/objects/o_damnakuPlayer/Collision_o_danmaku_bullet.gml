/// @description Insert description here
// You can write your code in this editor
if(other.owner != id){//this bullet is not yours, take damage.
	score -= 1000;
	instance_destroy(other);
}
