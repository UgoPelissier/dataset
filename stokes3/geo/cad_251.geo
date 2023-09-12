//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630217, -4.158598, 0.000000, 29.538692, 9.183247, 1.000000};
//+
MeshSize {1} = 3.051633;
//+
MeshSize {2} = 3.051633;
//+
MeshSize {3} = 0.766792;
//+
MeshSize {4} = 0.766792;
//+
MeshSize {5} = 3.051633;
//+
MeshSize {6} = 3.051633;
//+
MeshSize {7} = 1.393896;
//+
MeshSize {8} = 1.393896;
//+
Cylinder(2) = {16.135370, 1.298720, 0.000000, 0.000000, 0.000000, 1.000000, 1.118349, 2*Pi};
//+
MeshSize {9} = 0.111835;
//+
MeshSize {10} = 0.111835;
//+
Cylinder(3) = {22.806507, 0.786160, 0.000000, 0.000000, 0.000000, 1.000000, 1.200882, 2*Pi};
//+
MeshSize {11} = 0.120088;
//+
MeshSize {12} = 0.120088;
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
Save "../geo_unrolled/cad_251.geo_unrolled";
