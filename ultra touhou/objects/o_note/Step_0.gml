count += global.truetime;

if count >= 240 {
    hspd = hspd/(1.1*(global.xmod/8));
    if abs(hspd) <= .2 {
        hspd = 0;
    }
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    if y <= MELODYCHASER.bar {
		if tookdir && y <= -32 {
            instance_destroy();
        }
    }
}