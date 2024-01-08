//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.085234, -3.828368, 0.000000, 37.463218, 8.401609, 1.000000};
//+
MeshSize {1} = 2.644751;
//+
MeshSize {2} = 2.644751;
//+
MeshSize {3} = 2.976781;
//+
MeshSize {4} = 2.976781;
//+
MeshSize {5} = 0.704712;
//+
MeshSize {6} = 0.704712;
//+
MeshSize {7} = 0.473856;
//+
MeshSize {8} = 0.473856;
//+
Cylinder(2) = {15.522884, -0.761948, 0.000000, 0.000000, 0.000000, 0.100000, 0.958753, 2*Pi};
//+
MeshSize {9} = 0.095875;
//+
MeshSize {10} = 0.095875;
//+
Cylinder(3) = {32.005943, 2.475176, 0.000000, 0.000000, 0.000000, 0.100000, 0.861774, 2*Pi};
//+
MeshSize {11} = 0.086177;
//+
MeshSize {12} = 0.086177;
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
Save "../msh/cad_467.msh2";
//+
Save "../mesh/cad_467.mesh";
//+
Save "../geo_unrolled/cad_467.geo_unrolled";
