//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370181, -4.711311, 0.000000, 32.299597, 9.841636, 1.000000};
//+
MeshSize {1} = 3.303829;
//+
MeshSize {2} = 3.303829;
//+
MeshSize {3} = 3.303829;
//+
MeshSize {4} = 3.303829;
//+
MeshSize {5} = 0.807976;
//+
MeshSize {6} = 0.807976;
//+
MeshSize {7} = 1.135147;
//+
MeshSize {8} = 1.135147;
//+
Cylinder(2) = {21.171172, 1.074028, 0.000000, 0.000000, 0.000000, 1.000000, 0.671139, 2*Pi};
//+
MeshSize {9} = 0.067114;
//+
MeshSize {10} = 0.067114;
//+
Cylinder(3) = {23.820411, -3.312670, 0.000000, 0.000000, 0.000000, 1.000000, 0.879455, 2*Pi};
//+
MeshSize {11} = 0.087946;
//+
MeshSize {12} = 0.087946;
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
Save "../geo_unrolled/cad_005.geo_unrolled";
