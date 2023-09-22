//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.519667, -4.230328, 0.000000, 32.758803, 8.955923, 1.000000};
//+
MeshSize {1} = 3.904205;
//+
MeshSize {2} = 3.904205;
//+
MeshSize {3} = 3.422519;
//+
MeshSize {4} = 3.422519;
//+
MeshSize {5} = 0.399980;
//+
MeshSize {6} = 0.399980;
//+
MeshSize {7} = 0.518386;
//+
MeshSize {8} = 0.518386;
//+
Cylinder(2) = {27.382947, -1.242477, 0.000000, 0.000000, 0.000000, 1.000000, 0.597988, 2*Pi};
//+
MeshSize {9} = 0.059799;
//+
MeshSize {10} = 0.059799;
//+
Cylinder(3) = {23.682304, 2.941462, 0.000000, 0.000000, 0.000000, 1.000000, 0.581947, 2*Pi};
//+
MeshSize {11} = 0.058195;
//+
MeshSize {12} = 0.058195;
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
Save "../geo_unrolled/cad_473.geo_unrolled";
