//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.386079, -4.312334, 0.000000, 37.821397, 9.952045, 0.100000};
//+
MeshSize {1} = 1.066146;
//+
MeshSize {2} = 1.066146;
//+
MeshSize {3} = 1.113481;
//+
MeshSize {4} = 1.113481;
//+
MeshSize {5} = 1.086501;
//+
MeshSize {6} = 1.086501;
//+
MeshSize {7} = 0.913901;
//+
MeshSize {8} = 0.913901;
//+
Cylinder(2) = {22.549304, 3.679274, 0.000000, 0.000000, 0.000000, 0.100000, 1.374190, 2*Pi};
//+
MeshSize {9} = 0.137419;
//+
MeshSize {10} = 0.137419;
//+
Cylinder(3) = {16.822989, 0.258266, 0.000000, 0.000000, 0.000000, 0.100000, 0.956928, 2*Pi};
//+
MeshSize {11} = 0.095693;
//+
MeshSize {12} = 0.095693;
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
Save "../msh/cad_053.msh2";
//+
Save "../mesh/cad_053.mesh";
//+
Save "../geo_unrolled/cad_053.geo_unrolled";
