//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.482926, -4.144792, 0.000000, 33.898733, 9.241908, 1.000000};
//+
MeshSize {1} = 0.942066;
//+
MeshSize {2} = 0.942066;
//+
MeshSize {3} = 3.469080;
//+
MeshSize {4} = 3.469080;
//+
MeshSize {5} = 0.700142;
//+
MeshSize {6} = 0.700142;
//+
MeshSize {7} = 3.469080;
//+
MeshSize {8} = 3.469080;
//+
Cylinder(2) = {10.964637, -1.845941, 0.000000, 0.000000, 0.000000, 1.000000, 1.310186, 2*Pi};
//+
MeshSize {9} = 0.131019;
//+
MeshSize {10} = 0.131019;
//+
Cylinder(3) = {3.956822, 3.227090, 0.000000, 0.000000, 0.000000, 1.000000, 1.147970, 2*Pi};
//+
MeshSize {11} = 0.114797;
//+
MeshSize {12} = 0.114797;
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
Save "../geo_unrolled/cad_261.geo_unrolled";
