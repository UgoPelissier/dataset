//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.127288, -4.176201, 0.000000, 39.276349, 9.193295, 1.000000};
//+
MeshSize {1} = 1.635992;
//+
MeshSize {2} = 1.635992;
//+
MeshSize {3} = 1.619385;
//+
MeshSize {4} = 1.619385;
//+
MeshSize {5} = 0.568795;
//+
MeshSize {6} = 0.568795;
//+
MeshSize {7} = 0.470455;
//+
MeshSize {8} = 0.470455;
//+
Cylinder(2) = {35.573822, 1.061963, 0.000000, 0.000000, 0.000000, 1.000000, 0.800950, 2*Pi};
//+
MeshSize {9} = 0.080095;
//+
MeshSize {10} = 0.080095;
//+
Cylinder(3) = {16.939156, 0.735324, 0.000000, 0.000000, 0.000000, 1.000000, 1.154706, 2*Pi};
//+
MeshSize {11} = 0.115471;
//+
MeshSize {12} = 0.115471;
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
Save "../geo_unrolled/cad_026.geo_unrolled";
