//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.735675, -3.953047, 0.000000, 33.134199, 8.904182, 1.000000};
//+
MeshSize {1} = 0.329952;
//+
MeshSize {2} = 0.329952;
//+
MeshSize {3} = 0.188877;
//+
MeshSize {4} = 0.188877;
//+
MeshSize {5} = 4.983278;
//+
MeshSize {6} = 4.983278;
//+
MeshSize {7} = 5.574461;
//+
MeshSize {8} = 5.574461;
//+
Cylinder(2) = {8.866343, -2.134423, 0.000000, 0.000000, 0.000000, 0.100000, 0.946273, 2*Pi};
//+
MeshSize {9} = 0.094627;
//+
MeshSize {10} = 0.094627;
//+
Cylinder(3) = {2.973461, 1.619931, 0.000000, 0.000000, 0.000000, 0.100000, 1.345521, 2*Pi};
//+
MeshSize {11} = 0.134552;
//+
MeshSize {12} = 0.134552;
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
Save "../msh/cad_100.msh2";
//+
Save "../mesh/cad_100.mesh";
//+
Save "../geo_unrolled/cad_100.geo_unrolled";
