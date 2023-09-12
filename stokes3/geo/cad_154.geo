//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.344967, -4.245407, 0.000000, 30.700526, 8.539939, 1.000000};
//+
MeshSize {1} = 0.388143;
//+
MeshSize {2} = 0.388143;
//+
MeshSize {3} = 3.133776;
//+
MeshSize {4} = 3.133776;
//+
MeshSize {5} = 0.388143;
//+
MeshSize {6} = 0.388143;
//+
MeshSize {7} = 3.133776;
//+
MeshSize {8} = 3.133776;
//+
Cylinder(2) = {4.398376, -1.606445, 0.000000, 0.000000, 0.000000, 1.000000, 0.955333, 2*Pi};
//+
MeshSize {9} = 0.095533;
//+
MeshSize {10} = 0.095533;
//+
Cylinder(3) = {6.422298, -0.145811, 0.000000, 0.000000, 0.000000, 1.000000, 0.976163, 2*Pi};
//+
MeshSize {11} = 0.097616;
//+
MeshSize {12} = 0.097616;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_154.geo_unrolled";
