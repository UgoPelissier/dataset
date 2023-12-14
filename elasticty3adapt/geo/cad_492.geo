//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.065361, -3.946284, 0.000000, 30.585133, 8.149061, 1.000000};
//+
MeshSize {1} = 0.765032;
//+
MeshSize {2} = 0.765032;
//+
MeshSize {3} = 0.732338;
//+
MeshSize {4} = 0.732338;
//+
MeshSize {5} = 1.665269;
//+
MeshSize {6} = 1.665269;
//+
MeshSize {7} = 2.286043;
//+
MeshSize {8} = 2.286043;
//+
Cylinder(2) = {17.467817, -2.216828, 0.000000, 0.000000, 0.000000, 0.100000, 1.023080, 2*Pi};
//+
MeshSize {9} = 0.102308;
//+
MeshSize {10} = 0.102308;
//+
Cylinder(3) = {7.752156, 0.489889, 0.000000, 0.000000, 0.000000, 0.100000, 0.953926, 2*Pi};
//+
MeshSize {11} = 0.095393;
//+
MeshSize {12} = 0.095393;
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
Save "../msh/cad_492.msh2";
//+
Save "../mesh/cad_492.mesh";
//+
Save "../geo_unrolled/cad_492.geo_unrolled";
