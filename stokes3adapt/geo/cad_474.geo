//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.062194, -3.419196, 0.000000, 34.700337, 8.615410, 1.000000};
//+
MeshSize {1} = 0.841158;
//+
MeshSize {2} = 0.841158;
//+
MeshSize {3} = 0.870314;
//+
MeshSize {4} = 0.870314;
//+
MeshSize {5} = 1.380756;
//+
MeshSize {6} = 1.380756;
//+
MeshSize {7} = 1.622186;
//+
MeshSize {8} = 1.622186;
//+
Cylinder(2) = {12.837602, 0.226203, 0.000000, 0.000000, 0.000000, 1.000000, 1.088239, 2*Pi};
//+
MeshSize {9} = 0.108824;
//+
MeshSize {10} = 0.108824;
//+
Cylinder(3) = {18.039841, -0.906492, 0.000000, 0.000000, 0.000000, 1.000000, 0.763694, 2*Pi};
//+
MeshSize {11} = 0.076369;
//+
MeshSize {12} = 0.076369;
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
Save "../geo_unrolled/cad_474.geo_unrolled";
