//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.444229, -3.445326, 0.000000, 35.624319, 8.504495, 1.000000};
//+
MeshSize {1} = 0.522228;
//+
MeshSize {2} = 0.522228;
//+
MeshSize {3} = 0.152362;
//+
MeshSize {4} = 0.152362;
//+
MeshSize {5} = 4.378332;
//+
MeshSize {6} = 4.378332;
//+
MeshSize {7} = 4.822202;
//+
MeshSize {8} = 4.822202;
//+
Cylinder(2) = {1.622495, 3.078409, 0.000000, 0.000000, 0.000000, 0.100000, 0.523263, 2*Pi};
//+
MeshSize {9} = 0.052326;
//+
MeshSize {10} = 0.052326;
//+
Cylinder(3) = {15.762584, -0.723423, 0.000000, 0.000000, 0.000000, 0.100000, 1.359648, 2*Pi};
//+
MeshSize {11} = 0.135965;
//+
MeshSize {12} = 0.135965;
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
Save "../msh/cad_482.msh2";
//+
Save "../mesh/cad_482.mesh";
//+
Save "../geo_unrolled/cad_482.geo_unrolled";
