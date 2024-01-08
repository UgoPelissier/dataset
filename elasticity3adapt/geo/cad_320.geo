//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.970537, -3.518057, 0.000000, 32.322310, 8.855584, 1.000000};
//+
MeshSize {1} = 3.321182;
//+
MeshSize {2} = 3.321182;
//+
MeshSize {3} = 3.443841;
//+
MeshSize {4} = 3.443841;
//+
MeshSize {5} = 0.582282;
//+
MeshSize {6} = 0.582282;
//+
MeshSize {7} = 0.415604;
//+
MeshSize {8} = 0.415604;
//+
Cylinder(2) = {26.637776, 3.210926, 0.000000, 0.000000, 0.000000, 0.100000, 0.808998, 2*Pi};
//+
MeshSize {9} = 0.080900;
//+
MeshSize {10} = 0.080900;
//+
Cylinder(3) = {23.475998, 0.210811, 0.000000, 0.000000, 0.000000, 0.100000, 0.635252, 2*Pi};
//+
MeshSize {11} = 0.063525;
//+
MeshSize {12} = 0.063525;
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
Save "../msh/cad_320.msh2";
//+
Save "../mesh/cad_320.mesh";
//+
Save "../geo_unrolled/cad_320.geo_unrolled";
