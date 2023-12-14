//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.897913, -2.936258, 0.000000, 34.050965, 7.781859, 1.000000};
//+
MeshSize {1} = 0.540467;
//+
MeshSize {2} = 0.540467;
//+
MeshSize {3} = 0.296684;
//+
MeshSize {4} = 0.296684;
//+
MeshSize {5} = 3.920962;
//+
MeshSize {6} = 3.920962;
//+
MeshSize {7} = 3.989220;
//+
MeshSize {8} = 3.989220;
//+
Cylinder(2) = {17.459849, 0.730948, 0.000000, 0.000000, 0.000000, 0.100000, 1.028287, 2*Pi};
//+
MeshSize {9} = 0.102829;
//+
MeshSize {10} = 0.102829;
//+
Cylinder(3) = {4.612653, 2.807804, 0.000000, 0.000000, 0.000000, 0.100000, 1.068380, 2*Pi};
//+
MeshSize {11} = 0.106838;
//+
MeshSize {12} = 0.106838;
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
Save "../msh/cad_174.msh2";
//+
Save "../mesh/cad_174.mesh";
//+
Save "../geo_unrolled/cad_174.geo_unrolled";
