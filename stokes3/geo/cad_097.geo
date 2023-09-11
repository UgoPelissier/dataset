//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.633748, -3.744922, 0.000000, 33.803038, 9.235003, 1.000000};
//+
l = [0.9170911797678745, 0.9170911797678745, 0.9170911797678745, 3.4744978290257755, 3.4744978290257755, 3.4744978290257755, 3.4744978290257755, 1.0922847531278654, 1.0922847531278654, 1.0922847531278654];
//+
MeshSize {1} = 0.917091;
//+
MeshSize {2} = 0.917091;
//+
MeshSize {3} = 0.917091;
//+
MeshSize {4} = 3.474498;
//+
MeshSize {5} = 3.474498;
//+
MeshSize {6} = 3.474498;
//+
MeshSize {7} = 3.474498;
//+
MeshSize {8} = 1.092285;
//+
Cylinder(2) = {10.102643, -1.155843, 0.000000, 0.000000, 0.000000, 1.000000, 0.645570, 2*Pi};
//+
c0 = 0.06455697956993985;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
