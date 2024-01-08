//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394697, -4.078549, 0.000000, 39.285881, 8.898901, 0.100000};
//+
MeshSize {1} = 4.118552;
//+
MeshSize {2} = 4.118552;
//+
MeshSize {3} = 4.689401;
//+
MeshSize {4} = 4.689401;
//+
MeshSize {5} = 0.539240;
//+
MeshSize {6} = 0.539240;
//+
MeshSize {7} = 0.184021;
//+
MeshSize {8} = 0.184021;
//+
Cylinder(2) = {23.034056, -2.133141, 0.000000, 0.000000, 0.000000, 0.100000, 1.003747, 2*Pi};
//+
MeshSize {9} = 0.100375;
//+
MeshSize {10} = 0.100375;
//+
Cylinder(3) = {36.915911, 3.362866, 0.000000, 0.000000, 0.000000, 0.100000, 0.631920, 2*Pi};
//+
MeshSize {11} = 0.063192;
//+
MeshSize {12} = 0.063192;
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
Save "../msh/cad_444.msh2";
//+
Save "../mesh/cad_444.mesh";
//+
Save "../geo_unrolled/cad_444.geo_unrolled";
