//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.068421, -4.365621, 0.000000, 39.140870, 9.993565, 1.000000};
//+
MeshSize {1} = 3.952640;
//+
MeshSize {2} = 3.952640;
//+
MeshSize {3} = 3.952640;
//+
MeshSize {4} = 3.952640;
//+
MeshSize {5} = 0.999967;
//+
MeshSize {6} = 0.999967;
//+
MeshSize {7} = 1.115416;
//+
MeshSize {8} = 1.115416;
//+
Cylinder(2) = {29.280180, -0.659860, 0.000000, 0.000000, 0.000000, 1.000000, 0.598443, 2*Pi};
//+
MeshSize {9} = 0.059844;
//+
MeshSize {10} = 0.059844;
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
Save "../geo_unrolled/cad_096.geo_unrolled";
