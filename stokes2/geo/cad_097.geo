//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.633748, -3.744922, 0.000000, 33.803038, 9.235003, 0.000000};
//+
l = [0.9170911797678745, 3.4744978290257755, 3.4744978290257755, 1.0922847531278654];
//+
MeshSize {1} = 0.917091;
//+
MeshSize {2} = 3.474498;
//+
MeshSize {3} = 3.474498;
//+
MeshSize {4} = 1.092285;
//+
Disk(2) = {10.102643, -1.155843, 0.000000, 0.645570, 0.645570};
//+
c0 = 0.06455697956993985;
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
