//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.988331, -3.783517, 0.000000, 32.916206, 8.675338, 1.000000};
//+
MeshSize {1} = 3.418089;
//+
MeshSize {2} = 3.418089;
//+
MeshSize {3} = 0.873157;
//+
MeshSize {4} = 0.873157;
//+
MeshSize {5} = 3.418089;
//+
MeshSize {6} = 3.418089;
//+
MeshSize {7} = 0.902203;
//+
MeshSize {8} = 0.902203;
//+
Cylinder(2) = {24.850026, 1.112672, 0.000000, 0.000000, 0.000000, 1.000000, 1.271501, 2*Pi};
//+
MeshSize {9} = 0.127150;
//+
MeshSize {10} = 0.127150;
//+
Cylinder(3) = {24.926175, -1.452958, 0.000000, 0.000000, 0.000000, 1.000000, 0.544336, 2*Pi};
//+
MeshSize {11} = 0.054434;
//+
MeshSize {12} = 0.054434;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_093.geo_unrolled";
