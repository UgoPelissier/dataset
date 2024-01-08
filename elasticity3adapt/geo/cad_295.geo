//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.470147, -4.579371, 0.000000, 37.945246, 9.543127, 1.000000};
//+
MeshSize {1} = 1.630876;
//+
MeshSize {2} = 1.630876;
//+
MeshSize {3} = 0.935817;
//+
MeshSize {4} = 0.935817;
//+
MeshSize {5} = 0.944054;
//+
MeshSize {6} = 0.944054;
//+
MeshSize {7} = 0.943047;
//+
MeshSize {8} = 0.943047;
//+
Cylinder(2) = {9.563987, 2.588338, 0.000000, 0.000000, 0.000000, 0.100000, 0.942961, 2*Pi};
//+
MeshSize {9} = 0.094296;
//+
MeshSize {10} = 0.094296;
//+
Cylinder(3) = {29.618113, 0.201733, 0.000000, 0.000000, 0.000000, 0.100000, 1.482116, 2*Pi};
//+
MeshSize {11} = 0.148212;
//+
MeshSize {12} = 0.148212;
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
Save "../msh/cad_295.msh2";
//+
Save "../mesh/cad_295.mesh";
//+
Save "../geo_unrolled/cad_295.geo_unrolled";
