return (shootWait) && (player && (keyboard_check(vk_space) || (global.mobile && vstick_check(1)))) || (!player && (wantsToShoot));
