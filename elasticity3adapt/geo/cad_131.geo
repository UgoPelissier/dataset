//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318734, -3.804251, 0.000000, 31.173442, 8.441150, 0.100000};
//+
MeshSize {1} = 1.527804;
//+
MeshSize {2} = 1.527804;
//+
MeshSize {3} = 1.047706;
//+
MeshSize {4} = 1.047706;
//+
MeshSize {5} = 0.878825;
//+
MeshSize {6} = 0.878825;
//+
MeshSize {7} = 0.953776;
//+
MeshSize {8} = 0.953776;
//+
Cylinder(2) = {23.758205, -0.223532, 0.000000, 0.000000, 0.000000, 0.100000, 1.349341, 2*Pi};
//+
MeshSize {9} = 0.134934;
//+
MeshSize {10} = 0.134934;
//+
Cylinder(3) = {9.470844, 1.752187, 0.000000, 0.000000, 0.000000, 0.100000, 1.305776, 2*Pi};
//+
MeshSize {11} = 0.130578;
//+
MeshSize {12} = 0.130578;
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
Save "../msh/cad_131.msh2";
//+
Save "../mesh/cad_131.mesh";
//+
Save "../geo_unrolled/cad_131.geo_unrolled";
