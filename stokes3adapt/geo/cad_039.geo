//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276269, -3.846865, 0.000000, 39.204357, 7.714032, 1.000000};
//+
MeshSize {1} = 2.028047;
//+
MeshSize {2} = 2.028047;
//+
MeshSize {3} = 1.996432;
//+
MeshSize {4} = 1.996432;
//+
MeshSize {5} = 0.735237;
//+
MeshSize {6} = 0.735237;
//+
MeshSize {7} = 0.739808;
//+
MeshSize {8} = 0.739808;
//+
Cylinder(2) = {28.428998, -0.088111, 0.000000, 0.000000, 0.000000, 1.000000, 1.258165, 2*Pi};
//+
MeshSize {9} = 0.125816;
//+
MeshSize {10} = 0.125816;
//+
Cylinder(3) = {18.684620, 0.238533, 0.000000, 0.000000, 0.000000, 1.000000, 0.925504, 2*Pi};
//+
MeshSize {11} = 0.092550;
//+
MeshSize {12} = 0.092550;
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
Save "../geo_unrolled/cad_039.geo_unrolled";
