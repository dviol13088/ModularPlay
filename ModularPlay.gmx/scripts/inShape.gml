var inside = false;
switch (shape)
{
    case "Circle":
        inside = instance_place(x, y, obj_controller_ripple);
    break;
    case "Square":
        inside = instance_place(x, y, obj_controller_ripple);
    break;
    case "Triangle":
        inside = instance_place(x, y, obj_controller_ripple);
        //inside = point_in_triangle(mouse_x, mouse_y, x - (width/2 + buffer), y + height/2 + buffer, x + width/2 + buffer, y + height/2 + buffer, x, y - height/2 + buffer);
    break;
}
if (inside > 0)
    inside = true;
return inside;
