list = collision_circle_list(x, y, clampRadius, obj_piece, false, true);
closestDist = clampRadius;
closestObj = noone;
if (list != noone)
{
    for (var i = 0; i < ds_list_size(list); i++)
    {
        obj = ds_list_find_value(list, i)
        if distance_to_object(obj) < closestDist && (obj.host != noone || obj.isCore)
        {
            closestDist = distance_to_object(obj);
            closestObj = obj;
        }
    }
}
if (closestObj != noone)
{
    if (closestObj.host == noone)
    {
        hostAttach(closestObj, self, closestObj, true);
    }
    else
    {
        hostAttach(closestObj.host, self, closestObj, false);
        closestObj.outside = false;
    }
}
