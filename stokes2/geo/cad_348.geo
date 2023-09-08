//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.570638, -4.017679, 0.000000, 33.604141, 9.369672, 0.000000};
//+
l = [3.4494394179191854, 3.4494394179191854, 0.4434513665672555, 0.4434513665672555, 0.7791547680127442, 0.7791547680127442, 3.4494394179191854, 3.4494394179191854];
//+
MeshSize {1} = 3.449439;
//+
MeshSize {2} = 3.449439;
//+
MeshSize {3} = 0.443451;
//+
MeshSize {4} = 0.443451;
//+
Disk(2) = {28.754294, -2.005785, 0.000000, 1.347301, 1.347301};
//+
c0 = 0.13473010914205488;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.623637, 0.212973, 0.000000, 0.525272, 0.525272};
//+
c1 = 0.05252721412544721;
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
