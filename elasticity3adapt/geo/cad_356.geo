//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570276, -4.015962, 0.000000, 32.475225, 9.858333, 0.100000};
//+
MeshSize {1} = 1.207509;
//+
MeshSize {2} = 1.207509;
//+
MeshSize {3} = 1.312683;
//+
MeshSize {4} = 1.312683;
//+
MeshSize {5} = 1.026895;
//+
MeshSize {6} = 1.026895;
//+
MeshSize {7} = 0.831313;
//+
MeshSize {8} = 0.831313;
//+
Cylinder(2) = {12.201156, 0.481926, 0.000000, 0.000000, 0.000000, 0.100000, 0.553127, 2*Pi};
//+
MeshSize {9} = 0.055313;
//+
MeshSize {10} = 0.055313;
//+
Cylinder(3) = {23.242690, 3.162093, 0.000000, 0.000000, 0.000000, 0.100000, 0.859245, 2*Pi};
//+
MeshSize {11} = 0.085924;
//+
MeshSize {12} = 0.085924;
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
Save "../msh/cad_356.msh2";
//+
Save "../mesh/cad_356.mesh";
//+
Save "../geo_unrolled/cad_356.geo_unrolled";
