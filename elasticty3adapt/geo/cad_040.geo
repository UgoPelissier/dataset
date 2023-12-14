//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.745935, -3.757854, 0.000000, 36.282614, 8.177291, 1.000000};
//+
MeshSize {1} = 0.257046;
//+
MeshSize {2} = 0.257046;
//+
MeshSize {3} = 0.260449;
//+
MeshSize {4} = 0.260449;
//+
MeshSize {5} = 5.052035;
//+
MeshSize {6} = 5.052035;
//+
MeshSize {7} = 5.513502;
//+
MeshSize {8} = 5.513502;
//+
Cylinder(2) = {4.426939, 0.293270, 0.000000, 0.000000, 0.000000, 0.100000, 1.262190, 2*Pi};
//+
MeshSize {9} = 0.126219;
//+
MeshSize {10} = 0.126219;
//+
Cylinder(3) = {8.423372, -2.621300, 0.000000, 0.000000, 0.000000, 0.100000, 0.514148, 2*Pi};
//+
MeshSize {11} = 0.051415;
//+
MeshSize {12} = 0.051415;
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
Save "../msh/cad_040.msh2";
//+
Save "../mesh/cad_040.mesh";
//+
Save "../geo_unrolled/cad_040.geo_unrolled";
