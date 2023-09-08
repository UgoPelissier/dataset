//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.186906, -3.535690, 0.000000, 36.986121, 7.795826, 0.000000};
//+
l = [0.9060472114751156, 0.9060472114751156, 3.737683328824204, 3.737683328824204, 3.737683328824204, 3.737683328824204, 0.7354011008223275, 0.7354011008223275];
//+
MeshSize {1} = 0.906047;
//+
MeshSize {2} = 0.906047;
//+
MeshSize {3} = 3.737683;
//+
MeshSize {4} = 3.737683;
//+
Disk(2) = {8.562670, 2.425848, 0.000000, 1.220256, 1.220256};
//+
c0 = 0.12202556588749491;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.899431, -0.165157, 0.000000, 0.710704, 0.710704};
//+
c1 = 0.07107039510517635;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
