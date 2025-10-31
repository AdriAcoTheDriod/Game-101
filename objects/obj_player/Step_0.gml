

var playerspeed = 10;
//movements for player
if (keyboard_check(vk_right)) x += playerspeed;
if (keyboard_check(vk_left)) x -= playerspeed;
if (keyboard_check(vk_up)) y -= playerspeed;
if (keyboard_check(vk_down)) y += playerspeed;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// shooting bullet/eletric
if (keyboard_check(vk_right)) x += 4;
if (keyboard_check(vk_left)) x -= 4;
if (keyboard_check(vk_up)) y -= 4;
if (keyboard_check(vk_down)) y += 4;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button(mb_left))
{
	instance_create_layer(x, y, "bulletsLayer", obj_bullet);
}

if (mouse_check_button(mb_left)) && (cooldown < 1);
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
		cooldown = 3;
}
cooldown = cooldown - 1;