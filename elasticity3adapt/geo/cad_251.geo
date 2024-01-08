//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630217, -4.158598, 0.000000, 29.538692, 9.183247, 0.100000};
//+
MeshSize {1} = 2.506551;
//+
MeshSize {2} = 2.506551;
//+
MeshSize {3} = 2.273189;
//+
MeshSize {4} = 2.273189;
//+
MeshSize {5} = 0.679935;
//+
MeshSize {6} = 0.679935;
//+
MeshSize {7} = 0.646814;
//+
MeshSize {8} = 0.646814;
//+
Cylinder(2) = {16.135370, 1.298720, 0.000000, 0.000000, 0.000000, 0.100000, 1.118349, 2*Pi};
//+
MeshSize {9} = 0.111835;
//+
MeshSize {10} = 0.111835;
//+
Cylinder(3) = {22.806507, 0.786160, 0.000000, 0.000000, 0.000000, 0.100000, 1.200882, 2*Pi};
//+
MeshSize {11} = 0.120088;
//+
MeshSize {12} = 0.120088;
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
Save "../msh/cad_251.msh2";
//+
Save "../mesh/cad_251.mesh";
//+
Save "../geo_unrolled/cad_251.geo_unrolled";
