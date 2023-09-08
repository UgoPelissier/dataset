//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.213701, -4.271845, 0.000000, 38.798107, 9.490062, 0.000000};
//+
l = [3.9299319361777294, 1.3254981814394542, 1.4526183992784012, 3.9299319361777294];
//+
MeshSize {1} = 3.929932;
//+
MeshSize {2} = 1.325498;
//+
MeshSize {3} = 1.452618;
//+
MeshSize {4} = 3.929932;
//+
Disk(2) = {24.692167, -1.564074, 0.000000, 1.318423, 1.318423};
//+
c0 = 0.13184234645366644;
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
