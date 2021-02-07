/// @description Insert description here
// You can write your code in this editor
Page = function(_text, _spd, _onFinish)  constructor
{
	wait = false;
	text = _text;
	spd = _spd;
	onFinish = _onFinish;
}
Wait = function(howlong, func) constructor
{
	wait = true;
	text = string_repeat(" ",howlong);
	spd = 60;
	onFinish = func
}
var wordspeed = 90;
vn = {
	pages : 	 [new Wait(0,function(){}),
new Page("Ah, what fun.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Page("I ought to be going now.", wordspeed, function(){mam.image_index = mamEmotion.Neutral; o_vn.talking = 1}),
new Page("I suppose so.", wordspeed, function(){sum.image_index = sumEmotion.Smug; o_vn.talking = 0}),
new Page("How did you like them? The games you can play by pretending to be a human.", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),
new Page("Nothing special, nothing bad. Humans are talented at making trinkets.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Page("I much prefer the game you choose to play while pretending to be a youkai.", wordspeed, function(){o_vn.talking = 1}),
new Page("Of course. Imitation magic in pixels can't match the real thing.", wordspeed, function(){sum.image_index = sumEmotion.Smug2; o_vn.talking = 0}),
new Page("Good day, Ms. tanuki.", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),
new Page("Seeya, kid-", wordspeed, function(){mam.image_index = mamEmotion.Neutral; o_vn.talking = 1}),
new Page("Wait, that's not...", wordspeed, function(){mam.image_index = mamEmotion.Confused; o_vn.talking = 1; sum.image_alpha -= .02;}),
new Wait(20,function(){}),
new Page("Ah, whatever.", wordspeed, function(){mam.image_index = mamEmotion.Sans; o_vn.talking = 1}),
new Wait(20,function(){game_end()})




/*
new Page("", wordspeed, function(){o_vn.talking = 0}),
new Page("", wordspeed, function(){o_vn.talking = 1}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.; o_vn.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.; o_vn.talking = 1}),
new Wait(20,function(){}),
*/

//talking 0 = sum, 1 = mam
],
	onPage:  0,
	onWord: 0,
	onFinish : function(){room = room_danmaku}
}
reading = true;
draw_set_font(ft_ronaldo);
talking = 0;
