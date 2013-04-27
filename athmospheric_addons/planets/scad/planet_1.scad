// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
    difference()
    {
        import("untitled.stl", convexity = 10);
        
        //pole slot
        modSlot( [0, 0, 45], [0,0,0], 5, 12, slack);
    }
}

load();
