//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664238, -4.479819, 0.000000, 32.474919, 9.620038, 0.100000};
//+
MeshSize {1} = 1.328668;
//+
MeshSize {2} = 1.328668;
//+
MeshSize {3} = 1.630100;
//+
MeshSize {4} = 1.630100;
//+
MeshSize {5} = 0.772827;
//+
MeshSize {6} = 0.772827;
//+
MeshSize {7} = 0.950920;
//+
MeshSize {8} = 0.950920;
//+
Cylinder(2) = {23.852049, -1.920907, 0.000000, 0.000000, 0.000000, 0.100000, 0.809285, 2*Pi};
//+
MeshSize {9} = 0.080928;
//+
MeshSize {10} = 0.080928;
//+
Cylinder(3) = {13.533796, -0.938912, 0.000000, 0.000000, 0.000000, 0.100000, 0.795655, 2*Pi};
//+
MeshSize {11} = 0.079566;
//+
MeshSize {12} = 0.079566;
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
Save "../msh/cad_025.msh2";
//+
Save "../mesh/cad_025.mesh";
//+
Save "../geo_unrolled/cad_025.geo_unrolled";
