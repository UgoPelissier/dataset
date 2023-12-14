//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.427687, -4.844213, 0.000000, 30.324752, 9.707766, 1.000000};
//+
MeshSize {1} = 3.553979;
//+
MeshSize {2} = 3.553979;
//+
MeshSize {3} = 4.815773;
//+
MeshSize {4} = 4.815773;
//+
MeshSize {5} = 0.425948;
//+
MeshSize {6} = 0.425948;
//+
MeshSize {7} = 0.359281;
//+
MeshSize {8} = 0.359281;
//+
Cylinder(2) = {27.798008, 0.442580, 0.000000, 0.000000, 0.000000, 0.100000, 1.334595, 2*Pi};
//+
MeshSize {9} = 0.133460;
//+
MeshSize {10} = 0.133460;
//+
Cylinder(3) = {17.913590, -3.416223, 0.000000, 0.000000, 0.000000, 0.100000, 0.627446, 2*Pi};
//+
MeshSize {11} = 0.062745;
//+
MeshSize {12} = 0.062745;
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
Save "../msh/cad_020.msh2";
//+
Save "../mesh/cad_020.mesh";
//+
Save "../geo_unrolled/cad_020.geo_unrolled";
