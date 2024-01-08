//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.457046, -3.103287, 0.000000, 36.710833, 7.769414, 0.100000};
//+
MeshSize {1} = 1.284228;
//+
MeshSize {2} = 1.284228;
//+
MeshSize {3} = 1.334329;
//+
MeshSize {4} = 1.334329;
//+
MeshSize {5} = 0.926002;
//+
MeshSize {6} = 0.926002;
//+
MeshSize {7} = 0.886121;
//+
MeshSize {8} = 0.886121;
//+
Cylinder(2) = {21.884860, 2.114409, 0.000000, 0.000000, 0.000000, 0.100000, 0.950505, 2*Pi};
//+
MeshSize {9} = 0.095050;
//+
MeshSize {10} = 0.095050;
//+
Cylinder(3) = {18.540403, 0.235913, 0.000000, 0.000000, 0.000000, 0.100000, 0.548572, 2*Pi};
//+
MeshSize {11} = 0.054857;
//+
MeshSize {12} = 0.054857;
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
Save "../msh/cad_236.msh2";
//+
Save "../mesh/cad_236.mesh";
//+
Save "../geo_unrolled/cad_236.geo_unrolled";
