//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.314580, -3.747798, 0.000000, 30.221533, 8.397598, 0.100000};
//+
MeshSize {1} = 2.788746;
//+
MeshSize {2} = 2.788746;
//+
MeshSize {3} = 2.992222;
//+
MeshSize {4} = 2.992222;
//+
MeshSize {5} = 0.632835;
//+
MeshSize {6} = 0.632835;
//+
MeshSize {7} = 0.518594;
//+
MeshSize {8} = 0.518594;
//+
Cylinder(2) = {20.907975, -0.708502, 0.000000, 0.000000, 0.000000, 0.100000, 1.339892, 2*Pi};
//+
MeshSize {9} = 0.133989;
//+
MeshSize {10} = 0.133989;
//+
Cylinder(3) = {22.673621, 2.233086, 0.000000, 0.000000, 0.000000, 0.100000, 1.049726, 2*Pi};
//+
MeshSize {11} = 0.104973;
//+
MeshSize {12} = 0.104973;
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
Save "../msh/cad_160.msh2";
//+
Save "../mesh/cad_160.mesh";
//+
Save "../geo_unrolled/cad_160.geo_unrolled";
