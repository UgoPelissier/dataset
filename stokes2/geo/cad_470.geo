//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.733815, -4.326763, 0.000000, 38.871998, 9.495558, 0.000000};
//+
l = [3.9889369900353047, 0.3742945460475687, 1.078982470148866, 1.078982470148866, 0.9307970082951718, 0.9307970082951718, 3.9889369900353047, 0.5014363592731987];
//+
MeshSize {1} = 3.988937;
//+
MeshSize {2} = 0.374295;
//+
MeshSize {3} = 1.078982;
//+
MeshSize {4} = 1.078982;
//+
Disk(2) = {29.681597, 2.155223, 0.000000, 1.063706, 1.063706};
//+
c0 = 0.10637062732908364;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.432500, -0.254856, 0.000000, 0.669079, 0.669079};
//+
c1 = 0.06690792409543693;
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
