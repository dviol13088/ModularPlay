if (dir != -1)
{
    xSpd = lengthdir_x(spd, dir) * .9;
    ySpd = lengthdir_y(spd, dir) * .9;
}
else
{
    xSpd = 0;
    ySpd = 0;
}
if (canSeePlayer())
{
    dir = point_direction(x, y, global.player.x, global.player.y);
    angle = dir + 180;
    playerDir = true;
}
else if (playerDir)
{
    dir = -1;
    alarm[0] = irandom_range(changeSpeedMin, changeSpeedMax);
    playerDir = false;
}
