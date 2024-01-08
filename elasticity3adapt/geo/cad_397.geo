//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.304082, -3.832717, 0.000000, 37.589400, 7.929343, 0.100000};
//+
MeshSize {1} = 0.916502;
//+
MeshSize {2} = 0.916502;
//+
MeshSize {3} = 0.937081;
//+
MeshSize {4} = 0.937081;
//+
MeshSize {5} = 1.025727;
//+
MeshSize {6} = 1.025727;
//+
MeshSize {7} = 1.473425;
//+
MeshSize {8} = 1.473425;
//+
Cylinder(2) = {9.852588, -0.124942, 0.000000, 0.000000, 0.000000, 0.100000, 1.470724, 2*Pi};
//+
MeshSize {9} = 0.147072;
//+
MeshSize {10} = 0.147072;
//+
Cylinder(3) = {26.973042, -1.702853, 0.000000, 0.000000, 0.000000, 0.100000, 1.473206, 2*Pi};
//+
MeshSize {11} = 0.147321;
//+
MeshSize {12} = 0.147321;
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
Save "../msh/cad_397.msh2";
//+
Save "../mesh/cad_397.mesh";
//+
Save "../geo_unrolled/cad_397.geo_unrolled";
