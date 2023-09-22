//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.251700, -4.245668, 0.000000, 35.998637, 8.984516, 1.000000};
//+
MeshSize {1} = 5.340844;
//+
MeshSize {2} = 5.340844;
//+
MeshSize {3} = 5.656827;
//+
MeshSize {4} = 5.656827;
//+
MeshSize {5} = 0.135634;
//+
MeshSize {6} = 0.135634;
//+
MeshSize {7} = 0.334591;
//+
MeshSize {8} = 0.334591;
//+
Cylinder(2) = {34.395170, -1.507447, 0.000000, 0.000000, 0.000000, 1.000000, 1.120192, 2*Pi};
//+
MeshSize {9} = 0.112019;
//+
MeshSize {10} = 0.112019;
//+
Cylinder(3) = {29.148043, -1.531485, 0.000000, 0.000000, 0.000000, 1.000000, 0.834736, 2*Pi};
//+
MeshSize {11} = 0.083474;
//+
MeshSize {12} = 0.083474;
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
Save "../geo_unrolled/cad_147.geo_unrolled";
