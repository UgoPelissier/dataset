//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.284175, -4.171667, 0.000000, 31.028596, 9.596294, 1.000000};
//+
MeshSize {1} = 0.764838;
//+
MeshSize {2} = 0.764838;
//+
MeshSize {3} = 0.826850;
//+
MeshSize {4} = 0.826850;
//+
MeshSize {5} = 1.447470;
//+
MeshSize {6} = 1.447470;
//+
MeshSize {7} = 2.083026;
//+
MeshSize {8} = 2.083026;
//+
Cylinder(2) = {10.182954, -0.228826, 0.000000, 0.000000, 0.000000, 0.100000, 1.474982, 2*Pi};
//+
MeshSize {9} = 0.147498;
//+
MeshSize {10} = 0.147498;
//+
Cylinder(3) = {16.927188, -2.183978, 0.000000, 0.000000, 0.000000, 0.100000, 0.944845, 2*Pi};
//+
MeshSize {11} = 0.094484;
//+
MeshSize {12} = 0.094484;
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
Save "../msh/cad_288.msh2";
//+
Save "../mesh/cad_288.mesh";
//+
Save "../geo_unrolled/cad_288.geo_unrolled";
