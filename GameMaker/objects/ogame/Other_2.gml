#macro TS 32


var _w = cell(room_width / TS);
var _h = cell(room_height / TS); 

// Create motion planning grid

global.mp_grid = mp_grid_create(0, 0, _w,_h, TS, TS);

// add solid instances 

mp_grid_add_instances(global.mp_grid, oWall, false);
