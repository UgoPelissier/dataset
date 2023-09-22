//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.180263, -4.143646, 0.000000, 39.296420, 8.715677, 1.000000};
//+
MeshSize {1} = 2.342700;
//+
MeshSize {2} = 2.342700;
//+
MeshSize {3} = 1.742208;
//+
MeshSize {4} = 1.742208;
//+
MeshSize {5} = 0.890823;
//+
MeshSize {6} = 0.890823;
//+
MeshSize {7} = 0.577773;
//+
MeshSize {8} = 0.577773;
//+
Cylinder(2) = {32.967760, 3.344050, 0.000000, 0.000000, 0.000000, 1.000000, 0.537747, 2*Pi};
//+
MeshSize {9} = 0.053775;
//+
MeshSize {10} = 0.053775;
//+
Cylinder(3) = {13.294340, 2.321051, 0.000000, 0.000000, 0.000000, 1.000000, 0.631049, 2*Pi};
//+
MeshSize {11} = 0.063105;
//+
MeshSize {12} = 0.063105;
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
Save "../geo_unrolled/cad_086.geo_unrolled";
