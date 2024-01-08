//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370181, -4.711311, 0.000000, 32.299597, 9.841636, 1.000000};
//+
MeshSize {1} = 2.597579;
//+
MeshSize {2} = 2.597579;
//+
MeshSize {3} = 2.452216;
//+
MeshSize {4} = 2.452216;
//+
MeshSize {5} = 0.530932;
//+
MeshSize {6} = 0.530932;
//+
MeshSize {7} = 0.745920;
//+
MeshSize {8} = 0.745920;
//+
Cylinder(2) = {21.171172, 1.074028, 0.000000, 0.000000, 0.000000, 0.100000, 0.671139, 2*Pi};
//+
MeshSize {9} = 0.067114;
//+
MeshSize {10} = 0.067114;
//+
Cylinder(3) = {23.820411, -3.312670, 0.000000, 0.000000, 0.000000, 0.100000, 0.879455, 2*Pi};
//+
MeshSize {11} = 0.087946;
//+
MeshSize {12} = 0.087946;
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
Save "../msh/cad_005.msh2";
//+
Save "../mesh/cad_005.mesh";
//+
Save "../geo_unrolled/cad_005.geo_unrolled";
