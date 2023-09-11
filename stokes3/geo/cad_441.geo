//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.048919, -3.647645, 0.000000, 36.483850, 7.591803, 1.000000};
//+
MeshSize {1} = 3.672944;
//+
MeshSize {2} = 3.672944;
//+
MeshSize {3} = 3.672944;
//+
MeshSize {4} = 3.672944;
//+
MeshSize {5} = 0.591991;
//+
MeshSize {6} = 0.591991;
//+
MeshSize {7} = 0.591991;
//+
MeshSize {8} = 0.591991;
//+
Cylinder(2) = {31.192748, 1.267805, 0.000000, 0.000000, 0.000000, 1.000000, 1.338014, 2*Pi};
//+
MeshSize {9} = 0.133801;
//+
MeshSize {10} = 0.133801;
//+
Cylinder(3) = {22.324801, 1.453934, 0.000000, 0.000000, 0.000000, 1.000000, 1.094969, 2*Pi};
//+
MeshSize {11} = 0.109497;
//+
MeshSize {12} = 0.109497;
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
