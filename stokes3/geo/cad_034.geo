//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394020, -3.989045, 0.000000, 29.877000, 9.106874, 1.000000};
//+
MeshSize {1} = 0.465002;
//+
MeshSize {2} = 0.465002;
//+
MeshSize {3} = 0.605850;
//+
MeshSize {4} = 0.605850;
//+
MeshSize {5} = 3.061157;
//+
MeshSize {6} = 3.061157;
//+
MeshSize {7} = 3.061157;
//+
MeshSize {8} = 3.061157;
//+
Cylinder(2) = {4.107762, -0.348807, 0.000000, 0.000000, 0.000000, 1.000000, 0.550285, 2*Pi};
//+
MeshSize {9} = 0.055028;
//+
MeshSize {10} = 0.055028;
//+
Cylinder(3) = {11.475861, -2.625873, 0.000000, 0.000000, 0.000000, 1.000000, 0.826846, 2*Pi};
//+
MeshSize {11} = 0.082685;
//+
MeshSize {12} = 0.082685;
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
Save "../geo_unrolled/cad_034.geo_unrolled";
