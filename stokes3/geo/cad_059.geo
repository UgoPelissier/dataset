//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.217965, -3.260271, 0.000000, 37.451016, 7.919473, 1.000000};
//+
l = [3.787653153245156, 3.787653153245156, 1.5075175904414915, 1.5075175904414915, 1.5075175904414915, 1.442364927049727, 1.442364927049727, 1.442364927049727, 3.787653153245156, 3.787653153245156];
//+
MeshSize {1} = 3.787653;
//+
MeshSize {2} = 3.787653;
//+
MeshSize {3} = 1.507518;
//+
MeshSize {4} = 1.507518;
//+
MeshSize {5} = 1.507518;
//+
MeshSize {6} = 1.442365;
//+
MeshSize {7} = 1.442365;
//+
MeshSize {8} = 1.442365;
//+
Cylinder(2) = {22.874394, 1.963440, 0.000000, 0.000000, 0.000000, 1.000000, 0.614533, 2*Pi};
//+
c0 = 0.06145328713788977;
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
