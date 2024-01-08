//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.290775, -4.001303, 0.000000, 34.570235, 8.977598, 0.100000};
//+
MeshSize {1} = 1.479301;
//+
MeshSize {2} = 1.479301;
//+
MeshSize {3} = 1.290713;
//+
MeshSize {4} = 1.290713;
//+
MeshSize {5} = 0.909782;
//+
MeshSize {6} = 0.909782;
//+
MeshSize {7} = 0.862006;
//+
MeshSize {8} = 0.862006;
//+
Cylinder(2) = {21.317343, 1.604009, 0.000000, 0.000000, 0.000000, 0.100000, 1.316689, 2*Pi};
//+
MeshSize {9} = 0.131669;
//+
MeshSize {10} = 0.131669;
//+
Cylinder(3) = {17.008739, 1.923812, 0.000000, 0.000000, 0.000000, 0.100000, 1.028309, 2*Pi};
//+
MeshSize {11} = 0.102831;
//+
MeshSize {12} = 0.102831;
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
Save "../msh/cad_460.msh2";
//+
Save "../mesh/cad_460.mesh";
//+
Save "../geo_unrolled/cad_460.geo_unrolled";
