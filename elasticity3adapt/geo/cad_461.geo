//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.422005, -4.550246, 0.000000, 30.213101, 9.732193, 1.000000};
//+
MeshSize {1} = 3.227308;
//+
MeshSize {2} = 3.227308;
//+
MeshSize {3} = 3.576677;
//+
MeshSize {4} = 3.576677;
//+
MeshSize {5} = 0.291943;
//+
MeshSize {6} = 0.291943;
//+
MeshSize {7} = 0.700962;
//+
MeshSize {8} = 0.700962;
//+
Cylinder(2) = {12.779050, -0.259480, 0.000000, 0.000000, 0.000000, 0.100000, 0.994789, 2*Pi};
//+
MeshSize {9} = 0.099479;
//+
MeshSize {10} = 0.099479;
//+
Cylinder(3) = {28.765276, -1.491321, 0.000000, 0.000000, 0.000000, 0.100000, 1.197514, 2*Pi};
//+
MeshSize {11} = 0.119751;
//+
MeshSize {12} = 0.119751;
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
Save "../msh/cad_461.msh2";
//+
Save "../mesh/cad_461.mesh";
//+
Save "../geo_unrolled/cad_461.geo_unrolled";
