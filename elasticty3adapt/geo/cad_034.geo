//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394020, -3.989045, 0.000000, 29.877000, 9.106874, 1.000000};
//+
MeshSize {1} = 0.385676;
//+
MeshSize {2} = 0.385676;
//+
MeshSize {3} = 0.502496;
//+
MeshSize {4} = 0.502496;
//+
MeshSize {5} = 3.337332;
//+
MeshSize {6} = 3.337332;
//+
MeshSize {7} = 4.231321;
//+
MeshSize {8} = 4.231321;
//+
Cylinder(2) = {4.107762, -0.348807, 0.000000, 0.000000, 0.000000, 0.100000, 0.550285, 2*Pi};
//+
MeshSize {9} = 0.055028;
//+
MeshSize {10} = 0.055028;
//+
Cylinder(3) = {11.475861, -2.625873, 0.000000, 0.000000, 0.000000, 0.100000, 0.826846, 2*Pi};
//+
MeshSize {11} = 0.082685;
//+
MeshSize {12} = 0.082685;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_034.msh2";
//+
Save "../mesh/cad_034.mesh";
//+
Save "../geo_unrolled/cad_034.geo_unrolled";
