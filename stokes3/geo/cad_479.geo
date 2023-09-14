//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.460936, -4.383003, 0.000000, 34.029811, 9.665864, 1.000000};
//+
MeshSize {1} = 1.182411;
//+
MeshSize {2} = 1.182411;
//+
MeshSize {3} = 0.985275;
//+
MeshSize {4} = 0.985275;
//+
MeshSize {5} = 3.482770;
//+
MeshSize {6} = 3.482770;
//+
MeshSize {7} = 3.482770;
//+
MeshSize {8} = 3.482770;
//+
Cylinder(2) = {11.216953, 2.897938, 0.000000, 0.000000, 0.000000, 1.000000, 1.164502, 2*Pi};
//+
MeshSize {9} = 0.116450;
//+
MeshSize {10} = 0.116450;
//+
Cylinder(3) = {14.128387, -2.582503, 0.000000, 0.000000, 0.000000, 1.000000, 0.895397, 2*Pi};
//+
MeshSize {11} = 0.089540;
//+
MeshSize {12} = 0.089540;
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
Save "../geo_unrolled/cad_479.geo_unrolled";
