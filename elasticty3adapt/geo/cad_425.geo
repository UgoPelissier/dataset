//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787150, -3.268814, 0.000000, 34.571191, 8.218389, 1.000000};
//+
MeshSize {1} = 0.325982;
//+
MeshSize {2} = 0.325982;
//+
MeshSize {3} = 0.128598;
//+
MeshSize {4} = 0.128598;
//+
MeshSize {5} = 5.677102;
//+
MeshSize {6} = 5.677102;
//+
MeshSize {7} = 5.465721;
//+
MeshSize {8} = 5.465721;
//+
Cylinder(2) = {7.986953, 1.996148, 0.000000, 0.000000, 0.000000, 0.100000, 0.591958, 2*Pi};
//+
MeshSize {9} = 0.059196;
//+
MeshSize {10} = 0.059196;
//+
Cylinder(3) = {2.378548, 2.475261, 0.000000, 0.000000, 0.000000, 0.100000, 0.975268, 2*Pi};
//+
MeshSize {11} = 0.097527;
//+
MeshSize {12} = 0.097527;
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
Save "../msh/cad_425.msh2";
//+
Save "../mesh/cad_425.mesh";
//+
Save "../geo_unrolled/cad_425.geo_unrolled";
