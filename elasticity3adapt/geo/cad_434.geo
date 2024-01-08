//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.966805, -3.971965, 0.000000, 37.447925, 9.155559, 0.100000};
//+
MeshSize {1} = 2.588522;
//+
MeshSize {2} = 2.588522;
//+
MeshSize {3} = 2.698493;
//+
MeshSize {4} = 2.698493;
//+
MeshSize {5} = 0.780364;
//+
MeshSize {6} = 0.780364;
//+
MeshSize {7} = 0.454376;
//+
MeshSize {8} = 0.454376;
//+
Cylinder(2) = {36.142432, 1.745804, 0.000000, 0.000000, 0.000000, 0.100000, 1.288803, 2*Pi};
//+
MeshSize {9} = 0.128880;
//+
MeshSize {10} = 0.128880;
//+
Cylinder(3) = {9.207082, 0.482753, 0.000000, 0.000000, 0.000000, 0.100000, 0.809269, 2*Pi};
//+
MeshSize {11} = 0.080927;
//+
MeshSize {12} = 0.080927;
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
Save "../msh/cad_434.msh2";
//+
Save "../mesh/cad_434.mesh";
//+
Save "../geo_unrolled/cad_434.geo_unrolled";
