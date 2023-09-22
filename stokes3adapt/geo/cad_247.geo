//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.537036, -3.924747, 0.000000, 31.674945, 8.033385, 1.000000};
//+
MeshSize {1} = 1.367737;
//+
MeshSize {2} = 1.367737;
//+
MeshSize {3} = 1.772371;
//+
MeshSize {4} = 1.772371;
//+
MeshSize {5} = 0.847685;
//+
MeshSize {6} = 0.847685;
//+
MeshSize {7} = 0.832102;
//+
MeshSize {8} = 0.832102;
//+
Cylinder(2) = {10.690625, -1.118265, 0.000000, 0.000000, 0.000000, 1.000000, 0.718445, 2*Pi};
//+
MeshSize {9} = 0.071845;
//+
MeshSize {10} = 0.071845;
//+
Cylinder(3) = {24.244531, 0.245009, 0.000000, 0.000000, 0.000000, 1.000000, 1.496631, 2*Pi};
//+
MeshSize {11} = 0.149663;
//+
MeshSize {12} = 0.149663;
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
Save "../geo_unrolled/cad_247.geo_unrolled";
