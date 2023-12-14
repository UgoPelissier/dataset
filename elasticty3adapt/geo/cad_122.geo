//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757283, -4.695809, 0.000000, 37.804182, 9.742607, 1.000000};
//+
MeshSize {1} = 3.333487;
//+
MeshSize {2} = 3.333487;
//+
MeshSize {3} = 3.861980;
//+
MeshSize {4} = 3.861980;
//+
MeshSize {5} = 0.467665;
//+
MeshSize {6} = 0.467665;
//+
MeshSize {7} = 0.469582;
//+
MeshSize {8} = 0.469582;
//+
Cylinder(2) = {31.889939, 0.148873, 0.000000, 0.000000, 0.000000, 0.100000, 0.586738, 2*Pi};
//+
MeshSize {9} = 0.058674;
//+
MeshSize {10} = 0.058674;
//+
Cylinder(3) = {25.807486, -3.071053, 0.000000, 0.000000, 0.000000, 0.100000, 0.640612, 2*Pi};
//+
MeshSize {11} = 0.064061;
//+
MeshSize {12} = 0.064061;
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
Save "../msh/cad_122.msh2";
//+
Save "../mesh/cad_122.mesh";
//+
Save "../geo_unrolled/cad_122.geo_unrolled";
