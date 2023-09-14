//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361472, -3.271664, 0.000000, 38.476553, 8.061371, 1.000000};
//+
MeshSize {1} = 0.980975;
//+
MeshSize {2} = 0.980975;
//+
MeshSize {3} = 1.081443;
//+
MeshSize {4} = 1.081443;
//+
MeshSize {5} = 0.734201;
//+
MeshSize {6} = 0.734201;
//+
MeshSize {7} = 0.735447;
//+
MeshSize {8} = 0.735447;
//+
Cylinder(2) = {10.794370, -0.644409, 0.000000, 0.000000, 0.000000, 1.000000, 0.948861, 2*Pi};
//+
MeshSize {9} = 0.094886;
//+
MeshSize {10} = 0.094886;
//+
Cylinder(3) = {31.383418, 0.745925, 0.000000, 0.000000, 0.000000, 1.000000, 1.126297, 2*Pi};
//+
MeshSize {11} = 0.112630;
//+
MeshSize {12} = 0.112630;
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
Save "../geo_unrolled/cad_494.geo_unrolled";
