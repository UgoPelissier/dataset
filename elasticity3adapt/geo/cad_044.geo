//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706956, -3.906244, 0.000000, 33.833357, 9.218462, 0.100000};
//+
MeshSize {1} = 4.237801;
//+
MeshSize {2} = 4.237801;
//+
MeshSize {3} = 4.005669;
//+
MeshSize {4} = 4.005669;
//+
MeshSize {5} = 0.551154;
//+
MeshSize {6} = 0.551154;
//+
MeshSize {7} = 0.242440;
//+
MeshSize {8} = 0.242440;
//+
Cylinder(2) = {31.912177, 2.653332, 0.000000, 0.000000, 0.000000, 0.100000, 1.125058, 2*Pi};
//+
MeshSize {9} = 0.112506;
//+
MeshSize {10} = 0.112506;
//+
Cylinder(3) = {18.809355, 1.360965, 0.000000, 0.000000, 0.000000, 0.100000, 1.408411, 2*Pi};
//+
MeshSize {11} = 0.140841;
//+
MeshSize {12} = 0.140841;
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
Save "../msh/cad_044.msh2";
//+
Save "../mesh/cad_044.mesh";
//+
Save "../geo_unrolled/cad_044.geo_unrolled";
