//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.706419, -4.364035, 0.000000, 33.369575, 8.856528, 0.000000};
//+
l = [1.265691212993106, 3.436252126678493, 3.436252126678493, 1.4293824661505559];
//+
MeshSize {1} = 1.265691;
//+
MeshSize {2} = 3.436252;
//+
MeshSize {3} = 3.436252;
//+
MeshSize {4} = 1.429382;
//+
Disk(2) = {14.167920, -2.596429, 0.000000, 0.920144, 0.920144};
//+
c0 = 0.09201435177734257;
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
