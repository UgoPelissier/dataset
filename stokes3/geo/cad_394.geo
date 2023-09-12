//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.532855, -4.457615, 0.000000, 35.676657, 9.499760, 1.000000};
//+
MeshSize {1} = 3.651972;
//+
MeshSize {2} = 3.651972;
//+
MeshSize {3} = 0.621040;
//+
MeshSize {4} = 0.621040;
//+
MeshSize {5} = 3.651972;
//+
MeshSize {6} = 3.651972;
//+
MeshSize {7} = 0.621040;
//+
MeshSize {8} = 0.621040;
//+
Cylinder(2) = {34.231218, 2.933487, 0.000000, 0.000000, 0.000000, 1.000000, 1.440876, 2*Pi};
//+
MeshSize {9} = 0.144088;
//+
MeshSize {10} = 0.144088;
//+
Cylinder(3) = {25.241004, -0.034876, 0.000000, 0.000000, 0.000000, 1.000000, 1.374993, 2*Pi};
//+
MeshSize {11} = 0.137499;
//+
MeshSize {12} = 0.137499;
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
Save "../geo_unrolled/cad_394.geo_unrolled";
