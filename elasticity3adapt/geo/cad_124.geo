//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.117416, -3.602151, 0.000000, 32.832960, 9.036564, 1.000000};
//+
MeshSize {1} = 2.314345;
//+
MeshSize {2} = 2.314345;
//+
MeshSize {3} = 2.553132;
//+
MeshSize {4} = 2.553132;
//+
MeshSize {5} = 0.656692;
//+
MeshSize {6} = 0.656692;
//+
MeshSize {7} = 0.653807;
//+
MeshSize {8} = 0.653807;
//+
Cylinder(2) = {24.638144, 0.955517, 0.000000, 0.000000, 0.000000, 0.100000, 0.915846, 2*Pi};
//+
MeshSize {9} = 0.091585;
//+
MeshSize {10} = 0.091585;
//+
Cylinder(3) = {18.097484, -0.263614, 0.000000, 0.000000, 0.000000, 0.100000, 1.037518, 2*Pi};
//+
MeshSize {11} = 0.103752;
//+
MeshSize {12} = 0.103752;
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
Save "../msh/cad_124.msh2";
//+
Save "../mesh/cad_124.mesh";
//+
Save "../geo_unrolled/cad_124.geo_unrolled";
