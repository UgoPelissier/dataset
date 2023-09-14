//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.144941, -3.306276, 0.000000, 34.404967, 8.468326, 1.000000};
//+
MeshSize {1} = 0.576516;
//+
MeshSize {2} = 0.576516;
//+
MeshSize {3} = 0.450345;
//+
MeshSize {4} = 0.450345;
//+
MeshSize {5} = 0.524531;
//+
MeshSize {6} = 0.524531;
//+
MeshSize {7} = 0.685616;
//+
MeshSize {8} = 0.685616;
//+
Cylinder(2) = {4.712767, 1.861518, 0.000000, 0.000000, 0.000000, 1.000000, 1.132021, 2*Pi};
//+
MeshSize {9} = 0.113202;
//+
MeshSize {10} = 0.113202;
//+
Cylinder(3) = {29.424477, -0.350767, 0.000000, 0.000000, 0.000000, 1.000000, 0.671201, 2*Pi};
//+
MeshSize {11} = 0.067120;
//+
MeshSize {12} = 0.067120;
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
Save "../geo_unrolled/cad_385.geo_unrolled";
