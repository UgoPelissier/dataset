//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.562138, -4.045344, 0.000000, 33.421881, 9.226358, 0.100000};
//+
MeshSize {1} = 0.740414;
//+
MeshSize {2} = 0.740414;
//+
MeshSize {3} = 0.211168;
//+
MeshSize {4} = 0.211168;
//+
MeshSize {5} = 3.250954;
//+
MeshSize {6} = 3.250954;
//+
MeshSize {7} = 3.847937;
//+
MeshSize {8} = 3.847937;
//+
Cylinder(2) = {2.040277, 2.895398, 0.000000, 0.000000, 0.000000, 0.100000, 0.976539, 2*Pi};
//+
MeshSize {9} = 0.097654;
//+
MeshSize {10} = 0.097654;
//+
Cylinder(3) = {21.405249, -0.462657, 0.000000, 0.000000, 0.000000, 0.100000, 0.834657, 2*Pi};
//+
MeshSize {11} = 0.083466;
//+
MeshSize {12} = 0.083466;
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
Save "../msh/cad_283.msh2";
//+
Save "../mesh/cad_283.mesh";
//+
Save "../geo_unrolled/cad_283.geo_unrolled";
