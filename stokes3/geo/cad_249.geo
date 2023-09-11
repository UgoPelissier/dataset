//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.053696, -3.738653, 0.000000, 38.333050, 8.351482, 1.000000};
//+
l = [3.861319884496075, 3.861319884496075, 0.2712632165328163, 0.2712632165328163, 0.2712632165328163, 0.4473420696058481, 0.4473420696058481, 0.4473420696058481, 3.861319884496075, 3.861319884496075];
//+
MeshSize {1} = 3.861320;
//+
MeshSize {2} = 3.861320;
//+
MeshSize {3} = 0.271263;
//+
MeshSize {4} = 0.271263;
//+
MeshSize {5} = 0.271263;
//+
MeshSize {6} = 0.447342;
//+
MeshSize {7} = 0.447342;
//+
MeshSize {8} = 0.447342;
//+
Cylinder(2) = {36.127412, -0.569171, 0.000000, 0.000000, 0.000000, 1.000000, 1.179695, 2*Pi};
//+
c0 = 0.11796948580881589;
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
