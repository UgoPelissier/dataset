//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.849576, -4.128654, 0.000000, 30.205813, 9.901969, 1.000000};
//+
l = [3.144756611920103, 3.144756611920103, 1.2305339229224275, 1.2305339229224275, 1.2305339229224275, 1.0386577859018211, 1.0386577859018211, 1.0386577859018211, 3.144756611920103, 3.144756611920103];
//+
MeshSize {1} = 3.144757;
//+
MeshSize {2} = 3.144757;
//+
MeshSize {3} = 1.230534;
//+
MeshSize {4} = 1.230534;
//+
MeshSize {5} = 1.230534;
//+
MeshSize {6} = 1.038658;
//+
MeshSize {7} = 1.038658;
//+
MeshSize {8} = 1.038658;
//+
Cylinder(2) = {19.738343, 3.254850, 0.000000, 0.000000, 0.000000, 1.000000, 1.207309, 2*Pi};
//+
c0 = 0.1207308643706077;
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
