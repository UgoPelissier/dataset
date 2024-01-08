//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.789859, -4.171332, 0.000000, 33.853099, 9.083506, 1.000000};
//+
MeshSize {1} = 4.660697;
//+
MeshSize {2} = 4.660697;
//+
MeshSize {3} = 4.283566;
//+
MeshSize {4} = 4.283566;
//+
MeshSize {5} = 0.432312;
//+
MeshSize {6} = 0.432312;
//+
MeshSize {7} = 0.273242;
//+
MeshSize {8} = 0.273242;
//+
Cylinder(2) = {27.523094, 2.613251, 0.000000, 0.000000, 0.000000, 0.100000, 0.580959, 2*Pi};
//+
MeshSize {9} = 0.058096;
//+
MeshSize {10} = 0.058096;
//+
Cylinder(3) = {30.515154, 2.141534, 0.000000, 0.000000, 0.000000, 0.100000, 0.554812, 2*Pi};
//+
MeshSize {11} = 0.055481;
//+
MeshSize {12} = 0.055481;
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
Save "../msh/cad_390.msh2";
//+
Save "../mesh/cad_390.mesh";
//+
Save "../geo_unrolled/cad_390.geo_unrolled";
