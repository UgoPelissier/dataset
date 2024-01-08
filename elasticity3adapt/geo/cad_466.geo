//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.732552, -4.068965, 0.000000, 35.738378, 8.336519, 0.100000};
//+
MeshSize {1} = 2.675948;
//+
MeshSize {2} = 2.675948;
//+
MeshSize {3} = 2.093591;
//+
MeshSize {4} = 2.093591;
//+
MeshSize {5} = 0.599353;
//+
MeshSize {6} = 0.599353;
//+
MeshSize {7} = 0.733042;
//+
MeshSize {8} = 0.733042;
//+
Cylinder(2) = {15.162783, 2.242800, 0.000000, 0.000000, 0.000000, 0.100000, 0.745316, 2*Pi};
//+
MeshSize {9} = 0.074532;
//+
MeshSize {10} = 0.074532;
//+
Cylinder(3) = {29.510278, -1.322838, 0.000000, 0.000000, 0.000000, 0.100000, 1.005023, 2*Pi};
//+
MeshSize {11} = 0.100502;
//+
MeshSize {12} = 0.100502;
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
Save "../msh/cad_466.msh2";
//+
Save "../mesh/cad_466.mesh";
//+
Save "../geo_unrolled/cad_466.geo_unrolled";
