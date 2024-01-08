//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.198751, -4.046867, 0.000000, 33.058098, 9.447438, 0.100000};
//+
MeshSize {1} = 2.819314;
//+
MeshSize {2} = 2.819314;
//+
MeshSize {3} = 3.108056;
//+
MeshSize {4} = 3.108056;
//+
MeshSize {5} = 0.433973;
//+
MeshSize {6} = 0.433973;
//+
MeshSize {7} = 0.693972;
//+
MeshSize {8} = 0.693972;
//+
Cylinder(2) = {28.929678, -1.175900, 0.000000, 0.000000, 0.000000, 0.100000, 0.720663, 2*Pi};
//+
MeshSize {9} = 0.072066;
//+
MeshSize {10} = 0.072066;
//+
Cylinder(3) = {15.663652, -0.147307, 0.000000, 0.000000, 0.000000, 0.100000, 1.390489, 2*Pi};
//+
MeshSize {11} = 0.139049;
//+
MeshSize {12} = 0.139049;
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
Save "../msh/cad_384.msh2";
//+
Save "../mesh/cad_384.mesh";
//+
Save "../geo_unrolled/cad_384.geo_unrolled";
