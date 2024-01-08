//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317317, -3.365629, 0.000000, 31.100640, 7.792105, 1.000000};
//+
MeshSize {1} = 4.168325;
//+
MeshSize {2} = 4.168325;
//+
MeshSize {3} = 4.603287;
//+
MeshSize {4} = 4.603287;
//+
MeshSize {5} = 0.421927;
//+
MeshSize {6} = 0.421927;
//+
MeshSize {7} = 0.305212;
//+
MeshSize {8} = 0.305212;
//+
Cylinder(2) = {26.227838, 1.931066, 0.000000, 0.000000, 0.000000, 0.100000, 1.426237, 2*Pi};
//+
MeshSize {9} = 0.142624;
//+
MeshSize {10} = 0.142624;
//+
Cylinder(3) = {23.926783, -1.840823, 0.000000, 0.000000, 0.000000, 0.100000, 0.813010, 2*Pi};
//+
MeshSize {11} = 0.081301;
//+
MeshSize {12} = 0.081301;
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
Save "../msh/cad_445.msh2";
//+
Save "../mesh/cad_445.mesh";
//+
Save "../geo_unrolled/cad_445.geo_unrolled";
