//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.217965, -3.260271, 0.000000, 37.451016, 7.919473, 0.000000};
//+
l = [3.787653153245156, 1.5075175904414915, 1.442364927049727, 3.787653153245156];
//+
MeshSize {1} = 3.787653;
//+
MeshSize {2} = 1.507518;
//+
MeshSize {3} = 1.442365;
//+
MeshSize {4} = 3.787653;
//+
Disk(2) = {22.874394, 1.963440, 0.000000, 0.614533, 0.614533};
//+
c0 = 0.06145328713788977;
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
