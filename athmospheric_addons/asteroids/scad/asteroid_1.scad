// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
    difference()
    {
        import("asteroid_5.stl", convexity = 10);
        
        //pole slot
        modSlot( [0,0, 2], [0,0,0], 1.5, 7, slack);
    }
}

load();
