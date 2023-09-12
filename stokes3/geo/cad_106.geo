//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.045462, -3.922459, 0.000000, 35.722251, 9.127825, 1.000000};
//+
MeshSize {1} = 3.605771;
//+
MeshSize {2} = 3.605771;
//+
MeshSize {3} = 0.777562;
//+
MeshSize {4} = 0.777562;
//+
MeshSize {5} = 1.769136;
//+
MeshSize {6} = 1.769136;
//+
MeshSize {7} = 0.777562;
//+
MeshSize {8} = 0.777562;
//+
Cylinder(2) = {27.432369, -0.761381, 0.000000, 0.000000, 0.000000, 1.000000, 1.138991, 2*Pi};
//+
MeshSize {9} = 0.113899;
//+
MeshSize {10} = 0.113899;
//+
Cylinder(3) = {17.813682, 1.160731, 0.000000, 0.000000, 0.000000, 1.000000, 0.789672, 2*Pi};
//+
MeshSize {11} = 0.078967;
//+
MeshSize {12} = 0.078967;
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
Save "../geo_unrolled/cad_106.geo_unrolled";
