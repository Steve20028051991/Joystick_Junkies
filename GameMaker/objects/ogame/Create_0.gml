// Initialize grid variable
global.mp_grid = 0;

// Clean up old grid if it exists
if (global.mp_grid != noone) {
    mp_grid_destroy(global.mp_grid);
}

// Grid cell size
var TS = 32;

var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);

// Create motion planning grid
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS);

// add solid instances
mp_grid_add_instances(global.mp_grid, oWall, true);

show_debug_message("Grid created in Create: " + string(_w) + "x" + string(_h) + " cells");
show_debug_message("Wall count: " + string(instance_number(oWall)));
