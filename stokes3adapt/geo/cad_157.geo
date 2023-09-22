//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.527715, -3.875027, 0.000000, 35.441993, 9.028271, 1.000000};
//+
MeshSize {1} = 1.615130;
//+
MeshSize {2} = 1.615130;
//+
MeshSize {3} = 1.839185;
//+
MeshSize {4} = 1.839185;
//+
MeshSize {5} = 0.830021;
//+
MeshSize {6} = 0.830021;
//+
MeshSize {7} = 0.771493;
//+
MeshSize {8} = 0.771493;
//+
Cylinder(2) = {21.114388, -1.372978, 0.000000, 0.000000, 0.000000, 1.000000, 1.345518, 2*Pi};
//+
MeshSize {9} = 0.134552;
//+
MeshSize {10} = 0.134552;
//+
Cylinder(3) = {22.206355, 2.832514, 0.000000, 0.000000, 0.000000, 1.000000, 1.205988, 2*Pi};
//+
MeshSize {11} = 0.120599;
//+
MeshSize {12} = 0.120599;
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
Save "../geo_unrolled/cad_157.geo_unrolled";
