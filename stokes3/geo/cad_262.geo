//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.653675, -4.429040, 0.000000, 35.879690, 9.588673, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {18.875434, -1.185843, 0.000000, 0.000000, 0.000000, 1.000000, 1.407242, 2*Pi};
//+
MeshSize {9} = 0.140724;
//+
MeshSize {10} = 0.140724;
//+
Cylinder(3) = {2.816292, 1.375754, 0.000000, 0.000000, 0.000000, 1.000000, 0.711517, 2*Pi};
//+
MeshSize {11} = 0.071152;
//+
MeshSize {12} = 0.071152;
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
Save "../geo_unrolled/cad_262.geo_unrolled";
