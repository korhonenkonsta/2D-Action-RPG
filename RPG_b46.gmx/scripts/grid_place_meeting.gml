/// grid_place_meeting(x,y)
var xx = argument[0];
var yy = argument[1];

// Remember our position
var xp = x;
var yp = y;

// Update the position for the box calculations
x = xx;
y = yy;

// Check for x meeting
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT]!= FLOOR) or 
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT]!= FLOOR);

// Check for y meeting
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT]!= FLOOR) or 
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT]!= FLOOR);
                
// Move back
x = xp;
y = yp;

// Return true or false
return x_meeting or y_meeting;
