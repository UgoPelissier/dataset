//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.805388, -3.878924, 0.000000, 34.850585, 9.735847, 1.000000};
//+
MeshSize {1} = 2.421530;
//+
MeshSize {2} = 2.421530;
//+
MeshSize {3} = 2.524702;
//+
MeshSize {4} = 2.524702;
//+
MeshSize {5} = 0.666861;
//+
MeshSize {6} = 0.666861;
//+
MeshSize {7} = 0.628617;
//+
MeshSize {8} = 0.628617;
//+
Cylinder(2) = {22.382835, 0.324093, 0.000000, 0.000000, 0.000000, 0.100000, 1.095549, 2*Pi};
//+
MeshSize {9} = 0.109555;
//+
MeshSize {10} = 0.109555;
//+
Cylinder(3) = {25.488831, 1.678789, 0.000000, 0.000000, 0.000000, 0.100000, 1.214351, 2*Pi};
//+
MeshSize {11} = 0.121435;
//+
MeshSize {12} = 0.121435;
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
Save "../msh/cad_472.msh2";
//+
Save "../mesh/cad_472.mesh";
//+
Save "../geo_unrolled/cad_472.geo_unrolled";
