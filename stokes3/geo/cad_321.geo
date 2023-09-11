//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102312, -4.292591, 0.000000, 36.521242, 9.608210, 1.000000};
//+
MeshSize {1} = 1.364339;
//+
MeshSize {2} = 1.364339;
//+
MeshSize {3} = 3.693730;
//+
MeshSize {4} = 3.693730;
//+
MeshSize {5} = 0.998650;
//+
MeshSize {6} = 0.998650;
//+
MeshSize {7} = 3.693730;
//+
MeshSize {8} = 3.693730;
//+
Cylinder(2) = {13.705624, 1.415694, 0.000000, 0.000000, 0.000000, 1.000000, 1.109050, 2*Pi};
//+
MeshSize {9} = 0.110905;
//+
MeshSize {10} = 0.110905;
//+
Cylinder(3) = {9.564128, 2.028233, 0.000000, 0.000000, 0.000000, 1.000000, 1.392374, 2*Pi};
//+
MeshSize {11} = 0.139237;
//+
MeshSize {12} = 0.139237;
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
