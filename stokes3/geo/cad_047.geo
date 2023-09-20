//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.091242, -4.239706, 0.000000, 33.241842, 9.175334, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {28.590889, -1.561608, 0.000000, 0.000000, 0.000000, 1.000000, 1.193674, 2*Pi};
//+
MeshSize {9} = 0.119367;
//+
MeshSize {10} = 0.119367;
//+
Cylinder(3) = {18.336416, -0.414487, 0.000000, 0.000000, 0.000000, 1.000000, 0.814517, 2*Pi};
//+
MeshSize {11} = 0.081452;
//+
MeshSize {12} = 0.081452;
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
Save "../geo_unrolled/cad_047.geo_unrolled";
