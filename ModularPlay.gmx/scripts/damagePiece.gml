obj = argument0;
bullet = argument1;
obj.Health -= bullet.damage;
obj.xSpd += lengthdir_x(bullet.speed, bullet.direction) * .3;
obj.ySpd += lengthdir_y(bullet.speed, bullet.direction) * .3;
if (obj.health <= 0)
{
    with (obj)
    {
        if (obj.host != noone && obj.attached)
        {
            obj.host = noone;
            obj.xSpd += lengthdir_x(bullet.speed, bullet.direction);
            obj.ySpd += lengthdir_y(bullet.speed, bullet.direction);
        }
    }
}
