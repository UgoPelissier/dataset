//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.654343, -4.295210, 0.000000, 37.077167, 9.372727, 0.000000};
//+
l = [3.8021426361909607, 1.2840146109661035, 1.0564726444247015, 1.0564726444247015, 1.019192947013815, 1.019192947013815, 3.8021426361909607, 1.183780297138904];
//+
MeshSize {1} = 3.802143;
//+
MeshSize {2} = 1.284015;
//+
MeshSize {3} = 1.056473;
//+
MeshSize {4} = 1.056473;
//+
Disk(2) = {27.706756, 0.831589, 0.000000, 0.694926, 0.694926};
//+
c0 = 0.06949256846305156;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.730861, 1.783427, 0.000000, 0.679917, 0.679917};
//+
c1 = 0.0679916652390881;
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
