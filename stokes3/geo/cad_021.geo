//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.729076, -3.199658, 0.000000, 39.112576, 7.746045, 1.000000};
//+
MeshSize {1} = 1.407463;
//+
MeshSize {2} = 1.407463;
//+
MeshSize {3} = 1.500890;
//+
MeshSize {4} = 1.500890;
//+
MeshSize {5} = 4.002946;
//+
MeshSize {6} = 4.002946;
//+
MeshSize {7} = 4.002946;
//+
MeshSize {8} = 4.002946;
//+
Cylinder(2) = {16.041097, -1.244769, 0.000000, 0.000000, 0.000000, 1.000000, 1.361673, 2*Pi};
//+
MeshSize {9} = 0.136167;
//+
MeshSize {10} = 0.136167;
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
Save "../geo_unrolled/cad_021.geo_unrolled";
