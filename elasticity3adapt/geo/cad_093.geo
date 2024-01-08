//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.988331, -3.783517, 0.000000, 32.916206, 8.675338, 1.000000};
//+
MeshSize {1} = 3.113086;
//+
MeshSize {2} = 3.113086;
//+
MeshSize {3} = 3.032987;
//+
MeshSize {4} = 3.032987;
//+
MeshSize {5} = 0.552225;
//+
MeshSize {6} = 0.552225;
//+
MeshSize {7} = 0.540110;
//+
MeshSize {8} = 0.540110;
//+
Cylinder(2) = {24.850026, 1.112672, 0.000000, 0.000000, 0.000000, 0.100000, 1.271501, 2*Pi};
//+
MeshSize {9} = 0.127150;
//+
MeshSize {10} = 0.127150;
//+
Cylinder(3) = {24.926175, -1.452958, 0.000000, 0.000000, 0.000000, 0.100000, 0.544336, 2*Pi};
//+
MeshSize {11} = 0.054434;
//+
MeshSize {12} = 0.054434;
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
Save "../msh/cad_093.msh2";
//+
Save "../mesh/cad_093.mesh";
//+
Save "../geo_unrolled/cad_093.geo_unrolled";
