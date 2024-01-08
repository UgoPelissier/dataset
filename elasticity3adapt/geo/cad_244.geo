//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.911486, -3.989256, 0.000000, 35.564837, 9.387769, 1.000000};
//+
MeshSize {1} = 4.316165;
//+
MeshSize {2} = 4.316165;
//+
MeshSize {3} = 4.227077;
//+
MeshSize {4} = 4.227077;
//+
MeshSize {5} = 0.155616;
//+
MeshSize {6} = 0.155616;
//+
MeshSize {7} = 0.599327;
//+
MeshSize {8} = 0.599327;
//+
Cylinder(2) = {19.938511, 0.970573, 0.000000, 0.000000, 0.000000, 0.100000, 1.276147, 2*Pi};
//+
MeshSize {9} = 0.127615;
//+
MeshSize {10} = 0.127615;
//+
Cylinder(3) = {35.173748, -1.932212, 0.000000, 0.000000, 0.000000, 0.100000, 0.677426, 2*Pi};
//+
MeshSize {11} = 0.067743;
//+
MeshSize {12} = 0.067743;
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
Save "../msh/cad_244.msh2";
//+
Save "../mesh/cad_244.mesh";
//+
Save "../geo_unrolled/cad_244.geo_unrolled";
