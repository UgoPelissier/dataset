//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.760602, -3.578269, 0.000000, 30.523312, 8.688206, 0.100000};
//+
MeshSize {1} = 0.875427;
//+
MeshSize {2} = 0.875427;
//+
MeshSize {3} = 0.875327;
//+
MeshSize {4} = 0.875327;
//+
MeshSize {5} = 1.322481;
//+
MeshSize {6} = 1.322481;
//+
MeshSize {7} = 1.527226;
//+
MeshSize {8} = 1.527226;
//+
Cylinder(2) = {10.576640, 0.767244, 0.000000, 0.000000, 0.000000, 0.100000, 0.730115, 2*Pi};
//+
MeshSize {9} = 0.073011;
//+
MeshSize {10} = 0.073011;
//+
Cylinder(3) = {17.864463, -0.237440, 0.000000, 0.000000, 0.000000, 0.100000, 1.284619, 2*Pi};
//+
MeshSize {11} = 0.128462;
//+
MeshSize {12} = 0.128462;
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
Save "../msh/cad_011.msh2";
//+
Save "../mesh/cad_011.mesh";
//+
Save "../geo_unrolled/cad_011.geo_unrolled";
