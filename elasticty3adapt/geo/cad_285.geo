//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.286524, -3.327757, 0.000000, 31.161960, 7.918939, 1.000000};
//+
MeshSize {1} = 3.474051;
//+
MeshSize {2} = 3.474051;
//+
MeshSize {3} = 2.969249;
//+
MeshSize {4} = 2.969249;
//+
MeshSize {5} = 0.438417;
//+
MeshSize {6} = 0.438417;
//+
MeshSize {7} = 0.609745;
//+
MeshSize {8} = 0.609745;
//+
Cylinder(2) = {25.401479, -1.287712, 0.000000, 0.000000, 0.000000, 0.100000, 1.131273, 2*Pi};
//+
MeshSize {9} = 0.113127;
//+
MeshSize {10} = 0.113127;
//+
Cylinder(3) = {17.977135, 2.762924, 0.000000, 0.000000, 0.000000, 0.100000, 0.571344, 2*Pi};
//+
MeshSize {11} = 0.057134;
//+
MeshSize {12} = 0.057134;
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
Save "../msh/cad_285.msh2";
//+
Save "../mesh/cad_285.mesh";
//+
Save "../geo_unrolled/cad_285.geo_unrolled";
