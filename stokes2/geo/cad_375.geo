//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.149561, -4.422137, 0.000000, 34.609131, 9.036870, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {4.084717, -0.160486, 0.000000, 0.630329, 0.630329};
//+
c0 = 0.06303288407771644;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.933482, 1.348588, 0.000000, 1.022044, 1.022044};
//+
c1 = 0.10220442296615542;
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
