//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.018742, -3.548537, 0.000000, 38.602359, 8.939398, 0.100000};
//+
MeshSize {1} = 3.349859;
//+
MeshSize {2} = 3.349859;
//+
MeshSize {3} = 3.179746;
//+
MeshSize {4} = 3.179746;
//+
MeshSize {5} = 0.521262;
//+
MeshSize {6} = 0.521262;
//+
MeshSize {7} = 0.511975;
//+
MeshSize {8} = 0.511975;
//+
Cylinder(2) = {22.145326, 1.872795, 0.000000, 0.000000, 0.000000, 0.100000, 0.917694, 2*Pi};
//+
MeshSize {9} = 0.091769;
//+
MeshSize {10} = 0.091769;
//+
Cylinder(3) = {30.947943, 1.055969, 0.000000, 0.000000, 0.000000, 0.100000, 1.332026, 2*Pi};
//+
MeshSize {11} = 0.133203;
//+
MeshSize {12} = 0.133203;
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
Save "../msh/cad_075.msh2";
//+
Save "../mesh/cad_075.mesh";
//+
Save "../geo_unrolled/cad_075.geo_unrolled";
