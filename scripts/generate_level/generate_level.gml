function generate_level(width, height, maxWidth, maxHeight)
{
	//Grid of rooms to find empty spaces
	var levelGrid = ds_grid_create(width, height)	
	var levelGridFull = 0
	
	//List of the rooms with attributes
	var levelList = ds_list_create()
	var currentRoom = 0
	
	//Fill empty level with -1
	for(var i = 0; i < width; i++)
		{
			for(var j = 0; j < height; j++)
			{
				ds_grid_add(levelGrid,i,j,-1)
			}
		}
	
	//Main level generation loop
	while(!levelGridFull)
	{
		//Find random empty space to create room
		var xx = irandom(width - 1)
		var yy = irandom(height - 1)
		if(ds_grid_get(levelGrid, xx, yy) == -1)
		{
			var roomMap	= ds_map_create()
			var dimensionsFound = 0
			
			//Start looking for rooms of max size
			var currentMaxW = maxWidth
			var currentMinW = maxWidth
			var currentMaxH = maxHeight
			var currentMinH = maxHeight
			
			//Shrink the size targets after maxAttempts reached
			var attempts = 0
			var maxAttempts = 1000
			
			//Set room size and check for empty area
			while(!dimensionsFound)
			{
				var currentRoomW = irandom_range(currentMinW, currentMaxW) 
				var currentRoomH = irandom_range(currentMinH, currentMaxH) 
				var occupied = 0
				
				//Check spaces from the random xx and yy through xx + room width and yy + room height
				//If occupied, break and find a new spot
				for(var i = xx; i < xx + currentRoomW && i < width; i++)
				{
					for(var j = yy; j < yy + currentRoomH && j < height; j++)
					{
						if(ds_grid_get(levelGrid, i, j) != -1)
						{
							occupied = 1
							break
						}
					}
					if(occupied)
						break
				}
				
				
				if(occupied)
				{
					attempts++
					//Once attempts reach max, shrink min until it reaches 1, then shrink max until 1
					if(attempts > maxAttempts && (currentMinW > 1 || currentMinH > 1))
					{
						if(currentMinH > 1 && currentMinW > 1)
						{
							if(irandom(1))
								currentMinH--
							else
								currentMinW--
						}
						else if(currentMinH > 1)
							currentMinH--
						else
							currentMinW--
						attempts = 0
					}
					else if(attempts > maxAttempts && (currentMaxW > 1 || currentMaxH > 1))
					{
						if(currentMaxH > 1 && currentMaxW > 1)
						{
							if(irandom(1))
								currentMaxH--
							else
								currentMaxW--
						}
						else if(currentMaxH > 1)
							currentMaxH--
						else
							currentMaxW--
						attempts = 0
					}
				}
				//If not occupied, set the grid values and save the room info to the level list
				else
				{
					for(var i = xx; i < xx + currentRoomW && i < width; i++)
					{
						for(var j = yy; j < yy + currentRoomH && j < height; j++)
						{
							ds_grid_set(levelGrid,i,j,currentRoom)
						}
					}
					ds_map_add(roomMap,"x",xx)
					ds_map_add(roomMap,"y",yy)
					
					//If it goes past boundries, shrink the width or height to fit
					if(xx + currentRoomW >= width)
						currentRoomW = width - xx
						
					if(yy + currentRoomH >= height)
						currentRoomH = height - yy
						
					ds_map_add(roomMap,"width",currentRoomW)
					ds_map_add(roomMap,"height",currentRoomH)
					ds_list_add(levelList,roomMap)
					
					currentRoom++
					dimensionsFound = 1
				}
			}			
		}
		
		
		//Check the level grid, if no spaces equal -1 then the grid is full
		levelGridFull = 1
		for(var i = 0; i < width; i++)
		{
			for(var j = 0; j < height; j++)
			{
				
				if(ds_grid_get(levelGrid,i,j) == -1)
				{
					levelGridFull = 0	
					break
				}
			}
			if(!levelGridFull)
				break
		}
	}
	var results = []
	results[0] = levelGrid
	results[1] = levelList
	return results
}
