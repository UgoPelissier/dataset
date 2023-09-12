//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.692835, -3.442461, 0.000000, 37.263733, 8.522854, 1.000000};
//+
MeshSize {1} = 1.808235;
//+
MeshSize {2} = 1.808235;
//+
MeshSize {3} = 1.270031;
//+
MeshSize {4} = 1.270031;
//+
MeshSize {5} = 1.808235;
//+
MeshSize {6} = 1.808235;
//+
MeshSize {7} = 1.880653;
//+
MeshSize {8} = 1.880653;
//+
Cylinder(2) = {18.951837, 1.136404, 0.000000, 0.000000, 0.000000, 1.000000, 0.742021, 2*Pi};
//+
MeshSize {9} = 0.074202;
//+
MeshSize {10} = 0.074202;
//+
Cylinder(3) = {25.000586, 1.834428, 0.000000, 0.000000, 0.000000, 1.000000, 1.289077, 2*Pi};
//+
MeshSize {11} = 0.128908;
//+
MeshSize {12} = 0.128908;
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
Save "../geo_unrolled/cad_150.geo_unrolled";
