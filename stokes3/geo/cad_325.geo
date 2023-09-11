//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.355283, -3.990903, 0.000000, 32.715569, 9.470226, 1.000000};
//+
MeshSize {1} = 0.994676;
//+
MeshSize {2} = 0.994676;
//+
MeshSize {3} = 0.479714;
//+
MeshSize {4} = 0.479714;
//+
MeshSize {5} = 0.994676;
//+
MeshSize {6} = 0.994676;
//+
MeshSize {7} = 3.340812;
//+
MeshSize {8} = 3.340812;
//+
Cylinder(2) = {10.956940, -2.267558, 0.000000, 0.000000, 0.000000, 1.000000, 0.794051, 2*Pi};
//+
MeshSize {9} = 0.079405;
//+
MeshSize {10} = 0.079405;
//+
Cylinder(3) = {28.150369, -0.279025, 0.000000, 0.000000, 0.000000, 1.000000, 1.366393, 2*Pi};
//+
MeshSize {11} = 0.136639;
//+
MeshSize {12} = 0.136639;
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
Save "../geo_unrolled/cad_325.geo_unrolled";
