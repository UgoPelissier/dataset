//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.305191, -2.984235, 0.000000, 31.970764, 7.559161, 0.000000};
//+
l = [0.2820798104296362, 3.2496499690233906, 3.2496499690233906, 0.47630860325718133];
//+
MeshSize {1} = 0.282080;
//+
MeshSize {2} = 3.249650;
//+
MeshSize {3} = 3.249650;
//+
MeshSize {4} = 0.476309;
//+
Disk(2) = {3.498796, -0.494643, 0.000000, 1.228545, 1.228545};
//+
c0 = 0.12285450606527043;
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
