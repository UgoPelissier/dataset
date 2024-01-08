//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.717810, -3.969491, 0.000000, 34.220277, 8.407498, 0.100000};
//+
MeshSize {1} = 1.130495;
//+
MeshSize {2} = 1.130495;
//+
MeshSize {3} = 1.109572;
//+
MeshSize {4} = 1.109572;
//+
MeshSize {5} = 0.984071;
//+
MeshSize {6} = 0.984071;
//+
MeshSize {7} = 0.938930;
//+
MeshSize {8} = 0.938930;
//+
Cylinder(2) = {17.259810, 0.435384, 0.000000, 0.000000, 0.000000, 0.100000, 1.159838, 2*Pi};
//+
MeshSize {9} = 0.115984;
//+
MeshSize {10} = 0.115984;
//+
Cylinder(3) = {19.764722, 1.533390, 0.000000, 0.000000, 0.000000, 0.100000, 1.065140, 2*Pi};
//+
MeshSize {11} = 0.106514;
//+
MeshSize {12} = 0.106514;
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
Save "../msh/cad_491.msh2";
//+
Save "../mesh/cad_491.mesh";
//+
Save "../geo_unrolled/cad_491.geo_unrolled";
