function c_dynamite() {
	if count = 0 {
		boom = false;
		var _create = function(this) {
			this.speed = 3;
			this.direction = -90;
		}
		var _step = function(this) {
			if this.y > 480 {
				boom = true;
			}
		}
		Bullet(_step, _create, x, y);
	}
	if boom {
		var _create = function(this) {
			this.speed = random(25)+17;
			this.direction = random(180);
		}
		var _step = function(this) {
			this.speed = this.speed/1.1;
			this.image_alpha = this.speed/4;
			if this.speed <= .5 {
				instance_destroy(this.id);
			}
		}
		Bullet(_step, _create, 320, 480);
		Bullet(_step, _create, 320, 480);
		Bullet(_step, _create, 320, 480);
	}
	if count % 15 = 0 {
		var _create = function(this) {
			this.speed = 3;
			this.direction = 0;
		}
		var _step = function(this) {
		}
		Bullet(_step, _create, 0, sin(count)*100+50+10);
		var _create = function(this) {
			this.speed = 3;
			this.direction = 180;
		}
		Bullet(_step, _create, 640, sin(count)*100+50+10);
	}
	hp -= 12;
}