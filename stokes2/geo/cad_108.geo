//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.940292, -3.672935, 0.000000, 31.397927, 7.562562, 0.000000};
//+
l = [3.2558539495836927, 0.4164380911901946, 0.3658897383949499, 3.2558539495836927];
//+
MeshSize {1} = 3.255854;
//+
MeshSize {2} = 0.416438;
//+
MeshSize {3} = 0.365890;
//+
MeshSize {4} = 3.255854;
//+
Disk(2) = {28.594580, 0.464397, 0.000000, 1.415256, 1.415256};
//+
c0 = 0.14152559087431596;
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
