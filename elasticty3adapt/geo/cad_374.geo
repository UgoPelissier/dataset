//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.785382, -4.402565, 0.000000, 29.247692, 9.885388, 1.000000};
//+
MeshSize {1} = 4.776102;
//+
MeshSize {2} = 4.776102;
//+
MeshSize {3} = 4.959540;
//+
MeshSize {4} = 4.959540;
//+
MeshSize {5} = 0.175316;
//+
MeshSize {6} = 0.175316;
//+
MeshSize {7} = 0.435272;
//+
MeshSize {8} = 0.435272;
//+
Cylinder(2) = {24.566353, -0.177281, 0.000000, 0.000000, 0.000000, 0.100000, 1.067244, 2*Pi};
//+
MeshSize {9} = 0.106724;
//+
MeshSize {10} = 0.106724;
//+
Cylinder(3) = {28.082191, -1.394647, 0.000000, 0.000000, 0.000000, 0.100000, 1.181836, 2*Pi};
//+
MeshSize {11} = 0.118184;
//+
MeshSize {12} = 0.118184;
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
Save "../msh/cad_374.msh2";
//+
Save "../mesh/cad_374.mesh";
//+
Save "../geo_unrolled/cad_374.geo_unrolled";
