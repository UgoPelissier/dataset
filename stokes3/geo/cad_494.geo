//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.343576, -3.850525, 0.000000, 35.692784, 9.473867, 1.000000};
//+
MeshSize {1} = 3.634636;
//+
MeshSize {2} = 3.634636;
//+
MeshSize {3} = 0.487734;
//+
MeshSize {4} = 0.487734;
//+
MeshSize {5} = 3.634636;
//+
MeshSize {6} = 3.634636;
//+
MeshSize {7} = 1.326767;
//+
MeshSize {8} = 1.326767;
//+
Cylinder(2) = {22.991169, 1.056602, 0.000000, 0.000000, 0.000000, 1.000000, 0.669935, 2*Pi};
//+
MeshSize {9} = 0.066994;
//+
MeshSize {10} = 0.066994;
//+
Cylinder(3) = {30.882215, -0.102191, 0.000000, 0.000000, 0.000000, 1.000000, 1.495664, 2*Pi};
//+
MeshSize {11} = 0.149566;
//+
MeshSize {12} = 0.149566;
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
Save "../geo_unrolled/cad_494.geo_unrolled";
