//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.332217, -3.541735, 0.000000, 37.708547, 8.323854, 0.000000};
//+
l = [1.2490958863654613, 1.2490958863654613, 3.8267759411873246, 1.1034983758216759, 3.8267759411873246, 1.1503624957907623, 1.1227938060164306, 1.1227938060164306];
//+
MeshSize {1} = 1.249096;
//+
MeshSize {2} = 1.249096;
//+
MeshSize {3} = 3.826776;
//+
MeshSize {4} = 1.103498;
//+
Disk(2) = {12.733622, 2.625972, 0.000000, 1.359508, 1.359508};
//+
c0 = 0.13595084671008353;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.436725, -0.074854, 0.000000, 1.075879, 1.075879};
//+
c1 = 0.10758792816249607;
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
