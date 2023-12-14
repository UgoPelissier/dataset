//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.985765, -4.087936, 0.000000, 32.917243, 8.931347, 1.000000};
//+
MeshSize {1} = 0.699912;
//+
MeshSize {2} = 0.699912;
//+
MeshSize {3} = 0.719545;
//+
MeshSize {4} = 0.719545;
//+
MeshSize {5} = 2.115770;
//+
MeshSize {6} = 2.115770;
//+
MeshSize {7} = 2.180645;
//+
MeshSize {8} = 2.180645;
//+
Cylinder(2) = {11.390308, 0.024727, 0.000000, 0.000000, 0.000000, 0.100000, 1.264904, 2*Pi};
//+
MeshSize {9} = 0.126490;
//+
MeshSize {10} = 0.126490;
//+
Cylinder(3) = {14.781411, -0.027225, 0.000000, 0.000000, 0.000000, 0.100000, 1.347334, 2*Pi};
//+
MeshSize {11} = 0.134733;
//+
MeshSize {12} = 0.134733;
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
Save "../msh/cad_424.msh2";
//+
Save "../mesh/cad_424.mesh";
//+
Save "../geo_unrolled/cad_424.geo_unrolled";
