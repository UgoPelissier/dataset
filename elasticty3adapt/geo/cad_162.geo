//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102416, -3.292065, 0.000000, 37.411039, 8.244272, 1.000000};
//+
MeshSize {1} = 3.361684;
//+
MeshSize {2} = 3.361684;
//+
MeshSize {3} = 3.741924;
//+
MeshSize {4} = 3.741924;
//+
MeshSize {5} = 0.425980;
//+
MeshSize {6} = 0.425980;
//+
MeshSize {7} = 0.523495;
//+
MeshSize {8} = 0.523495;
//+
Cylinder(2) = {30.638311, -0.502324, 0.000000, 0.000000, 0.000000, 0.100000, 1.493958, 2*Pi};
//+
MeshSize {9} = 0.149396;
//+
MeshSize {10} = 0.149396;
//+
Cylinder(3) = {22.055057, -1.231440, 0.000000, 0.000000, 0.000000, 0.100000, 1.210754, 2*Pi};
//+
MeshSize {11} = 0.121075;
//+
MeshSize {12} = 0.121075;
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
Save "../msh/cad_162.msh2";
//+
Save "../mesh/cad_162.mesh";
//+
Save "../geo_unrolled/cad_162.geo_unrolled";
