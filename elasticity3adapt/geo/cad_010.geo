//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.000572, -4.587217, 0.000000, 30.194196, 9.822747, 0.100000};
//+
MeshSize {1} = 0.864615;
//+
MeshSize {2} = 0.864615;
//+
MeshSize {3} = 1.057675;
//+
MeshSize {4} = 1.057675;
//+
MeshSize {5} = 3.260788;
//+
MeshSize {6} = 3.260788;
//+
MeshSize {7} = 0.633633;
//+
MeshSize {8} = 0.633633;
//+
Cylinder(2) = {26.532803, 3.257866, 0.000000, 0.000000, 0.000000, 0.100000, 0.807514, 2*Pi};
//+
MeshSize {9} = 0.080751;
//+
MeshSize {10} = 0.080751;
//+
Cylinder(3) = {2.586286, -0.137612, 0.000000, 0.000000, 0.000000, 0.100000, 0.569213, 2*Pi};
//+
MeshSize {11} = 0.056921;
//+
MeshSize {12} = 0.056921;
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
Save "../msh/cad_010.msh2";
//+
Save "../mesh/cad_010.mesh";
//+
Save "../geo_unrolled/cad_010.geo_unrolled";
