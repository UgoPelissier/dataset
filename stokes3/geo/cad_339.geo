//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615993, -4.134026, 0.000000, 31.140298, 8.326287, 1.000000};
//+
MeshSize {1} = 1.013164;
//+
MeshSize {2} = 1.013164;
//+
MeshSize {3} = 0.738759;
//+
MeshSize {4} = 0.738759;
//+
MeshSize {5} = 1.013164;
//+
MeshSize {6} = 1.013164;
//+
MeshSize {7} = 3.202802;
//+
MeshSize {8} = 3.202802;
//+
Cylinder(2) = {10.731621, 1.436059, 0.000000, 0.000000, 0.000000, 1.000000, 1.416163, 2*Pi};
//+
MeshSize {9} = 0.141616;
//+
MeshSize {10} = 0.141616;
//+
Cylinder(3) = {25.317842, 1.212742, 0.000000, 0.000000, 0.000000, 1.000000, 0.981496, 2*Pi};
//+
MeshSize {11} = 0.098150;
//+
MeshSize {12} = 0.098150;
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
Save "../geo_unrolled/cad_339.geo_unrolled";
