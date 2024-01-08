//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.254723, -4.198184, 0.000000, 29.762190, 9.813938, 0.100000};
//+
MeshSize {1} = 1.808096;
//+
MeshSize {2} = 1.808096;
//+
MeshSize {3} = 1.533517;
//+
MeshSize {4} = 1.533517;
//+
MeshSize {5} = 0.745632;
//+
MeshSize {6} = 0.745632;
//+
MeshSize {7} = 0.882929;
//+
MeshSize {8} = 0.882929;
//+
Cylinder(2) = {16.162667, 2.153472, 0.000000, 0.000000, 0.000000, 0.100000, 1.241950, 2*Pi};
//+
MeshSize {9} = 0.124195;
//+
MeshSize {10} = 0.124195;
//+
Cylinder(3) = {20.130197, -1.332522, 0.000000, 0.000000, 0.000000, 0.100000, 0.569974, 2*Pi};
//+
MeshSize {11} = 0.056997;
//+
MeshSize {12} = 0.056997;
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
Save "../msh/cad_024.msh2";
//+
Save "../mesh/cad_024.mesh";
//+
Save "../geo_unrolled/cad_024.geo_unrolled";
