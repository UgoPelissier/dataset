//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696072, -4.171959, 0.000000, 36.359290, 8.621504, 0.100000};
//+
MeshSize {1} = 4.981221;
//+
MeshSize {2} = 4.981221;
//+
MeshSize {3} = 4.940833;
//+
MeshSize {4} = 4.940833;
//+
MeshSize {5} = 0.325723;
//+
MeshSize {6} = 0.325723;
//+
MeshSize {7} = 0.263240;
//+
MeshSize {8} = 0.263240;
//+
Cylinder(2) = {30.939860, 0.420766, 0.000000, 0.000000, 0.000000, 0.100000, 1.227235, 2*Pi};
//+
MeshSize {9} = 0.122723;
//+
MeshSize {10} = 0.122723;
//+
Cylinder(3) = {33.540545, 0.834036, 0.000000, 0.000000, 0.000000, 0.100000, 0.516435, 2*Pi};
//+
MeshSize {11} = 0.051644;
//+
MeshSize {12} = 0.051644;
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
Save "../msh/cad_091.msh2";
//+
Save "../mesh/cad_091.mesh";
//+
Save "../geo_unrolled/cad_091.geo_unrolled";
