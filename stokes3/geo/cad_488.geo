//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.610445, -3.645209, 0.000000, 32.572594, 9.205252, 1.000000};
//+
MeshSize {1} = 1.011525;
//+
MeshSize {2} = 1.011525;
//+
MeshSize {3} = 1.115652;
//+
MeshSize {4} = 1.115652;
//+
MeshSize {5} = 0.983199;
//+
MeshSize {6} = 0.983199;
//+
MeshSize {7} = 1.119022;
//+
MeshSize {8} = 1.119022;
//+
Cylinder(2) = {11.336315, -0.370057, 0.000000, 0.000000, 0.000000, 1.000000, 1.099514, 2*Pi};
//+
MeshSize {9} = 0.109951;
//+
MeshSize {10} = 0.109951;
//+
Cylinder(3) = {22.322443, -0.799356, 0.000000, 0.000000, 0.000000, 1.000000, 1.395268, 2*Pi};
//+
MeshSize {11} = 0.139527;
//+
MeshSize {12} = 0.139527;
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
Save "../geo_unrolled/cad_488.geo_unrolled";
