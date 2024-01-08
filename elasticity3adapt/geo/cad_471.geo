//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.986955, -4.105782, 0.000000, 29.612503, 8.432447, 0.100000};
//+
MeshSize {1} = 2.662899;
//+
MeshSize {2} = 2.662899;
//+
MeshSize {3} = 2.941228;
//+
MeshSize {4} = 2.941228;
//+
MeshSize {5} = 0.572421;
//+
MeshSize {6} = 0.572421;
//+
MeshSize {7} = 0.608741;
//+
MeshSize {8} = 0.608741;
//+
Cylinder(2) = {19.185539, -1.227146, 0.000000, 0.000000, 0.000000, 0.100000, 0.547733, 2*Pi};
//+
MeshSize {9} = 0.054773;
//+
MeshSize {10} = 0.054773;
//+
Cylinder(3) = {22.547476, -0.395084, 0.000000, 0.000000, 0.000000, 0.100000, 1.482951, 2*Pi};
//+
MeshSize {11} = 0.148295;
//+
MeshSize {12} = 0.148295;
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
Save "../msh/cad_471.msh2";
//+
Save "../mesh/cad_471.mesh";
//+
Save "../geo_unrolled/cad_471.geo_unrolled";
