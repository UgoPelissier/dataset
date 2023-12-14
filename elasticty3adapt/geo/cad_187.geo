//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.164375, -3.953851, 0.000000, 33.900751, 8.839811, 1.000000};
//+
MeshSize {1} = 0.334480;
//+
MeshSize {2} = 0.334480;
//+
MeshSize {3} = 0.894845;
//+
MeshSize {4} = 0.894845;
//+
MeshSize {5} = 3.402060;
//+
MeshSize {6} = 3.402060;
//+
MeshSize {7} = 2.032345;
//+
MeshSize {8} = 2.032345;
//+
Cylinder(2) = {23.370544, 2.885197, 0.000000, 0.000000, 0.000000, 0.100000, 1.196878, 2*Pi};
//+
MeshSize {9} = 0.119688;
//+
MeshSize {10} = 0.119688;
//+
Cylinder(3) = {3.107179, -2.225698, 0.000000, 0.000000, 0.000000, 0.100000, 0.855743, 2*Pi};
//+
MeshSize {11} = 0.085574;
//+
MeshSize {12} = 0.085574;
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
Save "../msh/cad_187.msh2";
//+
Save "../mesh/cad_187.mesh";
//+
Save "../geo_unrolled/cad_187.geo_unrolled";
