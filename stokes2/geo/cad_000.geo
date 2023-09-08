//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.639427, -4.004003, 0.000000, 32.110866, 8.058027, 0.000000};
//+
l = [3.299719158925369, 0.8803388544383712, 0.7630339672203585, 3.299719158925369];
//+
MeshSize {1} = 3.299719;
//+
MeshSize {2} = 0.880339;
//+
MeshSize {3} = 0.763034;
//+
MeshSize {4} = 3.299719;
//+
Disk(2) = {24.119648, 1.423849, 0.000000, 1.392180, 1.392180};
//+
c0 = 0.13921795677048454;
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
