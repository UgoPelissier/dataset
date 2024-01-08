//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.569158, -4.343188, 0.000000, 29.917664, 9.109110, 0.100000};
//+
MeshSize {1} = 4.851965;
//+
MeshSize {2} = 4.851965;
//+
MeshSize {3} = 0.468848;
//+
MeshSize {4} = 0.468848;
//+
MeshSize {5} = 0.630635;
//+
MeshSize {6} = 0.630635;
//+
MeshSize {7} = 1.760980;
//+
MeshSize {8} = 1.760980;
//+
Cylinder(2) = {29.020412, -1.080423, 0.000000, 0.000000, 0.000000, 0.100000, 0.898858, 2*Pi};
//+
MeshSize {9} = 0.089886;
//+
MeshSize {10} = 0.089886;
//+
Cylinder(3) = {2.719068, 3.209557, 0.000000, 0.000000, 0.000000, 0.100000, 0.662941, 2*Pi};
//+
MeshSize {11} = 0.066294;
//+
MeshSize {12} = 0.066294;
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
Save "../msh/cad_450.msh2";
//+
Save "../mesh/cad_450.mesh";
//+
Save "../geo_unrolled/cad_450.geo_unrolled";
