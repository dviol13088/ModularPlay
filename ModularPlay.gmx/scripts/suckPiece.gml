var taking = argument0;
var giving = argument1;

if (taking.Health >= giving.damage)
{
    giving.Health += giving.damage;
    giving.Health = clamp(giving.Health, 0, giving.TopHealth);
    if (giving.Health > giving.MaxHealth)
    {
        giving.MaxHealth = giving.Health;
        giving.MaxHealth = clamp(giving.MaxHealth, 20, giving.TopHealth);
    }
}
else
{
    giving.Health += taking.Health;
}
var dir = point_direction(giving.x, giving.y, taking.x, taking.y);
taking.Health -= giving.damage;
taking.xSpd += lengthdir_x(1, dir);
taking.ySpd += lengthdir_y(1, dir);
if (taking.Health <= 0)
{
    if (taking.host != noone && taking.attached)
        {
            taking.attached = false;
            taking.Health = taking.RemoveHealth;
            taking.xSpd += lengthdir_x(1, dir);
            taking.ySpd += lengthdir_y(1, dir);
        }
        else
        {

            with (taking)
                instance_destroy();
        }
}
giving.canSuck = false;
giving.alarm[0] = suckTime;
