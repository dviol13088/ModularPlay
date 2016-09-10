switch(controlScheme)
{
    case 0:
        xSpd = (keyboard_check(vk_right) - keyboard_check(vk_left)) * spd;
        ySpd = (keyboard_check(vk_down) - keyboard_check(vk_up)) * spd;
    break;
    case 1:
        xSpd = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
        ySpd = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;
    break;
    default:
        xSpd = (keyboard_check(ord("L")) - keyboard_check(ord("J"))) * spd;
        ySpd = (keyboard_check(ord("K")) - keyboard_check(ord("I"))) * spd;
    break;
}
