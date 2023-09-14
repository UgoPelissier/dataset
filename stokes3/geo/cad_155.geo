//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.438166, -3.428567, 0.000000, 32.750929, 8.250660, 1.000000};
//+
MeshSize {1} = 0.479982;
//+
MeshSize {2} = 0.479982;
//+
MeshSize {3} = 0.506192;
//+
MeshSize {4} = 0.506192;
//+
MeshSize {5} = 1.200129;
//+
MeshSize {6} = 1.200129;
//+
MeshSize {7} = 1.149291;
//+
MeshSize {8} = 1.149291;
//+
Cylinder(2) = {21.505535, 1.461516, 0.000000, 0.000000, 0.000000, 1.000000, 0.664354, 2*Pi};
//+
MeshSize {9} = 0.066435;
//+
MeshSize {10} = 0.066435;
//+
Cylinder(3) = {5.314759, 0.493793, 0.000000, 0.000000, 0.000000, 1.000000, 1.458463, 2*Pi};
//+
MeshSize {11} = 0.145846;
//+
MeshSize {12} = 0.145846;
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
Save "../geo_unrolled/cad_155.geo_unrolled";
