//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.788562, -3.541701, 0.000000, 37.266692, 8.596797, 0.000000};
//+
l = [0.7489290256414369, 0.7223857333064401, 3.8297239716504317, 3.8297239716504317, 3.8297239716504317, 3.8297239716504317, 0.6538952950655066, 0.3648737835095072];
//+
MeshSize {1} = 0.748929;
//+
MeshSize {2} = 0.722386;
//+
MeshSize {3} = 3.829724;
//+
MeshSize {4} = 3.829724;
//+
Disk(2) = {7.343343, 1.626944, 0.000000, 0.858167, 0.858167};
//+
c0 = 0.08581674972504315;
//+
MeshSize {5} = c0;
//+
Disk(3) = {5.127267, 3.427225, 0.000000, 0.985302, 0.985302};
//+
c1 = 0.09853021331625132;
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
