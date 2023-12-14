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
Cylinder(2) = {27.382947, -1.242477, 0.000000, 0.000000, 0.000000, 0.100000, 0.597988, 2*Pi};
//+
MeshSize {9} = 0.059799;
//+
MeshSize {10} = 0.059799;
//+
Cylinder(3) = {23.682304, 2.941462, 0.000000, 0.000000, 0.000000, 0.100000, 0.581947, 2*Pi};
//+
MeshSize {11} = 0.058195;
//+
MeshSize {12} = 0.058195;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_473.msh2";
//+
Save "../mesh/cad_473.mesh";
//+
Save "../geo_unrolled/cad_473.geo_unrolled";
