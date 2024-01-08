//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.879326, -3.873481, 0.000000, 31.883148, 9.475015, 1.000000};
//+
MeshSize {1} = 0.798518;
//+
MeshSize {2} = 0.798518;
//+
MeshSize {3} = 0.920740;
//+
MeshSize {4} = 0.920740;
//+
MeshSize {5} = 0.859349;
//+
MeshSize {6} = 0.859349;
//+
MeshSize {7} = 2.871722;
//+
MeshSize {8} = 2.871722;
//+
Cylinder(2) = {26.883231, -2.057604, 0.000000, 0.000000, 0.000000, 0.100000, 0.798556, 2*Pi};
//+
MeshSize {9} = 0.079856;
//+
MeshSize {10} = 0.079856;
//+
Cylinder(3) = {4.868354, 0.365552, 0.000000, 0.000000, 0.000000, 0.100000, 0.845124, 2*Pi};
//+
MeshSize {11} = 0.084512;
//+
MeshSize {12} = 0.084512;
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
Save "../msh/cad_051.msh2";
//+
Save "../mesh/cad_051.mesh";
//+
Save "../geo_unrolled/cad_051.geo_unrolled";
