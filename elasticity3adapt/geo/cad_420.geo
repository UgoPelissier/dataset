//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.343616, -4.081053, 0.000000, 35.122585, 9.881451, 0.100000};
//+
MeshSize {1} = 2.116724;
//+
MeshSize {2} = 2.116724;
//+
MeshSize {3} = 3.195328;
//+
MeshSize {4} = 3.195328;
//+
MeshSize {5} = 0.427501;
//+
MeshSize {6} = 0.427501;
//+
MeshSize {7} = 0.815634;
//+
MeshSize {8} = 0.815634;
//+
Cylinder(2) = {13.605894, -1.832424, 0.000000, 0.000000, 0.000000, 0.100000, 0.876337, 2*Pi};
//+
MeshSize {9} = 0.087634;
//+
MeshSize {10} = 0.087634;
//+
Cylinder(3) = {30.513725, -1.946205, 0.000000, 0.000000, 0.000000, 0.100000, 1.206059, 2*Pi};
//+
MeshSize {11} = 0.120606;
//+
MeshSize {12} = 0.120606;
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
Save "../msh/cad_420.msh2";
//+
Save "../mesh/cad_420.mesh";
//+
Save "../geo_unrolled/cad_420.geo_unrolled";
