//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.435487, -3.353808, 0.000000, 39.219250, 8.175206, 0.000000};
//+
l = [3.986485531847088, 0.7459665938045061, 0.7858581941238196, 3.986485531847088];
//+
MeshSize {1} = 3.986486;
//+
MeshSize {2} = 0.745967;
//+
MeshSize {3} = 0.785858;
//+
MeshSize {4} = 3.986486;
//+
Disk(2) = {32.048928, 0.312071, 0.000000, 0.983498, 0.983498};
//+
c0 = 0.09834975038831961;
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
