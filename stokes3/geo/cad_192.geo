//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179816, -4.550828, 0.000000, 32.010386, 9.739412, 1.000000};
//+
MeshSize {1} = 0.993139;
//+
MeshSize {2} = 0.993139;
//+
MeshSize {3} = 0.724299;
//+
MeshSize {4} = 0.724299;
//+
MeshSize {5} = 1.525063;
//+
MeshSize {6} = 1.525063;
//+
MeshSize {7} = 1.386784;
//+
MeshSize {8} = 1.386784;
//+
Cylinder(2) = {17.042532, 2.598886, 0.000000, 0.000000, 0.000000, 1.000000, 1.499606, 2*Pi};
//+
MeshSize {9} = 0.149961;
//+
MeshSize {10} = 0.149961;
//+
Cylinder(3) = {8.579558, 3.080431, 0.000000, 0.000000, 0.000000, 1.000000, 1.417259, 2*Pi};
//+
MeshSize {11} = 0.141726;
//+
MeshSize {12} = 0.141726;
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
Save "../geo_unrolled/cad_192.geo_unrolled";
