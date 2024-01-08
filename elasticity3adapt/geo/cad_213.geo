//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102312, -4.292591, 0.000000, 36.521242, 9.608210, 1.000000};
//+
MeshSize {1} = 0.631476;
//+
MeshSize {2} = 0.631476;
//+
MeshSize {3} = 0.545337;
//+
MeshSize {4} = 0.545337;
//+
MeshSize {5} = 2.883389;
//+
MeshSize {6} = 2.883389;
//+
MeshSize {7} = 2.743247;
//+
MeshSize {8} = 2.743247;
//+
Cylinder(2) = {13.705624, 1.415694, 0.000000, 0.000000, 0.000000, 0.100000, 1.109050, 2*Pi};
//+
MeshSize {9} = 0.110905;
//+
MeshSize {10} = 0.110905;
//+
Cylinder(3) = {9.564128, 2.028233, 0.000000, 0.000000, 0.000000, 0.100000, 1.392374, 2*Pi};
//+
MeshSize {11} = 0.139237;
//+
MeshSize {12} = 0.139237;
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
Save "../msh/cad_213.msh2";
//+
Save "../mesh/cad_213.mesh";
//+
Save "../geo_unrolled/cad_213.geo_unrolled";
