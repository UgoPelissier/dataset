//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.920521, -2.955034, 0.000000, 36.437852, 7.655703, 1.000000};
//+
MeshSize {1} = 3.755397;
//+
MeshSize {2} = 3.755397;
//+
MeshSize {3} = 3.755397;
//+
MeshSize {4} = 3.755397;
//+
MeshSize {5} = 1.219215;
//+
MeshSize {6} = 1.219215;
//+
MeshSize {7} = 1.258517;
//+
MeshSize {8} = 1.258517;
//+
Cylinder(2) = {24.739716, 0.195046, 0.000000, 0.000000, 0.000000, 1.000000, 0.813753, 2*Pi};
//+
MeshSize {9} = 0.081375;
//+
MeshSize {10} = 0.081375;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_199.geo_unrolled";
