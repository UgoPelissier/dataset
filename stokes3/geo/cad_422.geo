//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.854351, -3.861679, 0.000000, 33.059497, 8.736728, 1.000000};
//+
MeshSize {1} = 1.039178;
//+
MeshSize {2} = 1.039178;
//+
MeshSize {3} = 3.419403;
//+
MeshSize {4} = 3.419403;
//+
MeshSize {5} = 0.804411;
//+
MeshSize {6} = 0.804411;
//+
MeshSize {7} = 3.419403;
//+
MeshSize {8} = 3.419403;
//+
Cylinder(2) = {12.119659, -1.299420, 0.000000, 0.000000, 0.000000, 1.000000, 1.161240, 2*Pi};
//+
MeshSize {9} = 0.116124;
//+
MeshSize {10} = 0.116124;
//+
Cylinder(3) = {8.397541, 1.293759, 0.000000, 0.000000, 0.000000, 1.000000, 1.092532, 2*Pi};
//+
MeshSize {11} = 0.109253;
//+
MeshSize {12} = 0.109253;
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
Save "../geo_unrolled/cad_422.geo_unrolled";
