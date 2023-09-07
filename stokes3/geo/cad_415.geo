//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.301842, -4.519317, 0.000000, 31.917025, 9.639301, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {8.891026, 0.517275, 0.000000, 0.000000, 0.000000, 1.000000, 1.056323, 2*Pi};
//+
c0 = 0.10563230855067685;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.832172, -3.328308, 0.000000, 0.000000, 0.000000, 1.000000, 0.537736, 2*Pi};
//+
c1 = 0.05377363000837698;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
