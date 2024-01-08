//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.400615, -3.231061, 0.000000, 39.187624, 7.726667, 0.100000};
//+
MeshSize {1} = 0.524839;
//+
MeshSize {2} = 0.524839;
//+
MeshSize {3} = 0.464059;
//+
MeshSize {4} = 0.464059;
//+
MeshSize {5} = 3.539710;
//+
MeshSize {6} = 3.539710;
//+
MeshSize {7} = 3.288585;
//+
MeshSize {8} = 3.288585;
//+
Cylinder(2) = {18.196313, 2.059219, 0.000000, 0.000000, 0.000000, 0.100000, 1.147793, 2*Pi};
//+
MeshSize {9} = 0.114779;
//+
MeshSize {10} = 0.114779;
//+
Cylinder(3) = {7.561479, 1.513517, 0.000000, 0.000000, 0.000000, 0.100000, 1.396461, 2*Pi};
//+
MeshSize {11} = 0.139646;
//+
MeshSize {12} = 0.139646;
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
Save "../msh/cad_375.msh2";
//+
Save "../mesh/cad_375.mesh";
//+
Save "../geo_unrolled/cad_375.geo_unrolled";
