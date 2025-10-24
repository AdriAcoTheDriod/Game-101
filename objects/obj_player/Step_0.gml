

var playerspeed = 10;

if (keyboard_check(vk_right)) x += playerspeed;
if (keyboard_check(vk_left)) x -= playerspeed;
if (keyboard_check(vk_up)) y -= playerspeed;
if (keyboard_check(vk_down)) y += playerspeed;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// shooting

if (mouse_check_button(mb_left))
{
	instance_create_layer(mouse_x, mouse_y, layer, obj_bullet);
}