//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.840110, -4.713051, 0.000000, 36.489618, 9.694715, 0.100000};
//+
MeshSize {1} = 2.401698;
//+
MeshSize {2} = 2.401698;
//+
MeshSize {3} = 2.804822;
//+
MeshSize {4} = 2.804822;
//+
MeshSize {5} = 0.793144;
//+
MeshSize {6} = 0.793144;
//+
MeshSize {7} = 0.457407;
//+
MeshSize {8} = 0.457407;
//+
Cylinder(2) = {17.278004, -1.369460, 0.000000, 0.000000, 0.000000, 0.100000, 0.805472, 2*Pi};
//+
MeshSize {9} = 0.080547;
//+
MeshSize {10} = 0.080547;
//+
Cylinder(3) = {31.423904, 3.477627, 0.000000, 0.000000, 0.000000, 0.100000, 0.640002, 2*Pi};
//+
MeshSize {11} = 0.064000;
//+
MeshSize {12} = 0.064000;
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
Save "../msh/cad_258.msh2";
//+
Save "../mesh/cad_258.mesh";
//+
Save "../geo_unrolled/cad_258.geo_unrolled";
