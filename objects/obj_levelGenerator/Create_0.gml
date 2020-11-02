//Level Size
levelWidth = 15
levelHeight = 5

//Room max size
maxRoomWidth = 4
maxRoomHeight = 4

//Room start min size
minRoomWidth = 3
minRoomHeight = 2

//Main script
var results = generate_level(levelWidth, levelHeight, maxRoomWidth, maxRoomHeight, minRoomWidth, minRoomHeight)

//Returns a grid with each space as the room it belongs to
levelGrid = results[0]

//Also returns a list of rooms with each item a map
//Map has x, y, width, and height of the room
levelList = results[1]

//The levelList can be stored and used to recreate a level 
//A seed should also be stored with it to generate random elements in the same manner for revisting a level
