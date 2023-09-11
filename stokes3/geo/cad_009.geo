//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.229048, -4.052576, 0.000000, 32.925482, 8.169352, 1.000000};
//+
MeshSize {1} = 1.061300;
//+
MeshSize {2} = 1.061300;
//+
MeshSize {3} = 0.969803;
//+
MeshSize {4} = 0.969803;
//+
MeshSize {5} = 3.340520;
//+
MeshSize {6} = 3.340520;
//+
MeshSize {7} = 3.340520;
//+
MeshSize {8} = 3.340520;
//+
Cylinder(2) = {10.432997, 1.269833, 0.000000, 0.000000, 0.000000, 1.000000, 0.895632, 2*Pi};
//+
MeshSize {9} = 0.089563;
//+
MeshSize {10} = 0.089563;
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
//+
Save "../geo_unrolled/cad_009.geo_unrolled";
