//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.995423, -3.387728, 0.000000, 36.188660, 7.886992, 1.000000};
//+
MeshSize {1} = 3.739261;
//+
MeshSize {2} = 3.739261;
//+
MeshSize {3} = 3.739261;
//+
MeshSize {4} = 3.739261;
//+
MeshSize {5} = 1.448086;
//+
MeshSize {6} = 1.448086;
//+
MeshSize {7} = 1.474431;
//+
MeshSize {8} = 1.474431;
//+
Cylinder(2) = {20.161031, 1.955781, 0.000000, 0.000000, 0.000000, 1.000000, 0.557165, 2*Pi};
//+
MeshSize {9} = 0.055717;
//+
MeshSize {10} = 0.055717;
//+
Cylinder(3) = {21.722108, 0.022481, 0.000000, 0.000000, 0.000000, 1.000000, 1.352720, 2*Pi};
//+
MeshSize {11} = 0.135272;
//+
MeshSize {12} = 0.135272;
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
Save "../geo_unrolled/cad_014.geo_unrolled";
