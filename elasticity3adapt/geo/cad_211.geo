//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.870481, -3.367512, 0.000000, 32.627118, 7.908784, 0.100000};
//+
MeshSize {1} = 2.048056;
//+
MeshSize {2} = 2.048056;
//+
MeshSize {3} = 3.080323;
//+
MeshSize {4} = 3.080323;
//+
MeshSize {5} = 0.791665;
//+
MeshSize {6} = 0.791665;
//+
MeshSize {7} = 0.483394;
//+
MeshSize {8} = 0.483394;
//+
Cylinder(2) = {29.963332, 1.968980, 0.000000, 0.000000, 0.000000, 0.100000, 1.188851, 2*Pi};
//+
MeshSize {9} = 0.118885;
//+
MeshSize {10} = 0.118885;
//+
Cylinder(3) = {9.549140, -0.897128, 0.000000, 0.000000, 0.000000, 0.100000, 0.662907, 2*Pi};
//+
MeshSize {11} = 0.066291;
//+
MeshSize {12} = 0.066291;
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
Save "../msh/cad_211.msh2";
//+
Save "../mesh/cad_211.mesh";
//+
Save "../geo_unrolled/cad_211.geo_unrolled";
