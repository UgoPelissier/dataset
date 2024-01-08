//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.586827, -3.807092, 0.000000, 30.575856, 7.668886, 0.100000};
//+
MeshSize {1} = 0.511994;
//+
MeshSize {2} = 0.511994;
//+
MeshSize {3} = 0.644184;
//+
MeshSize {4} = 0.644184;
//+
MeshSize {5} = 2.730236;
//+
MeshSize {6} = 2.730236;
//+
MeshSize {7} = 3.024512;
//+
MeshSize {8} = 3.024512;
//+
Cylinder(2) = {7.165240, -1.413140, 0.000000, 0.000000, 0.000000, 0.100000, 1.455446, 2*Pi};
//+
MeshSize {9} = 0.145545;
//+
MeshSize {10} = 0.145545;
//+
Cylinder(3) = {14.850747, -1.123201, 0.000000, 0.000000, 0.000000, 0.100000, 1.394316, 2*Pi};
//+
MeshSize {11} = 0.139432;
//+
MeshSize {12} = 0.139432;
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
Save "../msh/cad_277.msh2";
//+
Save "../mesh/cad_277.mesh";
//+
Save "../geo_unrolled/cad_277.geo_unrolled";
