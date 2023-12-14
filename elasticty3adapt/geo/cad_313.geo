//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134871, -4.006014, 0.000000, 34.743740, 9.130621, 1.000000};
//+
MeshSize {1} = 0.469187;
//+
MeshSize {2} = 0.469187;
//+
MeshSize {3} = 0.432404;
//+
MeshSize {4} = 0.432404;
//+
MeshSize {5} = 4.019901;
//+
MeshSize {6} = 4.019901;
//+
MeshSize {7} = 3.431884;
//+
MeshSize {8} = 3.431884;
//+
Cylinder(2) = {6.839671, 1.059123, 0.000000, 0.000000, 0.000000, 0.100000, 1.235668, 2*Pi};
//+
MeshSize {9} = 0.123567;
//+
MeshSize {10} = 0.123567;
//+
Cylinder(3) = {11.280149, 3.872644, 0.000000, 0.000000, 0.000000, 0.100000, 0.589595, 2*Pi};
//+
MeshSize {11} = 0.058959;
//+
MeshSize {12} = 0.058959;
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
Save "../msh/cad_313.msh2";
//+
Save "../mesh/cad_313.mesh";
//+
Save "../geo_unrolled/cad_313.geo_unrolled";
