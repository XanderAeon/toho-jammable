function f_hitdetection() {
	///f_hitdetection(lane x, note direction, fx angle);
	var nonsense = argument1;
	//if instance_place(argument0, bar, o_note) != noone && instance_place(argument0, bar, o_note).dir = argument1 {
	var thenoteup = collision_line_first(argument0, bar, argument0, bar-bpm*global.xmod/20, o_note, false, true);
	var thenotedown = collision_line_first(argument0, bar, argument0, bar+bpm*global.xmod/20, o_note, false, true);
	if thenoteup != noone && thenotedown != noone {
	    if abs(thenoteup.x-bar) < abs(thenotedown.x-bar) {
	        thenote = thenoteup;
	    } else {
	        thenote = thenotedown;
	    }
	} else if thenoteup != noone {
	    thenote = thenoteup;
	} else if thenotedown != noone {
	    thenote = thenotedown;
	} else {
	    thenote = noone;
	}
	if thenote != noone {
	    infoalpha += .2;
	    infoalpha = clamp(infoalpha, 1.6, 4);
	    var distance = abs(thenote.y - bar);

    
	    noterank = floor(distance/((bpm*global.xmod)/50
    
	    ));
	    ranktext = noterank;
	    if thenote.object_index = o_freeze || thenote.object_index = o_roll {
	        with instance_create(argument0, bar, o_stay) {
	            tail = other.thenote.tail;
	            source = other.thenote.object_index;
	            image_angle = other.thenote.image_angle;
	            sprite_index = other.thenote.sprite_index;
	            with tail {
	                head = other.id;
	            }
	        }
	    }
	    combocolour[3] = combocolour[2];
	    combocolour[2] = combocolour[1];
	    combocolour[1] = combocolour[0];
	    if noterank < 3 {
	        combo++;
	        if global.controller {
	            rumble[thenote.dir] = .6;
	        }
	    } else {
	        combo = 0;
	    }
	    switch noterank {
	        case -1:
	            realscore += 100/notecount;
	            if comborank > 2
	                comborank = 2;
	            hp += .16;
	            combocolour[0] = c_yellow;
	            break;
	        case -2:
	            realscore += .7*(100/notecount);
	            if comborank > 1
	                comborank = 1;
	            hp += .12;
	            combocolour[0] = c_green;
	            break;
	        case -3:
	            comborank = 0;
	            combocolour[0] = c_blue;
	            break;
	        case 0:
	            realscore += 100/notecount;
	            hp += .2;
	            combocolour[0] = c_yellow;
	            break;
	        case 1:
	            realscore += 100/notecount;
	            if comborank > 2
	                comborank = 2;
	            hp += .16;
	            combocolour[0] = c_yellow;
	            break;
	        case 2:
	            realscore += .7*(100/notecount);
	            if comborank > 1
	                comborank = 1;
	            hp += .12;
	            combocolour[0] = c_green;
	            break;
	        case 3:
	            comborank = 0;
	            combocolour[0] = c_blue;
	            break;
	        case 4:
	            realscore -= 100/notecount*5;
	            comborank = 0;
	            hp -= 1;
	            combocolour[0] = c_red;
	            break;
	    }
	    instance_destroy(thenote);
	    bop[8] = 1.3;
	    var fx = instance_create(argument0, bar, o_hitfx);
	    fx.image_angle = argument2;
	}
}