//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201707, -3.450624, 0.000000, 37.837392, 8.215016, 0.100000};
//+
MeshSize {1} = 0.668720;
//+
MeshSize {2} = 0.668720;
//+
MeshSize {3} = 0.578840;
//+
MeshSize {4} = 0.578840;
//+
MeshSize {5} = 2.609628;
//+
MeshSize {6} = 2.609628;
//+
MeshSize {7} = 2.603448;
//+
MeshSize {8} = 2.603448;
//+
Cylinder(2) = {15.030888, 0.707150, 0.000000, 0.000000, 0.000000, 0.100000, 1.017743, 2*Pi};
//+
MeshSize {9} = 0.101774;
//+
MeshSize {10} = 0.101774;
//+
Cylinder(3) = {10.821887, 2.709023, 0.000000, 0.000000, 0.000000, 0.100000, 1.415009, 2*Pi};
//+
MeshSize {11} = 0.141501;
//+
MeshSize {12} = 0.141501;
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
Save "../msh/cad_274.msh2";
//+
Save "../mesh/cad_274.mesh";
//+
Save "../geo_unrolled/cad_274.geo_unrolled";
