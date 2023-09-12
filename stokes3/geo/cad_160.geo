//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.314580, -3.747798, 0.000000, 30.221533, 8.397598, 1.000000};
//+
MeshSize {1} = 3.082343;
//+
MeshSize {2} = 3.082343;
//+
MeshSize {3} = 0.875656;
//+
MeshSize {4} = 0.875656;
//+
MeshSize {5} = 3.082343;
//+
MeshSize {6} = 3.082343;
//+
MeshSize {7} = 0.875656;
//+
MeshSize {8} = 0.875656;
//+
Cylinder(2) = {20.907975, -0.708502, 0.000000, 0.000000, 0.000000, 1.000000, 1.339892, 2*Pi};
//+
MeshSize {9} = 0.133989;
//+
MeshSize {10} = 0.133989;
//+
Cylinder(3) = {22.673621, 2.233086, 0.000000, 0.000000, 0.000000, 1.000000, 1.049726, 2*Pi};
//+
MeshSize {11} = 0.104973;
//+
MeshSize {12} = 0.104973;
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
Save "../geo_unrolled/cad_160.geo_unrolled";
