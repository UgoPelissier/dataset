//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.298791, -4.724680, 0.000000, 37.355953, 9.749218, 1.000000};
//+
MeshSize {1} = 3.796896;
//+
MeshSize {2} = 3.796896;
//+
MeshSize {3} = 3.796896;
//+
MeshSize {4} = 3.796896;
//+
MeshSize {5} = 0.950867;
//+
MeshSize {6} = 0.950867;
//+
MeshSize {7} = 0.651510;
//+
MeshSize {8} = 0.651510;
//+
Cylinder(2) = {30.328254, 2.947810, 0.000000, 0.000000, 0.000000, 1.000000, 1.100033, 2*Pi};
//+
MeshSize {9} = 0.110003;
//+
MeshSize {10} = 0.110003;
//+
Cylinder(3) = {24.872100, 1.762227, 0.000000, 0.000000, 0.000000, 1.000000, 1.221283, 2*Pi};
//+
MeshSize {11} = 0.122128;
//+
MeshSize {12} = 0.122128;
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
Save "../geo_unrolled/cad_214.geo_unrolled";
