//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.992257, -2.983903, 0.000000, 33.622222, 7.793665, 1.000000};
//+
MeshSize {1} = 2.915264;
//+
MeshSize {2} = 2.915264;
//+
MeshSize {3} = 2.050831;
//+
MeshSize {4} = 2.050831;
//+
MeshSize {5} = 0.593219;
//+
MeshSize {6} = 0.593219;
//+
MeshSize {7} = 0.707735;
//+
MeshSize {8} = 0.707735;
//+
Cylinder(2) = {28.804202, -0.012661, 0.000000, 0.000000, 0.000000, 0.100000, 1.216603, 2*Pi};
//+
MeshSize {9} = 0.121660;
//+
MeshSize {10} = 0.121660;
//+
Cylinder(3) = {13.277630, 3.287899, 0.000000, 0.000000, 0.000000, 0.100000, 1.008241, 2*Pi};
//+
MeshSize {11} = 0.100824;
//+
MeshSize {12} = 0.100824;
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
Save "../msh/cad_050.msh2";
//+
Save "../mesh/cad_050.mesh";
//+
Save "../geo_unrolled/cad_050.geo_unrolled";
