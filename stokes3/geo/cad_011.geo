//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.897823, -4.597522, 0.000000, 31.295385, 9.993844, 1.000000};
//+
MeshSize {1} = 0.514213;
//+
MeshSize {2} = 0.514213;
//+
MeshSize {3} = 0.359917;
//+
MeshSize {4} = 0.359917;
//+
MeshSize {5} = 3.257870;
//+
MeshSize {6} = 3.257870;
//+
MeshSize {7} = 3.257870;
//+
MeshSize {8} = 3.257870;
//+
Cylinder(2) = {3.529957, 1.273676, 0.000000, 0.000000, 0.000000, 1.000000, 1.292079, 2*Pi};
//+
MeshSize {9} = 0.129208;
//+
MeshSize {10} = 0.129208;
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
