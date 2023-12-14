//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.144941, -3.306276, 0.000000, 34.404967, 8.468326, 1.000000};
//+
MeshSize {1} = 1.095498;
//+
MeshSize {2} = 1.095498;
//+
MeshSize {3} = 0.805263;
//+
MeshSize {4} = 0.805263;
//+
MeshSize {5} = 0.937915;
//+
MeshSize {6} = 0.937915;
//+
MeshSize {7} = 1.842555;
//+
MeshSize {8} = 1.842555;
//+
Cylinder(2) = {4.712767, 1.861518, 0.000000, 0.000000, 0.000000, 0.100000, 1.132021, 2*Pi};
//+
MeshSize {9} = 0.113202;
//+
MeshSize {10} = 0.113202;
//+
Cylinder(3) = {29.424477, -0.350767, 0.000000, 0.000000, 0.000000, 0.100000, 0.671201, 2*Pi};
//+
MeshSize {11} = 0.067120;
//+
MeshSize {12} = 0.067120;
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
Save "../msh/cad_385.msh2";
//+
Save "../mesh/cad_385.mesh";
//+
Save "../geo_unrolled/cad_385.geo_unrolled";
