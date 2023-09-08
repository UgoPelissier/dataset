//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.072386, -4.459426, 0.000000, 39.397769, 9.507356, 0.000000};
//+
l = [3.975538404910645, 3.975538404910645, 1.645869140793062, 0.3385628740398482, 1.561568135364698, 0.4689521149458424, 3.975538404910645, 3.975538404910645];
//+
MeshSize {1} = 3.975538;
//+
MeshSize {2} = 3.975538;
//+
MeshSize {3} = 1.645869;
//+
MeshSize {4} = 0.338563;
//+
Disk(2) = {22.691150, 1.846251, 0.000000, 1.466055, 1.466055};
//+
c0 = 0.1466055455633106;
//+
MeshSize {5} = c0;
//+
Disk(3) = {37.940241, -0.391243, 0.000000, 0.960720, 0.960720};
//+
c1 = 0.09607204414645122;
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
