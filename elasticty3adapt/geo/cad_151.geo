//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.073965, -3.260306, 0.000000, 34.718382, 8.502013, 1.000000};
//+
MeshSize {1} = 4.403090;
//+
MeshSize {2} = 4.403090;
//+
MeshSize {3} = 3.962686;
//+
MeshSize {4} = 3.962686;
//+
MeshSize {5} = 0.344632;
//+
MeshSize {6} = 0.344632;
//+
MeshSize {7} = 0.433892;
//+
MeshSize {8} = 0.433892;
//+
Cylinder(2) = {18.914693, 2.471713, 0.000000, 0.000000, 0.000000, 0.100000, 0.859529, 2*Pi};
//+
MeshSize {9} = 0.085953;
//+
MeshSize {10} = 0.085953;
//+
Cylinder(3) = {31.156599, 0.313775, 0.000000, 0.000000, 0.000000, 0.100000, 1.138180, 2*Pi};
//+
MeshSize {11} = 0.113818;
//+
MeshSize {12} = 0.113818;
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
Save "../msh/cad_151.msh2";
//+
Save "../mesh/cad_151.mesh";
//+
Save "../geo_unrolled/cad_151.geo_unrolled";
