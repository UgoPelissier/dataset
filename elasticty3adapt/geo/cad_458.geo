//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.360729, -3.569943, 0.000000, 36.542205, 8.487493, 1.000000};
//+
MeshSize {1} = 1.442246;
//+
MeshSize {2} = 1.442246;
//+
MeshSize {3} = 1.560102;
//+
MeshSize {4} = 1.560102;
//+
MeshSize {5} = 0.829324;
//+
MeshSize {6} = 0.829324;
//+
MeshSize {7} = 0.881043;
//+
MeshSize {8} = 0.881043;
//+
Cylinder(2) = {23.977306, -0.544995, 0.000000, 0.000000, 0.000000, 0.100000, 1.126059, 2*Pi};
//+
MeshSize {9} = 0.112606;
//+
MeshSize {10} = 0.112606;
//+
Cylinder(3) = {17.101762, -0.220767, 0.000000, 0.000000, 0.000000, 0.100000, 0.521817, 2*Pi};
//+
MeshSize {11} = 0.052182;
//+
MeshSize {12} = 0.052182;
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
Save "../msh/cad_458.msh2";
//+
Save "../mesh/cad_458.mesh";
//+
Save "../geo_unrolled/cad_458.geo_unrolled";
