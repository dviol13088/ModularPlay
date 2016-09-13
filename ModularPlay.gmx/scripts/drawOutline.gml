switch(shape)
{
    case "Circle":
        draw_circle_colour(x, y, (height/2 + buffer) * maxScale, outlineColor, outlineColor, false);
    break;
    case "Square":
        draw_rectangle_colour(x - (height/2 + buffer/2) * maxScale,  y - (height/2 + buffer/2) * maxScale, x + (height/2 + buffer/2) * maxScale, y +(height/2 + buffer/2) * maxScale, outlineColor, outlineColor, outlineColor, outlineColor, false);
    break;
    case "Triangle":
        draw_sprite_ext(spr_background, 0, x, y, image_xscale, image_yscale, image_angle, c_white, draw_get_alpha());
        //draw_triangle(x - (width/2 + buffer/2), y + (height/2 + buffer/2), x + (width/2 + buffer/2), y + (height/2 + buffer/2), x, y - (height/2 + buffer/2), true);
    break;
}
