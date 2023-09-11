//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.003473, -4.569139, 0.000000, 32.980157, 9.183750, 1.000000};
//+
MeshSize {1} = 3.330173;
//+
MeshSize {2} = 3.330173;
//+
MeshSize {3} = 3.330173;
//+
MeshSize {4} = 3.330173;
//+
MeshSize {5} = 1.446965;
//+
MeshSize {6} = 1.446965;
//+
MeshSize {7} = 1.431154;
//+
MeshSize {8} = 1.431154;
//+
Cylinder(2) = {17.957784, 0.293270, 0.000000, 0.000000, 0.000000, 1.000000, 1.323360, 2*Pi};
//+
MeshSize {9} = 0.132336;
//+
MeshSize {10} = 0.132336;
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
