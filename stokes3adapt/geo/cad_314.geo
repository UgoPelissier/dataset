//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.671748, -3.727382, 0.000000, 32.811331, 8.301846, 1.000000};
//+
MeshSize {1} = 4.470100;
//+
MeshSize {2} = 4.470100;
//+
MeshSize {3} = 4.040810;
//+
MeshSize {4} = 4.040810;
//+
MeshSize {5} = 0.477500;
//+
MeshSize {6} = 0.477500;
//+
MeshSize {7} = 0.282420;
//+
MeshSize {8} = 0.282420;
//+
Cylinder(2) = {25.371260, 2.928594, 0.000000, 0.000000, 0.000000, 1.000000, 0.612372, 2*Pi};
//+
MeshSize {9} = 0.061237;
//+
MeshSize {10} = 0.061237;
//+
Cylinder(3) = {29.088503, 2.657703, 0.000000, 0.000000, 0.000000, 1.000000, 0.513733, 2*Pi};
//+
MeshSize {11} = 0.051373;
//+
MeshSize {12} = 0.051373;
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
Save "../geo_unrolled/cad_314.geo_unrolled";
