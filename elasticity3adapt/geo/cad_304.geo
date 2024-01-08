//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.625325, -4.090083, 0.000000, 36.866619, 8.537962, 1.000000};
//+
MeshSize {1} = 0.448609;
//+
MeshSize {2} = 0.448609;
//+
MeshSize {3} = 0.317364;
//+
MeshSize {4} = 0.317364;
//+
MeshSize {5} = 4.395845;
//+
MeshSize {6} = 4.395845;
//+
MeshSize {7} = 4.064594;
//+
MeshSize {8} = 4.064594;
//+
Cylinder(2) = {3.955932, 1.183569, 0.000000, 0.000000, 0.000000, 0.100000, 0.857963, 2*Pi};
//+
MeshSize {9} = 0.085796;
//+
MeshSize {10} = 0.085796;
//+
Cylinder(3) = {17.198327, 1.410833, 0.000000, 0.000000, 0.000000, 0.100000, 1.382824, 2*Pi};
//+
MeshSize {11} = 0.138282;
//+
MeshSize {12} = 0.138282;
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
Save "../msh/cad_304.msh2";
//+
Save "../mesh/cad_304.mesh";
//+
Save "../geo_unrolled/cad_304.geo_unrolled";
