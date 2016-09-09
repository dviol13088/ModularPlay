switch(shape)
{
    //Circle
    case "Circle":
        draw_circle(x - random_range(-wiggle, wiggle), y - random_range(-wiggle, wiggle), height * scale, false);
    break;
    case "Square":
        draw_rectangle(x - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
    break;
}
