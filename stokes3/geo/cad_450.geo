//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.569158, -4.343188, 0.000000, 29.917664, 9.109110, 1.000000};
//+
MeshSize {1} = 0.718983;
//+
MeshSize {2} = 0.718983;
//+
MeshSize {3} = 0.199119;
//+
MeshSize {4} = 0.199119;
//+
MeshSize {5} = 0.267829;
//+
MeshSize {6} = 0.267829;
//+
MeshSize {7} = 0.512859;
//+
MeshSize {8} = 0.512859;
//+
Cylinder(2) = {29.020412, -1.080423, 0.000000, 0.000000, 0.000000, 1.000000, 0.898858, 2*Pi};
//+
MeshSize {9} = 0.089886;
//+
MeshSize {10} = 0.089886;
//+
Cylinder(3) = {2.719068, 3.209557, 0.000000, 0.000000, 0.000000, 1.000000, 0.662941, 2*Pi};
//+
MeshSize {11} = 0.066294;
//+
MeshSize {12} = 0.066294;
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
Save "../geo_unrolled/cad_450.geo_unrolled";
