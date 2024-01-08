//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.693313, -3.448072, 0.000000, 31.229328, 8.116298, 0.100000};
//+
MeshSize {1} = 0.879496;
//+
MeshSize {2} = 0.879496;
//+
MeshSize {3} = 1.264874;
//+
MeshSize {4} = 1.264874;
//+
MeshSize {5} = 0.932860;
//+
MeshSize {6} = 0.932860;
//+
MeshSize {7} = 1.353525;
//+
MeshSize {8} = 1.353525;
//+
Cylinder(2) = {9.500643, -1.712505, 0.000000, 0.000000, 0.000000, 0.100000, 0.707278, 2*Pi};
//+
MeshSize {9} = 0.070728;
//+
MeshSize {10} = 0.070728;
//+
Cylinder(3) = {22.505088, -1.484952, 0.000000, 0.000000, 0.000000, 0.100000, 0.848803, 2*Pi};
//+
MeshSize {11} = 0.084880;
//+
MeshSize {12} = 0.084880;
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
Save "../msh/cad_117.msh2";
//+
Save "../mesh/cad_117.mesh";
//+
Save "../geo_unrolled/cad_117.geo_unrolled";
