//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.539296, -3.409714, 0.000000, 31.472215, 8.279291, 1.000000};
//+
l = [1.0355622426032338, 1.0355622426032338, 1.0355622426032338, 3.227806494827144, 3.227806494827144, 3.227806494827144, 3.227806494827144, 1.0354724323824305, 1.0354724323824305, 1.0354724323824305];
//+
MeshSize {1} = 1.035562;
//+
MeshSize {2} = 1.035562;
//+
MeshSize {3} = 1.035562;
//+
MeshSize {4} = 3.227806;
//+
MeshSize {5} = 3.227806;
//+
MeshSize {6} = 3.227806;
//+
MeshSize {7} = 3.227806;
//+
MeshSize {8} = 1.035472;
//+
Cylinder(2) = {10.822630, 0.731134, 0.000000, 0.000000, 0.000000, 1.000000, 0.730115, 2*Pi};
//+
c0 = 0.0730114732596577;
//+
MeshSize {9, 10} = c0;
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
