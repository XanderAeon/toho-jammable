/// @description Insert description here
// You can write your code in this editor
//var _m = matrix_transpose(matrix_get(matrix_view));
//_m[12] = x; _m[13] = y; _m[14] = 0;
//_m[10] = 0;
var mat = matrix_build(x, y, 0, -90, 90, 180, 4, 4, 2.5);
//The world matrix is what is used to transform drawing within "world" or "object" space.

matrix_set(matrix_world, mat);
draw_sprite_ext(sprite_index, -1, 0, 0, 1,1,0,c_white,1);
matrix_stack_pop();
matrix_set(matrix_world, matrix_stack_top());

