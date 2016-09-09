var host = argument0;
var lostPiece = argument1;
with (lostPiece)
{
    if (outside)
    {
        grabbed = true;
        if (positionX > width)
        {
            obj = instance_nearest(x - width, y, obj_piece);
            obj.outside = true;
        }
        else if (positionX < - width)
        {
            obj = instance_nearest(x + width, y, obj_piece);
            obj.outside = true;
        }
        if (positionY > height)
        {
            obj = instance_nearest(x, y - height, obj_piece);
            obj.outside = true;
        }
        else if (positionY < - height)
        {
            obj = instance_nearest(x, y + height, obj_piece);
            obj.outside = true;
        }
        attached = false;
        host = noone;
    }
}
