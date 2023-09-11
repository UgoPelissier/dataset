//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.897823, -4.597522, 0.000000, 31.295385, 9.993844, 1.000000};
//+
l = [0.5142133068537059, 0.5142133068537059, 0.5142133068537059, 3.2578702315919923, 3.2578702315919923, 3.2578702315919923, 3.2578702315919923, 0.35991726797391305, 0.35991726797391305, 0.35991726797391305];
//+
MeshSize {1} = 0.514213;
//+
MeshSize {2} = 0.514213;
//+
MeshSize {3} = 0.514213;
//+
MeshSize {4} = 3.257870;
//+
MeshSize {5} = 3.257870;
//+
MeshSize {6} = 3.257870;
//+
MeshSize {7} = 3.257870;
//+
MeshSize {8} = 0.359917;
//+
Cylinder(2) = {3.529957, 1.273676, 0.000000, 0.000000, 0.000000, 1.000000, 1.292079, 2*Pi};
//+
c0 = 0.1292079364362964;
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
