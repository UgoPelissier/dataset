//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.355283, -3.990903, 0.000000, 32.715569, 9.470226, 0.100000};
//+
MeshSize {1} = 1.707472;
//+
MeshSize {2} = 1.707472;
//+
MeshSize {3} = 3.257437;
//+
MeshSize {4} = 3.257437;
//+
MeshSize {5} = 0.576438;
//+
MeshSize {6} = 0.576438;
//+
MeshSize {7} = 0.745956;
//+
MeshSize {8} = 0.745956;
//+
Cylinder(2) = {10.956940, -2.267558, 0.000000, 0.000000, 0.000000, 0.100000, 0.794051, 2*Pi};
//+
MeshSize {9} = 0.079405;
//+
MeshSize {10} = 0.079405;
//+
Cylinder(3) = {28.150369, -0.279025, 0.000000, 0.000000, 0.000000, 0.100000, 1.366393, 2*Pi};
//+
MeshSize {11} = 0.136639;
//+
MeshSize {12} = 0.136639;
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
Save "../msh/cad_217.msh2";
//+
Save "../mesh/cad_217.mesh";
//+
Save "../geo_unrolled/cad_217.geo_unrolled";
