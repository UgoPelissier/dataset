//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.734200, -3.052680, 0.000000, 39.019542, 7.826915, 0.000000};
//+
l = [1.361661245971814, 3.9945902127459085, 3.9945902127459085, 1.382025345163706];
//+
MeshSize {1} = 1.361661;
//+
MeshSize {2} = 3.994590;
//+
MeshSize {3} = 3.994590;
//+
MeshSize {4} = 1.382025;
//+
Disk(2) = {14.730359, 0.482539, 0.000000, 0.819116, 0.819116};
//+
c0 = 0.08191158864031572;
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
