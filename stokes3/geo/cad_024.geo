//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.254723, -4.198184, 0.000000, 29.762190, 9.813938, 1.000000};
//+
MeshSize {1} = 3.041535;
//+
MeshSize {2} = 3.041535;
//+
MeshSize {3} = 0.972367;
//+
MeshSize {4} = 0.972367;
//+
MeshSize {5} = 3.041535;
//+
MeshSize {6} = 3.041535;
//+
MeshSize {7} = 1.399891;
//+
MeshSize {8} = 1.399891;
//+
Cylinder(2) = {16.162667, 2.153472, 0.000000, 0.000000, 0.000000, 1.000000, 1.241950, 2*Pi};
//+
MeshSize {9} = 0.124195;
//+
MeshSize {10} = 0.124195;
//+
Cylinder(3) = {20.130197, -1.332522, 0.000000, 0.000000, 0.000000, 1.000000, 0.569974, 2*Pi};
//+
MeshSize {11} = 0.056997;
//+
MeshSize {12} = 0.056997;
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
Save "../geo_unrolled/cad_024.geo_unrolled";
