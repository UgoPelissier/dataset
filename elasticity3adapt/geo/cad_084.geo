//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.141428, -4.273279, 0.000000, 39.535537, 9.246200, 0.100000};
//+
MeshSize {1} = 0.644452;
//+
MeshSize {2} = 0.644452;
//+
MeshSize {3} = 0.704864;
//+
MeshSize {4} = 0.704864;
//+
MeshSize {5} = 2.358183;
//+
MeshSize {6} = 2.358183;
//+
MeshSize {7} = 2.298083;
//+
MeshSize {8} = 2.298083;
//+
Cylinder(2) = {15.551703, 0.878770, 0.000000, 0.000000, 0.000000, 0.100000, 1.438002, 2*Pi};
//+
MeshSize {9} = 0.143800;
//+
MeshSize {10} = 0.143800;
//+
Cylinder(3) = {12.283270, -1.140248, 0.000000, 0.000000, 0.000000, 0.100000, 1.291662, 2*Pi};
//+
MeshSize {11} = 0.129166;
//+
MeshSize {12} = 0.129166;
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
Save "../msh/cad_084.msh2";
//+
Save "../mesh/cad_084.mesh";
//+
Save "../geo_unrolled/cad_084.geo_unrolled";
