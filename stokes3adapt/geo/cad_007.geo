//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.914548, -3.599433, 0.000000, 31.734254, 8.116569, 1.000000};
//+
MeshSize {1} = 3.534727;
//+
MeshSize {2} = 3.534727;
//+
MeshSize {3} = 4.274793;
//+
MeshSize {4} = 4.274793;
//+
MeshSize {5} = 0.336519;
//+
MeshSize {6} = 0.336519;
//+
MeshSize {7} = 0.517232;
//+
MeshSize {8} = 0.517232;
//+
Cylinder(2) = {18.327997, -1.925724, 0.000000, 0.000000, 0.000000, 1.000000, 1.084586, 2*Pi};
//+
MeshSize {9} = 0.108459;
//+
MeshSize {10} = 0.108459;
//+
Cylinder(3) = {29.312841, -0.816523, 0.000000, 0.000000, 0.000000, 1.000000, 0.719321, 2*Pi};
//+
MeshSize {11} = 0.071932;
//+
MeshSize {12} = 0.071932;
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
Save "../geo_unrolled/cad_007.geo_unrolled";
