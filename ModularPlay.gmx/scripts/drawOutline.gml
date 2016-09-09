switch(shape)
{
    case "Circle":
        draw_circle(x, y, height + buffer, false);
    break;
    case "Square":
        draw_rectangle(x - (height/2 + buffer/2),  y - (height/2 + buffer/2), x + (height/2 + buffer/2), y +(height/2 + buffer/2), false);
    break;
}
