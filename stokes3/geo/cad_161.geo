//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.905147, -3.797481, 0.000000, 29.259207, 8.788439, 1.000000};
//+
MeshSize {1} = 3.048274;
//+
MeshSize {2} = 3.048274;
//+
MeshSize {3} = 3.048274;
//+
MeshSize {4} = 3.048274;
//+
MeshSize {5} = 1.080112;
//+
MeshSize {6} = 1.080112;
//+
MeshSize {7} = 1.278996;
//+
MeshSize {8} = 1.278996;
//+
Cylinder(2) = {18.545334, -2.280035, 0.000000, 0.000000, 0.000000, 1.000000, 0.916568, 2*Pi};
//+
MeshSize {9} = 0.091657;
//+
MeshSize {10} = 0.091657;
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
