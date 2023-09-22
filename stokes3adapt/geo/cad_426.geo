//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.209739, -3.331657, 0.000000, 36.305629, 8.254618, 1.000000};
//+
MeshSize {1} = 0.883617;
//+
MeshSize {2} = 0.883617;
//+
MeshSize {3} = 1.340712;
//+
MeshSize {4} = 1.340712;
//+
MeshSize {5} = 0.914764;
//+
MeshSize {6} = 0.914764;
//+
MeshSize {7} = 1.327192;
//+
MeshSize {8} = 1.327192;
//+
Cylinder(2) = {29.362983, -0.553798, 0.000000, 0.000000, 0.000000, 1.000000, 1.039948, 2*Pi};
//+
MeshSize {9} = 0.103995;
//+
MeshSize {10} = 0.103995;
//+
Cylinder(3) = {7.305885, -0.806468, 0.000000, 0.000000, 0.000000, 1.000000, 1.124964, 2*Pi};
//+
MeshSize {11} = 0.112496;
//+
MeshSize {12} = 0.112496;
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
Save "../geo_unrolled/cad_426.geo_unrolled";
