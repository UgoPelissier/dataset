//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597649, -3.873779, 0.000000, 32.822803, 9.274737, 1.000000};
//+
MeshSize {1} = 3.374065;
//+
MeshSize {2} = 3.374065;
//+
MeshSize {3} = 3.374065;
//+
MeshSize {4} = 3.374065;
//+
MeshSize {5} = 0.924997;
//+
MeshSize {6} = 0.924997;
//+
MeshSize {7} = 0.756827;
//+
MeshSize {8} = 0.756827;
//+
Cylinder(2) = {23.087454, 2.634301, 0.000000, 0.000000, 0.000000, 1.000000, 0.577735, 2*Pi};
//+
MeshSize {9} = 0.057774;
//+
MeshSize {10} = 0.057774;
//+
Cylinder(3) = {25.890567, 2.386706, 0.000000, 0.000000, 0.000000, 1.000000, 0.542517, 2*Pi};
//+
MeshSize {11} = 0.054252;
//+
MeshSize {12} = 0.054252;
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
Save "../geo_unrolled/cad_411.geo_unrolled";
