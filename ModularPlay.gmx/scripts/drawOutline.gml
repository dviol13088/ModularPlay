switch(shape)
{
    case "Circle":
        draw_circle(x, y, height + buffer, false);
    break;
    case "Square":
        draw_rectangle(x - (height/2 + buffer/2),  y - (height/2 + buffer/2), x + (height/2 + buffer/2), y +(height/2 + buffer/2), false);
    break;
    case "Triangle":
        draw_sprite_ext(spr_background, 0, x, y, image_xscale, image_yscale, image_angle, c_white, draw_get_alpha());
        //draw_triangle(x - (width/2 + buffer/2), y + (height/2 + buffer/2), x + (width/2 + buffer/2), y + (height/2 + buffer/2), x, y - (height/2 + buffer/2), true);
    break;
}
