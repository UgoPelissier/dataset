//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.416522, -3.165566, 0.000000, 38.281343, 8.066794, 1.000000};
//+
MeshSize {1} = 3.185907;
//+
MeshSize {2} = 3.185907;
//+
MeshSize {3} = 3.191201;
//+
MeshSize {4} = 3.191201;
//+
MeshSize {5} = 0.482860;
//+
MeshSize {6} = 0.482860;
//+
MeshSize {7} = 0.573433;
//+
MeshSize {8} = 0.573433;
//+
Cylinder(2) = {25.261161, 0.825246, 0.000000, 0.000000, 0.000000, 1.000000, 0.511434, 2*Pi};
//+
MeshSize {9} = 0.051143;
//+
MeshSize {10} = 0.051143;
//+
Cylinder(3) = {30.084441, -0.947953, 0.000000, 0.000000, 0.000000, 1.000000, 0.804783, 2*Pi};
//+
MeshSize {11} = 0.080478;
//+
MeshSize {12} = 0.080478;
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
Save "../geo_unrolled/cad_310.geo_unrolled";
