//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.421007, -3.329318, 0.000000, 34.025236, 8.107881, 1.000000};
//+
MeshSize {1} = 0.698278;
//+
MeshSize {2} = 0.698278;
//+
MeshSize {3} = 1.654573;
//+
MeshSize {4} = 1.654573;
//+
MeshSize {5} = 2.031970;
//+
MeshSize {6} = 2.031970;
//+
MeshSize {7} = 0.852367;
//+
MeshSize {8} = 0.852367;
//+
Cylinder(2) = {5.077688, -1.551245, 0.000000, 0.000000, 0.000000, 0.100000, 0.842900, 2*Pi};
//+
MeshSize {9} = 0.084290;
//+
MeshSize {10} = 0.084290;
//+
Cylinder(3) = {28.768639, 2.908315, 0.000000, 0.000000, 0.000000, 0.100000, 0.922061, 2*Pi};
//+
MeshSize {11} = 0.092206;
//+
MeshSize {12} = 0.092206;
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
Save "../msh/cad_498.msh2";
//+
Save "../mesh/cad_498.mesh";
//+
Save "../geo_unrolled/cad_498.geo_unrolled";
