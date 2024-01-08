//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.997456, -3.169616, 0.000000, 30.345318, 7.679365, 0.100000};
//+
MeshSize {1} = 3.039453;
//+
MeshSize {2} = 3.039453;
//+
MeshSize {3} = 3.303711;
//+
MeshSize {4} = 3.303711;
//+
MeshSize {5} = 0.536274;
//+
MeshSize {6} = 0.536274;
//+
MeshSize {7} = 0.525818;
//+
MeshSize {8} = 0.525818;
//+
Cylinder(2) = {20.129674, -0.646177, 0.000000, 0.000000, 0.000000, 0.100000, 0.956029, 2*Pi};
//+
MeshSize {9} = 0.095603;
//+
MeshSize {10} = 0.095603;
//+
Cylinder(3) = {24.727206, 0.801952, 0.000000, 0.000000, 0.000000, 0.100000, 0.925704, 2*Pi};
//+
MeshSize {11} = 0.092570;
//+
MeshSize {12} = 0.092570;
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
Save "../msh/cad_358.msh2";
//+
Save "../mesh/cad_358.mesh";
//+
Save "../geo_unrolled/cad_358.geo_unrolled";
