//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.056890, -3.998616, 0.000000, 30.710420, 9.660625, 1.000000};
//+
MeshSize {1} = 2.813490;
//+
MeshSize {2} = 2.813490;
//+
MeshSize {3} = 2.938204;
//+
MeshSize {4} = 2.938204;
//+
MeshSize {5} = 0.599328;
//+
MeshSize {6} = 0.599328;
//+
MeshSize {7} = 0.556675;
//+
MeshSize {8} = 0.556675;
//+
Cylinder(2) = {26.315076, 1.111053, 0.000000, 0.000000, 0.000000, 0.100000, 1.007068, 2*Pi};
//+
MeshSize {9} = 0.100707;
//+
MeshSize {10} = 0.100707;
//+
Cylinder(3) = {14.236393, 0.524730, 0.000000, 0.000000, 0.000000, 0.100000, 1.291818, 2*Pi};
//+
MeshSize {11} = 0.129182;
//+
MeshSize {12} = 0.129182;
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
Save "../msh/cad_080.msh2";
//+
Save "../mesh/cad_080.mesh";
//+
Save "../geo_unrolled/cad_080.geo_unrolled";
