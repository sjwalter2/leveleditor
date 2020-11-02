var width = ds_grid_width(levelGrid)
var height = ds_grid_height(levelGrid)
var space = 40
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//draw map based on the levelGrid
for(var i = 0; i < width; i++)
	for(var j = 0; j < height; j++)
	{
		var currentRoom = ds_grid_get(levelGrid,i,j)
		draw_set_color(make_color_hsv(ds_grid_get(levelGrid,i,j)*10 mod 255 ,155,255))
		draw_rectangle(space*i, space*j,space*(i+1), space*(j+1), 0)
		draw_set_color(c_black)
		draw_text(space/2  + space*i, space/2 + space*j, currentRoom)
	}
draw_set_color(c_white)
draw_text(space*i/2,space*(j+1), "levelGrid Map")

//draw map based on the levelList
var startX = (i + 1)*space
for(var i = 0; i < ds_list_size(levelList); i++)
{
	var currentRoom = ds_list_find_value(levelList, i)	
	var xx = ds_map_find_value(currentRoom, "x")
	var yy = ds_map_find_value(currentRoom, "y")
	var ww = ds_map_find_value(currentRoom, "width")
	var hh = ds_map_find_value(currentRoom, "height")
	
	draw_set_color(make_color_hsv(i*10 mod 255 ,155,255))
	draw_rectangle(startX + xx*space, yy*space, startX + (xx+ww)*space - 1, (yy+hh)*space - 1,0)
	draw_set_color(make_color_hsv(i*10 mod 255 ,155,100))
	draw_rectangle(startX + xx*space + 1, yy*space + 1, startX + (xx+ww)*space - 2, (yy+hh)*space - 2,1)
	//draw_set_color(c_black)
	draw_text(startX + (xx+ww/2)*space,(yy+hh/2)*space, i)
}
draw_set_color(c_white)
draw_text(startX + space*width/2, space*(j+1), "levelList Map")

