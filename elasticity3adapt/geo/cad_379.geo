//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.575967, -4.604048, 0.000000, 37.788304, 9.482754, 0.100000};
//+
MeshSize {1} = 3.157786;
//+
MeshSize {2} = 3.157786;
//+
MeshSize {3} = 3.109453;
//+
MeshSize {4} = 3.109453;
//+
MeshSize {5} = 0.556377;
//+
MeshSize {6} = 0.556377;
//+
MeshSize {7} = 0.516939;
//+
MeshSize {8} = 0.516939;
//+
Cylinder(2) = {29.319046, 0.882705, 0.000000, 0.000000, 0.000000, 0.100000, 0.835504, 2*Pi};
//+
MeshSize {9} = 0.083550;
//+
MeshSize {10} = 0.083550;
//+
Cylinder(3) = {26.712880, 0.506452, 0.000000, 0.000000, 0.000000, 0.100000, 0.938661, 2*Pi};
//+
MeshSize {11} = 0.093866;
//+
MeshSize {12} = 0.093866;
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
Save "../msh/cad_379.msh2";
//+
Save "../mesh/cad_379.mesh";
//+
Save "../geo_unrolled/cad_379.geo_unrolled";
