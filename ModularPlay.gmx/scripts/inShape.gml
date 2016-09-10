var inside = false;
switch (shape)
{
    case "Circle":
        inside = point_in_circle(mouse_x, mouse_y, x, y, height/2 + buffer);
    break;
    case "Square":
        inside = point_in_rectangle(mouse_x, mouse_y, x - (height/2 + buffer), y - (height/2 + buffer), x + (height/2 + buffer), y + (height/2 + buffer));
    break;
    case "Triangle":
        inside = instance_place(x, y, obj_controller_ripple);
        //inside = point_in_triangle(mouse_x, mouse_y, x - (width/2 + buffer), y + height/2 + buffer, x + width/2 + buffer, y + height/2 + buffer, x, y - height/2 + buffer);
    break;
}
return inside;
