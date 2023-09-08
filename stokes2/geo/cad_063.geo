//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.849576, -4.128654, 0.000000, 30.205813, 9.901969, 0.000000};
//+
l = [3.144756611920103, 1.2305339229224275, 1.0386577859018211, 3.144756611920103];
//+
MeshSize {1} = 3.144757;
//+
MeshSize {2} = 1.230534;
//+
MeshSize {3} = 1.038658;
//+
MeshSize {4} = 3.144757;
//+
Disk(2) = {19.738343, 3.254850, 0.000000, 1.207309, 1.207309};
//+
c0 = 0.1207308643706077;
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
