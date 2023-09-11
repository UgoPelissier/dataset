//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.053611, -3.561629, 0.000000, 30.042223, 7.841337, 1.000000};
//+
MeshSize {1} = 1.474998;
//+
MeshSize {2} = 1.474998;
//+
MeshSize {3} = 0.535708;
//+
MeshSize {4} = 0.535708;
//+
MeshSize {5} = 1.474998;
//+
MeshSize {6} = 1.474998;
//+
MeshSize {7} = 1.508805;
//+
MeshSize {8} = 1.508805;
//+
Cylinder(2) = {14.896531, 1.448269, 0.000000, 0.000000, 0.000000, 1.000000, 0.915630, 2*Pi};
//+
MeshSize {9} = 0.091563;
//+
MeshSize {10} = 0.091563;
//+
Cylinder(3) = {25.277245, -0.088611, 0.000000, 0.000000, 0.000000, 1.000000, 0.582671, 2*Pi};
//+
MeshSize {11} = 0.058267;
//+
MeshSize {12} = 0.058267;
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
