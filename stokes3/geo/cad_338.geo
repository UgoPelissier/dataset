//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201187, -3.853089, 0.000000, 37.700768, 8.269431, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {19.204527, -1.456050, 0.000000, 0.000000, 0.000000, 1.000000, 0.506131, 2*Pi};
//+
MeshSize {9} = 0.050613;
//+
MeshSize {10} = 0.050613;
//+
Cylinder(3) = {25.994517, -1.311849, 0.000000, 0.000000, 0.000000, 1.000000, 1.224397, 2*Pi};
//+
MeshSize {11} = 0.122440;
//+
MeshSize {12} = 0.122440;
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
Save "../geo_unrolled/cad_338.geo_unrolled";
