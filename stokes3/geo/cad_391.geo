//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.562138, -4.045344, 0.000000, 33.421881, 9.226358, 1.000000};
//+
MeshSize {1} = 0.611985;
//+
MeshSize {2} = 0.611985;
//+
MeshSize {3} = 1.224438;
//+
MeshSize {4} = 1.224438;
//+
MeshSize {5} = 0.611985;
//+
MeshSize {6} = 0.611985;
//+
MeshSize {7} = 3.429570;
//+
MeshSize {8} = 3.429570;
//+
Cylinder(2) = {2.040277, 2.895398, 0.000000, 0.000000, 0.000000, 1.000000, 0.976539, 2*Pi};
//+
MeshSize {9} = 0.097654;
//+
MeshSize {10} = 0.097654;
//+
Cylinder(3) = {21.405249, -0.462657, 0.000000, 0.000000, 0.000000, 1.000000, 0.834657, 2*Pi};
//+
MeshSize {11} = 0.083466;
//+
MeshSize {12} = 0.083466;
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
Save "../geo_unrolled/cad_391.geo_unrolled";
