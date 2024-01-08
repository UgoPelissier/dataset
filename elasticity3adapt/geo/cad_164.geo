//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.858017, -2.883543, 0.000000, 35.934976, 7.738063, 1.000000};
//+
MeshSize {1} = 3.041728;
//+
MeshSize {2} = 3.041728;
//+
MeshSize {3} = 3.135392;
//+
MeshSize {4} = 3.135392;
//+
MeshSize {5} = 0.590373;
//+
MeshSize {6} = 0.590373;
//+
MeshSize {7} = 0.497094;
//+
MeshSize {8} = 0.497094;
//+
Cylinder(2) = {30.482325, 2.023299, 0.000000, 0.000000, 0.000000, 0.100000, 1.176235, 2*Pi};
//+
MeshSize {9} = 0.117623;
//+
MeshSize {10} = 0.117623;
//+
Cylinder(3) = {18.008652, 0.599124, 0.000000, 0.000000, 0.000000, 0.100000, 0.768717, 2*Pi};
//+
MeshSize {11} = 0.076872;
//+
MeshSize {12} = 0.076872;
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
Save "../msh/cad_164.msh2";
//+
Save "../mesh/cad_164.mesh";
//+
Save "../geo_unrolled/cad_164.geo_unrolled";
