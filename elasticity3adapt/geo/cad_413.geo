//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.920098, -3.775576, 0.000000, 38.091651, 7.961955, 0.100000};
//+
MeshSize {1} = 0.306603;
//+
MeshSize {2} = 0.306603;
//+
MeshSize {3} = 0.320403;
//+
MeshSize {4} = 0.320403;
//+
MeshSize {5} = 4.820111;
//+
MeshSize {6} = 4.820111;
//+
MeshSize {7} = 4.773672;
//+
MeshSize {8} = 4.773672;
//+
Cylinder(2) = {6.263622, 0.005051, 0.000000, 0.000000, 0.000000, 0.100000, 1.228554, 2*Pi};
//+
MeshSize {9} = 0.122855;
//+
MeshSize {10} = 0.122855;
//+
Cylinder(3) = {9.433919, 0.559211, 0.000000, 0.000000, 0.000000, 0.100000, 0.599106, 2*Pi};
//+
MeshSize {11} = 0.059911;
//+
MeshSize {12} = 0.059911;
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
Save "../msh/cad_413.msh2";
//+
Save "../mesh/cad_413.mesh";
//+
Save "../geo_unrolled/cad_413.geo_unrolled";
