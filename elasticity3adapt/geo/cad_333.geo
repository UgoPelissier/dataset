//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.048919, -3.647645, 0.000000, 36.483850, 7.591803, 0.100000};
//+
MeshSize {1} = 4.273009;
//+
MeshSize {2} = 4.273009;
//+
MeshSize {3} = 4.020137;
//+
MeshSize {4} = 4.020137;
//+
MeshSize {5} = 0.441518;
//+
MeshSize {6} = 0.441518;
//+
MeshSize {7} = 0.345698;
//+
MeshSize {8} = 0.345698;
//+
Cylinder(2) = {31.192748, 1.267805, 0.000000, 0.000000, 0.000000, 0.100000, 1.338014, 2*Pi};
//+
MeshSize {9} = 0.133801;
//+
MeshSize {10} = 0.133801;
//+
Cylinder(3) = {22.324801, 1.453934, 0.000000, 0.000000, 0.000000, 0.100000, 1.094969, 2*Pi};
//+
MeshSize {11} = 0.109497;
//+
MeshSize {12} = 0.109497;
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
Save "../msh/cad_333.msh2";
//+
Save "../mesh/cad_333.mesh";
//+
Save "../geo_unrolled/cad_333.geo_unrolled";
