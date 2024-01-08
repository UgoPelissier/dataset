//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.476807, -4.467279, 0.000000, 31.785102, 9.199957, 1.000000};
//+
MeshSize {1} = 0.174161;
//+
MeshSize {2} = 0.174161;
//+
MeshSize {3} = 0.218242;
//+
MeshSize {4} = 0.218242;
//+
MeshSize {5} = 6.124546;
//+
MeshSize {6} = 6.124546;
//+
MeshSize {7} = 5.620661;
//+
MeshSize {8} = 5.620661;
//+
Cylinder(2) = {2.285056, -1.075752, 0.000000, 0.000000, 0.000000, 0.100000, 1.230763, 2*Pi};
//+
MeshSize {9} = 0.123076;
//+
MeshSize {10} = 0.123076;
//+
Cylinder(3) = {4.424053, 2.515825, 0.000000, 0.000000, 0.000000, 0.100000, 1.253158, 2*Pi};
//+
MeshSize {11} = 0.125316;
//+
MeshSize {12} = 0.125316;
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
Save "../msh/cad_170.msh2";
//+
Save "../mesh/cad_170.mesh";
//+
Save "../geo_unrolled/cad_170.geo_unrolled";
