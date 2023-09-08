//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.831345, -3.185826, 0.000000, 37.259092, 7.913848, 0.000000};
//+
l = [1.485648947352147, 3.8295412950055336, 3.8295412950055336, 1.5569464248752338];
//+
MeshSize {1} = 1.485649;
//+
MeshSize {2} = 3.829541;
//+
MeshSize {3} = 3.829541;
//+
MeshSize {4} = 1.556946;
//+
Disk(2) = {16.671171, -0.705451, 0.000000, 1.176363, 1.176363};
//+
c0 = 0.11763629221885329;
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
