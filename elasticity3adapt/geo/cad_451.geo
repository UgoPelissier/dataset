//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.779493, -4.282644, 0.000000, 36.746093, 9.135161, 1.000000};
//+
MeshSize {1} = 0.748251;
//+
MeshSize {2} = 0.748251;
//+
MeshSize {3} = 0.839017;
//+
MeshSize {4} = 0.839017;
//+
MeshSize {5} = 1.119734;
//+
MeshSize {6} = 1.119734;
//+
MeshSize {7} = 2.595729;
//+
MeshSize {8} = 2.595729;
//+
Cylinder(2) = {4.525660, -0.083632, 0.000000, 0.000000, 0.000000, 0.100000, 0.932358, 2*Pi};
//+
MeshSize {9} = 0.093236;
//+
MeshSize {10} = 0.093236;
//+
Cylinder(3) = {30.258876, -1.734755, 0.000000, 0.000000, 0.000000, 0.100000, 1.184962, 2*Pi};
//+
MeshSize {11} = 0.118496;
//+
MeshSize {12} = 0.118496;
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
Save "../msh/cad_451.msh2";
//+
Save "../mesh/cad_451.mesh";
//+
Save "../geo_unrolled/cad_451.geo_unrolled";
