//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.897823, -4.597522, 0.000000, 31.295385, 9.993844, 0.000000};
//+
l = [0.5142133068537059, 3.2578702315919923, 3.2578702315919923, 0.35991726797391305];
//+
MeshSize {1} = 0.514213;
//+
MeshSize {2} = 3.257870;
//+
MeshSize {3} = 3.257870;
//+
MeshSize {4} = 0.359917;
//+
Disk(2) = {3.529957, 1.273676, 0.000000, 1.292079, 1.292079};
//+
c0 = 0.1292079364362964;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
