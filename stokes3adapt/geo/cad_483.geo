//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317382, -3.616989, 0.000000, 30.829064, 7.748334, 1.000000};
//+
MeshSize {1} = 0.161743;
//+
MeshSize {2} = 0.161743;
//+
MeshSize {3} = 0.350538;
//+
MeshSize {4} = 0.350538;
//+
MeshSize {5} = 5.361891;
//+
MeshSize {6} = 5.361891;
//+
MeshSize {7} = 5.244860;
//+
MeshSize {8} = 5.244860;
//+
Cylinder(2) = {2.791611, -1.497023, 0.000000, 0.000000, 0.000000, 1.000000, 0.907276, 2*Pi};
//+
MeshSize {9} = 0.090728;
//+
MeshSize {10} = 0.090728;
//+
Cylinder(3) = {5.269700, 0.886994, 0.000000, 0.000000, 0.000000, 1.000000, 0.825291, 2*Pi};
//+
MeshSize {11} = 0.082529;
//+
MeshSize {12} = 0.082529;
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
Save "../geo_unrolled/cad_483.geo_unrolled";
