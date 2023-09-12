//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.990233, -4.583977, 0.000000, 35.850183, 9.619668, 1.000000};
//+
MeshSize {1} = 0.315891;
//+
MeshSize {2} = 0.315891;
//+
MeshSize {3} = 1.755931;
//+
MeshSize {4} = 1.755931;
//+
MeshSize {5} = 0.315891;
//+
MeshSize {6} = 0.315891;
//+
MeshSize {7} = 3.715307;
//+
MeshSize {8} = 3.715307;
//+
Cylinder(2) = {3.444598, -1.161440, 0.000000, 0.000000, 0.000000, 1.000000, 1.052701, 2*Pi};
//+
MeshSize {9} = 0.105270;
//+
MeshSize {10} = 0.105270;
//+
Cylinder(3) = {18.414991, -0.635767, 0.000000, 0.000000, 0.000000, 1.000000, 1.284376, 2*Pi};
//+
MeshSize {11} = 0.128438;
//+
MeshSize {12} = 0.128438;
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
Save "../geo_unrolled/cad_141.geo_unrolled";
