//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784617, 1.000000};
//+
MeshSize {1} = 1.078549;
//+
MeshSize {2} = 1.078549;
//+
MeshSize {3} = 3.204044;
//+
MeshSize {4} = 3.204044;
//+
MeshSize {5} = 0.527035;
//+
MeshSize {6} = 0.527035;
//+
MeshSize {7} = 3.204044;
//+
MeshSize {8} = 3.204044;
//+
Cylinder(2) = {11.971499, -0.628031, 0.000000, 0.000000, 0.000000, 1.000000, 1.056599, 2*Pi};
//+
MeshSize {9} = 0.105660;
//+
MeshSize {10} = 0.105660;
//+
Cylinder(3) = {4.128045, 0.737785, 0.000000, 0.000000, 0.000000, 1.000000, 0.755016, 2*Pi};
//+
MeshSize {11} = 0.075502;
//+
MeshSize {12} = 0.075502;
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
Save "../geo_unrolled/cad_245.geo_unrolled";
