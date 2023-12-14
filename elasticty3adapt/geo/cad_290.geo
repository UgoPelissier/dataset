//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.347168, -3.762657, 0.000000, 37.699909, 8.604651, 1.000000};
//+
MeshSize {1} = 0.690246;
//+
MeshSize {2} = 0.690246;
//+
MeshSize {3} = 0.718195;
//+
MeshSize {4} = 0.718195;
//+
MeshSize {5} = 2.053462;
//+
MeshSize {6} = 2.053462;
//+
MeshSize {7} = 2.302636;
//+
MeshSize {8} = 2.302636;
//+
Cylinder(2) = {13.916986, -2.066777, 0.000000, 0.000000, 0.000000, 0.100000, 0.803573, 2*Pi};
//+
MeshSize {9} = 0.080357;
//+
MeshSize {10} = 0.080357;
//+
Cylinder(3) = {13.083816, -0.265041, 0.000000, 0.000000, 0.000000, 0.100000, 0.508317, 2*Pi};
//+
MeshSize {11} = 0.050832;
//+
MeshSize {12} = 0.050832;
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
Save "../msh/cad_290.msh2";
//+
Save "../mesh/cad_290.mesh";
//+
Save "../geo_unrolled/cad_290.geo_unrolled";
