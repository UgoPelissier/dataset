//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.308540, -4.358629, 0.000000, 39.143788, 8.763611, 0.000000};
//+
l = [3.969491665138783, 1.3206672888323778, 1.3378493431462044, 3.969491665138783];
//+
MeshSize {1} = 3.969492;
//+
MeshSize {2} = 1.320667;
//+
MeshSize {3} = 1.337849;
//+
MeshSize {4} = 3.969492;
//+
Disk(2) = {25.812082, -0.257765, 0.000000, 1.036691, 1.036691};
//+
c0 = 0.10366907492889271;
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
