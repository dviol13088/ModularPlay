obj = argument0;
bullet = argument1;
var hit = false;
if (instance_exists(obj))
{
    if (obj.object_index == obj_deflect)
    {
        if (bullet.canDeflect && (!instance_exists(bullet.boss) || obj.host != bullet.boss.host))
        {
            bullet.direction -= irandom_range(180-variance, 180 + variance);
            bullet.canDeflect = false;
            bullet.alarm[1] = bullet.deflectTime;
            bullet.boss = noone;
        }
    }
    else if (((!instance_exists(bullet.boss)) || (obj.host != bullet.boss.host || obj.object_index != obj_gun)))
    {
        hit = true;
        //if ((obj.host != bullet.boss.host || !obj.attached) && )
        obj.Health -= bullet.damage;
        obj.xSpd += lengthdir_x(bullet.speed, bullet.direction) * .3;
        obj.ySpd += lengthdir_y(bullet.speed, bullet.direction) * .3;
        if (obj.Health <= 0)
        {
            if (obj.host != noone && !obj.grabbable)
            {
                obj.attached = false;
                obj.grabbable = true;
                obj.host = noone;
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
}
return hit;
