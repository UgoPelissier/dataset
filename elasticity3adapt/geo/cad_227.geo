//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.094998, -4.056794, 0.000000, 30.363892, 9.629997, 1.000000};
//+
MeshSize {1} = 0.646414;
//+
MeshSize {2} = 0.646414;
//+
MeshSize {3} = 0.285101;
//+
MeshSize {4} = 0.285101;
//+
MeshSize {5} = 3.686036;
//+
MeshSize {6} = 3.686036;
//+
MeshSize {7} = 3.537890;
//+
MeshSize {8} = 3.537890;
//+
Cylinder(2) = {13.332299, 1.173001, 0.000000, 0.000000, 0.000000, 0.100000, 1.378476, 2*Pi};
//+
MeshSize {9} = 0.137848;
//+
MeshSize {10} = 0.137848;
//+
Cylinder(3) = {2.831194, 3.033105, 0.000000, 0.000000, 0.000000, 0.100000, 0.682869, 2*Pi};
//+
MeshSize {11} = 0.068287;
//+
MeshSize {12} = 0.068287;
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
Save "../msh/cad_227.msh2";
//+
Save "../mesh/cad_227.mesh";
//+
Save "../geo_unrolled/cad_227.geo_unrolled";
