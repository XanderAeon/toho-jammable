if !instance_exists(head) {
    instance_destroy();
	unusable = true;
}
layer_add_instance("backy", id);


if count > 2 {count += global.truetime;
} else {
	count += 1;
}
if count >= 135 {
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    x += hspd*global.truetime;
    /*if head.object_index = o_roll {
        image_blend = c_purple;
        colour = c_purple;
    }*/
}

if unusable = false {
    //image_alpha = head.image_alpha;
    if y <= o_melodychaser.bar-64 || y <= head.y+32 {
        with head {
            instance_destroy();
        }
        o_melodychaser.realscore += .2*(100/o_melodychaser.notecount);
        instance_destroy();
    }
} else if y <= -256 {
    instance_destroy();
}
image_index = 2;