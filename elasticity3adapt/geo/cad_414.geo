//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.578134, -3.975450, 0.000000, 31.591847, 7.978869, 1.000000};
//+
MeshSize {1} = 1.472441;
//+
MeshSize {2} = 1.472441;
//+
MeshSize {3} = 1.257240;
//+
MeshSize {4} = 1.257240;
//+
MeshSize {5} = 0.881190;
//+
MeshSize {6} = 0.881190;
//+
MeshSize {7} = 0.901857;
//+
MeshSize {8} = 0.901857;
//+
Cylinder(2) = {16.219952, 1.657659, 0.000000, 0.000000, 0.000000, 0.100000, 0.866463, 2*Pi};
//+
MeshSize {9} = 0.086646;
//+
MeshSize {10} = 0.086646;
//+
Cylinder(3) = {18.960362, -0.481398, 0.000000, 0.000000, 0.000000, 0.100000, 1.457748, 2*Pi};
//+
MeshSize {11} = 0.145775;
//+
MeshSize {12} = 0.145775;
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
Save "../msh/cad_414.msh2";
//+
Save "../mesh/cad_414.mesh";
//+
Save "../geo_unrolled/cad_414.geo_unrolled";
