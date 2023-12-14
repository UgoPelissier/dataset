//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.260680, -4.061944, 0.000000, 38.007006, 9.498822, 1.000000};
//+
MeshSize {1} = 0.697391;
//+
MeshSize {2} = 0.697391;
//+
MeshSize {3} = 0.850438;
//+
MeshSize {4} = 0.850438;
//+
MeshSize {5} = 1.917279;
//+
MeshSize {6} = 1.917279;
//+
MeshSize {7} = 1.770968;
//+
MeshSize {8} = 1.770968;
//+
Cylinder(2) = {7.602401, -0.812183, 0.000000, 0.000000, 0.000000, 0.100000, 0.681889, 2*Pi};
//+
MeshSize {9} = 0.068189;
//+
MeshSize {10} = 0.068189;
//+
Cylinder(3) = {24.763276, 1.202811, 0.000000, 0.000000, 0.000000, 0.100000, 1.406845, 2*Pi};
//+
MeshSize {11} = 0.140684;
//+
MeshSize {12} = 0.140684;
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
Save "../msh/cad_438.msh2";
//+
Save "../mesh/cad_438.mesh";
//+
Save "../geo_unrolled/cad_438.geo_unrolled";
