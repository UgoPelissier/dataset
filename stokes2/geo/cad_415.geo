//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.301842, -4.519317, 0.000000, 31.917025, 9.639301, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {8.891026, 0.517275, 0.000000, 1.056323, 1.056323};
//+
c0 = 0.10563230855067685;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.832172, -3.328308, 0.000000, 0.537736, 0.537736};
//+
c1 = 0.05377363000837698;
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
