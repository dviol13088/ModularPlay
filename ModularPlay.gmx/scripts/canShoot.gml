return (shootWait && instance_exists(host)) && ((host.player && (keyboard_check(vk_space) || (global.mobile && vstick_check(1)))) || (!host.player && (canSeePlayer())));
