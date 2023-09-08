//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.042416, -3.248678, 0.000000, 35.144611, 8.489028, 0.000000};
//+
l = [3.5442103983724467, 1.528380332109966, 0.9024405465239888, 0.9024405465239888, 0.9443480173154519, 0.9443480173154519, 3.5442103983724467, 1.611887768367371];
//+
MeshSize {1} = 3.544210;
//+
MeshSize {2} = 1.528380;
//+
MeshSize {3} = 0.902441;
//+
MeshSize {4} = 0.902441;
//+
Disk(2) = {25.868449, 0.489825, 0.000000, 1.016127, 1.016127};
//+
c0 = 0.10161266830947985;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.233435, -0.658221, 0.000000, 1.113134, 1.113134};
//+
c1 = 0.11131342792438925;
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
