//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276269, -3.846865, 0.000000, 39.204357, 7.714032, 1.000000};
//+
MeshSize {1} = 3.966858;
//+
MeshSize {2} = 3.966858;
//+
MeshSize {3} = 1.041517;
//+
MeshSize {4} = 1.041517;
//+
MeshSize {5} = 1.793074;
//+
MeshSize {6} = 1.793074;
//+
MeshSize {7} = 1.041517;
//+
MeshSize {8} = 1.041517;
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
