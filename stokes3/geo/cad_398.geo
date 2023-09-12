//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.839332, -3.248997, 0.000000, 35.824228, 7.883712, 1.000000};
//+
MeshSize {1} = 0.334936;
//+
MeshSize {2} = 0.334936;
//+
MeshSize {3} = 3.687485;
//+
MeshSize {4} = 3.687485;
//+
MeshSize {5} = 0.334936;
//+
MeshSize {6} = 0.334936;
//+
MeshSize {7} = 3.687485;
//+
MeshSize {8} = 3.687485;
//+
Cylinder(2) = {4.636969, -1.888881, 0.000000, 0.000000, 0.000000, 1.000000, 0.684497, 2*Pi};
//+
MeshSize {9} = 0.068450;
//+
MeshSize {10} = 0.068450;
//+
Cylinder(3) = {12.606656, -1.001902, 0.000000, 0.000000, 0.000000, 1.000000, 1.039867, 2*Pi};
//+
MeshSize {11} = 0.103987;
//+
MeshSize {12} = 0.103987;
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
Save "../geo_unrolled/cad_398.geo_unrolled";
