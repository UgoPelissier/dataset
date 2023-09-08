//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.394322, -4.332112, 0.000000, 30.431129, 8.928601, 0.000000};
//+
l = [0.30268553495289136, 0.30268553495289136, 3.114704509621648, 3.114704509621648, 3.114704509621648, 1.4876151568929923, 0.5025582311196913, 0.5025582311196913];
//+
MeshSize {1} = 0.302686;
//+
MeshSize {2} = 0.302686;
//+
MeshSize {3} = 3.114705;
//+
MeshSize {4} = 3.114705;
//+
Disk(2) = {1.520037, -0.900081, 0.000000, 0.585079, 0.585079};
//+
c0 = 0.05850789874682354;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.468924, 2.444876, 0.000000, 0.630375, 0.630375};
//+
c1 = 0.06303751748951741;
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
