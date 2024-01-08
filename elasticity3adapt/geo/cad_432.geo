//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.806687, -3.908152, 0.000000, 35.036575, 8.474877, 1.000000};
//+
MeshSize {1} = 1.590672;
//+
MeshSize {2} = 1.590672;
//+
MeshSize {3} = 2.077915;
//+
MeshSize {4} = 2.077915;
//+
MeshSize {5} = 0.689471;
//+
MeshSize {6} = 0.689471;
//+
MeshSize {7} = 0.867125;
//+
MeshSize {8} = 0.867125;
//+
Cylinder(2) = {26.824174, -2.237892, 0.000000, 0.000000, 0.000000, 0.100000, 0.922869, 2*Pi};
//+
MeshSize {9} = 0.092287;
//+
MeshSize {10} = 0.092287;
//+
Cylinder(3) = {15.752232, -2.082227, 0.000000, 0.000000, 0.000000, 0.100000, 1.089481, 2*Pi};
//+
MeshSize {11} = 0.108948;
//+
MeshSize {12} = 0.108948;
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
Save "../msh/cad_432.msh2";
//+
Save "../mesh/cad_432.mesh";
//+
Save "../geo_unrolled/cad_432.geo_unrolled";
