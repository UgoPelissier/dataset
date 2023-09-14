//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712899, -4.296232, 0.000000, 34.621951, 9.934205, 1.000000};
//+
MeshSize {1} = 3.568226;
//+
MeshSize {2} = 3.568226;
//+
MeshSize {3} = 3.568226;
//+
MeshSize {4} = 3.568226;
//+
MeshSize {5} = 0.886220;
//+
MeshSize {6} = 0.886220;
//+
MeshSize {7} = 0.580574;
//+
MeshSize {8} = 0.580574;
//+
Cylinder(2) = {26.704063, -0.340789, 0.000000, 0.000000, 0.000000, 1.000000, 0.631795, 2*Pi};
//+
MeshSize {9} = 0.063180;
//+
MeshSize {10} = 0.063180;
//+
Cylinder(3) = {28.721968, 4.169277, 0.000000, 0.000000, 0.000000, 1.000000, 0.968276, 2*Pi};
//+
MeshSize {11} = 0.096828;
//+
MeshSize {12} = 0.096828;
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
Save "../geo_unrolled/cad_348.geo_unrolled";
