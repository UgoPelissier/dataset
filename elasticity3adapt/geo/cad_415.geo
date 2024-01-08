//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.180849, -3.663020, 0.000000, 33.615302, 8.035685, 1.000000};
//+
MeshSize {1} = 0.337399;
//+
MeshSize {2} = 0.337399;
//+
MeshSize {3} = 0.906217;
//+
MeshSize {4} = 0.906217;
//+
MeshSize {5} = 3.220845;
//+
MeshSize {6} = 3.220845;
//+
MeshSize {7} = 2.095080;
//+
MeshSize {8} = 2.095080;
//+
Cylinder(2) = {25.761916, 1.645153, 0.000000, 0.000000, 0.000000, 0.100000, 1.057132, 2*Pi};
//+
MeshSize {9} = 0.105713;
//+
MeshSize {10} = 0.105713;
//+
Cylinder(3) = {1.372413, -1.381210, 0.000000, 0.000000, 0.000000, 0.100000, 0.615723, 2*Pi};
//+
MeshSize {11} = 0.061572;
//+
MeshSize {12} = 0.061572;
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
Save "../msh/cad_415.msh2";
//+
Save "../mesh/cad_415.mesh";
//+
Save "../geo_unrolled/cad_415.geo_unrolled";
