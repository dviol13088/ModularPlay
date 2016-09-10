switch(shape)
{
    //Circle
    case "Circle":
        draw_circle(x - random_range(-wiggle, wiggle), y - random_range(-wiggle, wiggle), height/2 * scale, false);
    break;
    case "Square":
        draw_rectangle(x - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
    break;
    case "Triangle":
        shader_set_uniform_f(con.uni_wave_amount, random_range(minWaveAmt/2, maxWaveAmt/2));
        shader_set_uniform_f(con.uni_wave_distortion, random_range(minWaveDistortion*2, maxWaveDistortion*1.5) );
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * scale, image_yscale * scale, image_angle, c_white, 1);
        //draw_self();
    /*
            dirX = lengthdir_x(((width/2 + random_range(-wiggle/2, wiggle/2)) * scale), angle - 270);
            dirY = lengthdir_y((height/2 +random_range(-wiggle/2, wiggle/2)) * scale, angle - 270);
        draw_triangle(x - dirX, y + dirY, x + dirX, y + dirY, x + (random_range(-wiggle/2, wiggle/2) * scale), y - dirY, false);

        if (angle < 25 || angle > 340)
        {
            draw_triangle(x - ((width/2 + random_range(-wiggle/2, wiggle/2)) * scale), y + ((random_range(-wiggle/2, wiggle/2)) * scale), x + ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
        }
        else if (angle < 75)
        {
            
        }
        else if (angle < 115)
        {
            draw_triangle(x - ((width/2 + random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + (random_range(-wiggle/2, wiggle/2) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
        }
        else if (angle < 160)
        {
            
        }
        else if (angle < 205)
        {
            draw_triangle(x + ((width/2 + random_range(-wiggle/2, wiggle/2)) * scale), y + ((random_range(-wiggle/2, wiggle/2)) * scale), x - ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x - ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
        }
        else if (angle < 250)
        {
        }
        else if (angle < 295)
        {
            draw_triangle(x - ((width/2 + random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + ((width/2 +random_range(-wiggle/2, wiggle/2)) * scale), y + ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), x + (random_range(-wiggle/2, wiggle/2) * scale), y - ((height/2 +random_range(-wiggle/2, wiggle/2)) * scale), false);
        }
        else if (angle < 340)
        {
            
        }*/
    break;
}
