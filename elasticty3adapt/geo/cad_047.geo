//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.091242, -4.239706, 0.000000, 33.241842, 9.175334, 1.000000};
//+
MeshSize {1} = 3.464011;
//+
MeshSize {2} = 3.464011;
//+
MeshSize {3} = 3.685153;
//+
MeshSize {4} = 3.685153;
//+
MeshSize {5} = 0.360924;
//+
MeshSize {6} = 0.360924;
//+
MeshSize {7} = 0.581395;
//+
MeshSize {8} = 0.581395;
//+
Cylinder(2) = {28.590889, -1.561608, 0.000000, 0.000000, 0.000000, 0.100000, 1.193674, 2*Pi};
//+
MeshSize {9} = 0.119367;
//+
MeshSize {10} = 0.119367;
//+
Cylinder(3) = {18.336416, -0.414487, 0.000000, 0.000000, 0.000000, 0.100000, 0.814517, 2*Pi};
//+
MeshSize {11} = 0.081452;
//+
MeshSize {12} = 0.081452;
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
Save "../msh/cad_047.msh2";
//+
Save "../mesh/cad_047.mesh";
//+
Save "../geo_unrolled/cad_047.geo_unrolled";
