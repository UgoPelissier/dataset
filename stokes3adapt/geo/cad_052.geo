//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.551917, -3.608792, 0.000000, 34.001529, 8.304443, 1.000000};
//+
MeshSize {1} = 0.932320;
//+
MeshSize {2} = 0.932320;
//+
MeshSize {3} = 0.763718;
//+
MeshSize {4} = 0.763718;
//+
MeshSize {5} = 1.809778;
//+
MeshSize {6} = 1.809778;
//+
MeshSize {7} = 1.278430;
//+
MeshSize {8} = 1.278430;
//+
Cylinder(2) = {6.518590, 1.640115, 0.000000, 0.000000, 0.000000, 1.000000, 1.071798, 2*Pi};
//+
MeshSize {9} = 0.107180;
//+
MeshSize {10} = 0.107180;
//+
Cylinder(3) = {25.732129, 1.704303, 0.000000, 0.000000, 0.000000, 1.000000, 1.311409, 2*Pi};
//+
MeshSize {11} = 0.131141;
//+
MeshSize {12} = 0.131141;
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
Save "../geo_unrolled/cad_052.geo_unrolled";
