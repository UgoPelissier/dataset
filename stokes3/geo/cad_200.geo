//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.942442, -3.781383, 0.000000, 37.955090, 7.892759, 1.000000};
//+
MeshSize {1} = 0.264188;
//+
MeshSize {2} = 0.264188;
//+
MeshSize {3} = 0.640873;
//+
MeshSize {4} = 0.640873;
//+
MeshSize {5} = 1.178356;
//+
MeshSize {6} = 1.178356;
//+
MeshSize {7} = 1.078222;
//+
MeshSize {8} = 1.078222;
//+
Cylinder(2) = {3.938679, -2.324019, 0.000000, 0.000000, 0.000000, 1.000000, 0.689984, 2*Pi};
//+
MeshSize {9} = 0.068998;
//+
MeshSize {10} = 0.068998;
//+
Cylinder(3) = {27.119232, 1.752493, 0.000000, 0.000000, 0.000000, 1.000000, 1.229974, 2*Pi};
//+
MeshSize {11} = 0.122997;
//+
MeshSize {12} = 0.122997;
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
Save "../geo_unrolled/cad_200.geo_unrolled";
