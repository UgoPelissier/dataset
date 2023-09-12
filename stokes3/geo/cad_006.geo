//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.989523, -3.965768, 0.000000, 34.579974, 9.211536, 1.000000};
//+
MeshSize {1} = 3.586645;
//+
MeshSize {2} = 3.586645;
//+
MeshSize {3} = 0.785003;
//+
MeshSize {4} = 0.785003;
//+
MeshSize {5} = 1.064749;
//+
MeshSize {6} = 1.064749;
//+
MeshSize {7} = 0.785003;
//+
MeshSize {8} = 0.785003;
//+
Cylinder(2) = {29.979819, 2.542383, 0.000000, 0.000000, 0.000000, 1.000000, 0.729048, 2*Pi};
//+
MeshSize {9} = 0.072905;
//+
MeshSize {10} = 0.072905;
//+
Cylinder(3) = {11.192934, 1.431829, 0.000000, 0.000000, 0.000000, 1.000000, 0.895632, 2*Pi};
//+
MeshSize {11} = 0.089563;
//+
MeshSize {12} = 0.089563;
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
Save "../geo_unrolled/cad_006.geo_unrolled";
