//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.862014, -3.588490, 0.000000, 29.982000, 7.862676, 1.000000};
//+
MeshSize {1} = 1.914946;
//+
MeshSize {2} = 1.914946;
//+
MeshSize {3} = 1.726392;
//+
MeshSize {4} = 1.726392;
//+
MeshSize {5} = 0.714724;
//+
MeshSize {6} = 0.714724;
//+
MeshSize {7} = 0.843846;
//+
MeshSize {8} = 0.843846;
//+
Cylinder(2) = {13.577073, 1.081705, 0.000000, 0.000000, 0.000000, 0.100000, 0.710857, 2*Pi};
//+
MeshSize {9} = 0.071086;
//+
MeshSize {10} = 0.071086;
//+
Cylinder(3) = {22.650645, -1.218119, 0.000000, 0.000000, 0.000000, 0.100000, 1.142261, 2*Pi};
//+
MeshSize {11} = 0.114226;
//+
MeshSize {12} = 0.114226;
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
Save "../msh/cad_365.msh2";
//+
Save "../mesh/cad_365.mesh";
//+
Save "../geo_unrolled/cad_365.geo_unrolled";
