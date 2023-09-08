//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.222918, -4.070237, 0.000000, 35.378590, 9.049395, 0.000000};
//+
l = [1.6289429899639847, 0.6754586317300062, 3.588788501868627, 3.588788501868627, 1.7875585994646639, 1.7875585994646639, 1.5781759618547702, 0.3931049094969756];
//+
MeshSize {1} = 1.628943;
//+
MeshSize {2} = 0.675459;
//+
MeshSize {3} = 3.588789;
//+
MeshSize {4} = 3.588789;
//+
Disk(2) = {16.844273, 1.422268, 0.000000, 1.215914, 1.215914};
//+
c0 = 0.12159135002831555;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.059404, 2.346689, 0.000000, 0.721747, 0.721747};
//+
c1 = 0.07217471078201901;
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
