shootWait = false;
alarm[0] = random_range(shootWaitTime-wiggleRoom, shootWaitTime+wiggleRoom);
//show_message(string(y) + "|" + string(y - (lengthdir_y(height/2 + 15,angle)) ));
bullet = instance_create(x - lengthdir_x(15,angle ) , y - (lengthdir_y(20 + height/2, angle)), obj_bullet);
bullet.direction = angle - 180 % 360;

bullet.image_blend = bulletColor;
bullet.image_angle = bullet.direction;
bullet.boss = self;
