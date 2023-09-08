//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.053696, -3.738653, 0.000000, 38.333050, 8.351482, 0.000000};
//+
l = [3.861319884496075, 0.2712632165328163, 0.4473420696058481, 3.861319884496075];
//+
MeshSize {1} = 3.861320;
//+
MeshSize {2} = 0.271263;
//+
MeshSize {3} = 0.447342;
//+
MeshSize {4} = 3.861320;
//+
Disk(2) = {36.127412, -0.569171, 0.000000, 1.179695, 1.179695};
//+
c0 = 0.11796948580881589;
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
