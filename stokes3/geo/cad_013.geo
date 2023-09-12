//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.550325, -4.744446, 0.000000, 39.442499, 9.590069, 1.000000};
//+
MeshSize {1} = 0.693108;
//+
MeshSize {2} = 0.693108;
//+
MeshSize {3} = 4.027925;
//+
MeshSize {4} = 4.027925;
//+
MeshSize {5} = 0.693108;
//+
MeshSize {6} = 0.693108;
//+
MeshSize {7} = 4.027925;
//+
MeshSize {8} = 4.027925;
//+
Cylinder(2) = {6.651251, -0.137703, 0.000000, 0.000000, 0.000000, 1.000000, 0.713747, 2*Pi};
//+
MeshSize {9} = 0.071375;
//+
MeshSize {10} = 0.071375;
//+
Cylinder(3) = {18.197070, -0.738364, 0.000000, 0.000000, 0.000000, 1.000000, 1.457318, 2*Pi};
//+
MeshSize {11} = 0.145732;
//+
MeshSize {12} = 0.145732;
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
Save "../geo_unrolled/cad_013.geo_unrolled";
