//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.010320, -4.483075, 0.000000, 33.222140, 9.232559, 0.100000};
//+
MeshSize {1} = 3.016331;
//+
MeshSize {2} = 3.016331;
//+
MeshSize {3} = 2.733616;
//+
MeshSize {4} = 2.733616;
//+
MeshSize {5} = 0.542855;
//+
MeshSize {6} = 0.542855;
//+
MeshSize {7} = 0.614051;
//+
MeshSize {8} = 0.614051;
//+
Cylinder(2) = {22.825796, 1.969637, 0.000000, 0.000000, 0.000000, 0.100000, 1.208453, 2*Pi};
//+
MeshSize {9} = 0.120845;
//+
MeshSize {10} = 0.120845;
//+
Cylinder(3) = {24.462550, -2.250662, 0.000000, 0.000000, 0.000000, 0.100000, 0.595279, 2*Pi};
//+
MeshSize {11} = 0.059528;
//+
MeshSize {12} = 0.059528;
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
Save "../msh/cad_442.msh2";
//+
Save "../mesh/cad_442.mesh";
//+
Save "../geo_unrolled/cad_442.geo_unrolled";
