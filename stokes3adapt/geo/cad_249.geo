//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.911336, -3.931412, 0.000000, 32.838244, 9.507042, 1.000000};
//+
MeshSize {1} = 0.765503;
//+
MeshSize {2} = 0.765503;
//+
MeshSize {3} = 0.890590;
//+
MeshSize {4} = 0.890590;
//+
MeshSize {5} = 2.526927;
//+
MeshSize {6} = 2.526927;
//+
MeshSize {7} = 0.981843;
//+
MeshSize {8} = 0.981843;
//+
Cylinder(2) = {6.497212, 0.132097, 0.000000, 0.000000, 0.000000, 1.000000, 1.448212, 2*Pi};
//+
MeshSize {9} = 0.144821;
//+
MeshSize {10} = 0.144821;
//+
Cylinder(3) = {26.108077, 3.469603, 0.000000, 0.000000, 0.000000, 1.000000, 0.924209, 2*Pi};
//+
MeshSize {11} = 0.092421;
//+
MeshSize {12} = 0.092421;
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
//+
Save "../geo_unrolled/cad_249.geo_unrolled";
