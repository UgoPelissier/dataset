//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.347168, -3.762657, 0.000000, 37.699909, 8.604651, 1.000000};
//+
MeshSize {1} = 1.269984;
//+
MeshSize {2} = 1.269984;
//+
MeshSize {3} = 1.321407;
//+
MeshSize {4} = 1.321407;
//+
MeshSize {5} = 3.828956;
//+
MeshSize {6} = 3.828956;
//+
MeshSize {7} = 3.828956;
//+
MeshSize {8} = 3.828956;
//+
Cylinder(2) = {13.916986, -2.066777, 0.000000, 0.000000, 0.000000, 1.000000, 0.803573, 2*Pi};
//+
MeshSize {9} = 0.080357;
//+
MeshSize {10} = 0.080357;
//+
Cylinder(3) = {13.083816, -0.265041, 0.000000, 0.000000, 0.000000, 1.000000, 0.508317, 2*Pi};
//+
MeshSize {11} = 0.050832;
//+
MeshSize {12} = 0.050832;
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
Save "../geo_unrolled/cad_290.geo_unrolled";
