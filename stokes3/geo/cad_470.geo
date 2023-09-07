//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.733815, -4.326763, 0.000000, 38.871998, 9.495558, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {29.681597, 2.155223, 0.000000, 0.000000, 0.000000, 1.000000, 1.063706, 2*Pi};
//+
c0 = 0.10637062732908364;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {2.432500, -0.254856, 0.000000, 0.000000, 0.000000, 1.000000, 0.669079, 2*Pi};
//+
c1 = 0.06690792409543693;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
