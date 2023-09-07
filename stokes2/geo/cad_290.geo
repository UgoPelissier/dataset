//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.492029, -4.579671, 0.000000, 39.477564, 9.279131, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {20.774564, 1.863685, 0.000000, 0.872492, 0.872492};
//+
c0 = 0.08724919740740808;
//+
MeshSize {5} = c0;
//+
Disk(3) = {5.336494, 2.968978, 0.000000, 0.574830, 0.574830};
//+
c1 = 0.05748304843298775;
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
