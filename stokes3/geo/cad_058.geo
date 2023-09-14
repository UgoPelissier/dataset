//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.250098, -3.385563, 0.000000, 31.742072, 8.461733, 1.000000};
//+
MeshSize {1} = 3.227072;
//+
MeshSize {2} = 3.227072;
//+
MeshSize {3} = 3.227072;
//+
MeshSize {4} = 3.227072;
//+
MeshSize {5} = 1.161440;
//+
MeshSize {6} = 1.161440;
//+
MeshSize {7} = 1.293611;
//+
MeshSize {8} = 1.293611;
//+
Cylinder(2) = {18.105297, 1.572186, 0.000000, 0.000000, 0.000000, 1.000000, 1.244669, 2*Pi};
//+
MeshSize {9} = 0.124467;
//+
MeshSize {10} = 0.124467;
//+
Cylinder(3) = {19.421327, -1.249621, 0.000000, 0.000000, 0.000000, 1.000000, 1.136618, 2*Pi};
//+
MeshSize {11} = 0.113662;
//+
MeshSize {12} = 0.113662;
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
Save "../geo_unrolled/cad_058.geo_unrolled";
