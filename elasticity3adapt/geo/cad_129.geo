//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.883757, -3.860475, 0.000000, 31.177060, 7.752242, 0.100000};
//+
MeshSize {1} = 3.347379;
//+
MeshSize {2} = 3.347379;
//+
MeshSize {3} = 3.054430;
//+
MeshSize {4} = 3.054430;
//+
MeshSize {5} = 0.605118;
//+
MeshSize {6} = 0.605118;
//+
MeshSize {7} = 0.448065;
//+
MeshSize {8} = 0.448065;
//+
Cylinder(2) = {26.154773, 1.794780, 0.000000, 0.000000, 0.000000, 0.100000, 0.818904, 2*Pi};
//+
MeshSize {9} = 0.081890;
//+
MeshSize {10} = 0.081890;
//+
Cylinder(3) = {19.169729, 1.337509, 0.000000, 0.000000, 0.000000, 0.100000, 0.820665, 2*Pi};
//+
MeshSize {11} = 0.082067;
//+
MeshSize {12} = 0.082067;
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
Save "../msh/cad_129.msh2";
//+
Save "../mesh/cad_129.mesh";
//+
Save "../geo_unrolled/cad_129.geo_unrolled";
