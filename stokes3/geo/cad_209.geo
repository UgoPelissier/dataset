//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.882245, -4.820676, 0.000000, 38.314103, 9.992930, 1.000000};
//+
MeshSize {1} = 1.399888;
//+
MeshSize {2} = 1.399888;
//+
MeshSize {3} = 1.414189;
//+
MeshSize {4} = 1.414189;
//+
MeshSize {5} = 3.951352;
//+
MeshSize {6} = 3.951352;
//+
MeshSize {7} = 3.951352;
//+
MeshSize {8} = 3.951352;
//+
Cylinder(2) = {15.560738, -0.046128, 0.000000, 0.000000, 0.000000, 1.000000, 1.436609, 2*Pi};
//+
MeshSize {9} = 0.143661;
//+
MeshSize {10} = 0.143661;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_209.geo_unrolled";
