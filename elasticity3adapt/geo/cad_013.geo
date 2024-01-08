//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.550325, -4.744446, 0.000000, 39.442499, 9.590069, 0.100000};
//+
MeshSize {1} = 0.496489;
//+
MeshSize {2} = 0.496489;
//+
MeshSize {3} = 0.513155;
//+
MeshSize {4} = 0.513155;
//+
MeshSize {5} = 3.261824;
//+
MeshSize {6} = 3.261824;
//+
MeshSize {7} = 3.424605;
//+
MeshSize {8} = 3.424605;
//+
Cylinder(2) = {6.651251, -0.137703, 0.000000, 0.000000, 0.000000, 0.100000, 0.713747, 2*Pi};
//+
MeshSize {9} = 0.071375;
//+
MeshSize {10} = 0.071375;
//+
Cylinder(3) = {18.197070, -0.738364, 0.000000, 0.000000, 0.000000, 0.100000, 1.457318, 2*Pi};
//+
MeshSize {11} = 0.145732;
//+
MeshSize {12} = 0.145732;
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
Save "../msh/cad_013.msh2";
//+
Save "../mesh/cad_013.mesh";
//+
Save "../geo_unrolled/cad_013.geo_unrolled";
