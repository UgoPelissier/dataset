//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.663424, -3.813015, 0.000000, 36.979018, 8.853685, 1.000000};
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
Cylinder(2) = {32.702581, -0.081407, 0.000000, 0.000000, 0.000000, 1.000000, 1.484395, 2*Pi};
//+
MeshSize {9} = 0.148439;
//+
MeshSize {10} = 0.148439;
//+
Cylinder(3) = {18.005136, 0.360947, 0.000000, 0.000000, 0.000000, 1.000000, 1.002475, 2*Pi};
//+
MeshSize {11} = 0.100248;
//+
MeshSize {12} = 0.100248;
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
Save "../geo_unrolled/cad_279.geo_unrolled";
