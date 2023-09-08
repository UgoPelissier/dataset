//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.960134, -4.748636, 0.000000, 35.812756, 9.785422, 0.000000};
//+
l = [3.7096955330219012, 3.7096955330219012, 0.9408703231128279, 0.4535230175158142, 0.7165406021402658, 0.3825582937655968, 3.7096955330219012, 3.7096955330219012];
//+
MeshSize {1} = 3.709696;
//+
MeshSize {2} = 3.709696;
//+
MeshSize {3} = 0.940870;
//+
MeshSize {4} = 0.453523;
//+
Disk(2) = {29.235078, 2.244038, 0.000000, 0.873131, 0.873131};
//+
c0 = 0.0873130514900324;
//+
MeshSize {5} = c0;
//+
Disk(3) = {34.914576, 0.523757, 0.000000, 1.055070, 1.055070};
//+
c1 = 0.1055069745640262;
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
