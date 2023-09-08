//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.167020, -3.289691, 0.000000, 32.815002, 8.227069, 0.000000};
//+
l = [3.323755373896534, 3.323755373896534, 0.9023574112562589, 0.3200464626533932, 0.9049404140662342, 0.6220425293650648, 3.323755373896534, 3.323755373896534];
//+
MeshSize {1} = 3.323755;
//+
MeshSize {2} = 3.323755;
//+
MeshSize {3} = 0.902357;
//+
MeshSize {4} = 0.320046;
//+
Disk(2) = {24.005369, 0.792842, 0.000000, 0.837835, 0.837835};
//+
c0 = 0.0837835151207933;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.729460, -1.157953, 0.000000, 0.688426, 0.688426};
//+
c1 = 0.06884260338908695;
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
