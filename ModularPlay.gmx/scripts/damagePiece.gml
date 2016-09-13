obj = argument0;
bullet = argument1;
var hit = false;
if (instance_exists(obj) && ((!instance_exists(bullet.boss)) || (obj.host != bullet.boss.host || obj.object_index != obj_gun)))
{
    hit = true;
    //if ((obj.host != bullet.boss.host || !obj.attached) && )
    obj.Health -= bullet.damage;
    obj.xSpd += lengthdir_x(bullet.speed, bullet.direction) * .3;
    obj.ySpd += lengthdir_y(bullet.speed, bullet.direction) * .3;
    if (obj.Health <= 0)
    {
        if (obj.host != noone && obj.attached)
        {
            obj.attached = false;
            obj.grabbable = true;
            obj.Health = obj.RemoveHealth;
            obj.xSpd += lengthdir_x(bullet.speed, bullet.direction);
            obj.ySpd += lengthdir_y(bullet.speed, bullet.direction);
        }
        else
        {

            with (obj)
                instance_destroy();
        }
    }
}
return hit;
