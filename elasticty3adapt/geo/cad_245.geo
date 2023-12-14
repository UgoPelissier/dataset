//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784617, 1.000000};
//+
MeshSize {1} = 0.438367;
//+
MeshSize {2} = 0.438367;
//+
MeshSize {3} = 0.366407;
//+
MeshSize {4} = 0.366407;
//+
MeshSize {5} = 3.966217;
//+
MeshSize {6} = 3.966217;
//+
MeshSize {7} = 4.191241;
//+
MeshSize {8} = 4.191241;
//+
Cylinder(2) = {11.971499, -0.628031, 0.000000, 0.000000, 0.000000, 0.100000, 1.056599, 2*Pi};
//+
MeshSize {9} = 0.105660;
//+
MeshSize {10} = 0.105660;
//+
Cylinder(3) = {4.128045, 0.737785, 0.000000, 0.000000, 0.000000, 0.100000, 0.755016, 2*Pi};
//+
MeshSize {11} = 0.075502;
//+
MeshSize {12} = 0.075502;
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
Save "../msh/cad_245.msh2";
//+
Save "../mesh/cad_245.mesh";
//+
Save "../geo_unrolled/cad_245.geo_unrolled";
