//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.533940, -4.160542, 0.000000, 33.959133, 9.989584, 0.100000};
//+
MeshSize {1} = 3.000784;
//+
MeshSize {2} = 3.000784;
//+
MeshSize {3} = 3.231980;
//+
MeshSize {4} = 3.231980;
//+
MeshSize {5} = 0.491146;
//+
MeshSize {6} = 0.491146;
//+
MeshSize {7} = 0.587973;
//+
MeshSize {8} = 0.587973;
//+
Cylinder(2) = {23.017794, -0.415863, 0.000000, 0.000000, 0.000000, 0.100000, 1.178078, 2*Pi};
//+
MeshSize {9} = 0.117808;
//+
MeshSize {10} = 0.117808;
//+
Cylinder(3) = {27.377052, -0.437698, 0.000000, 0.000000, 0.000000, 0.100000, 0.670689, 2*Pi};
//+
MeshSize {11} = 0.067069;
//+
MeshSize {12} = 0.067069;
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
Save "../msh/cad_377.msh2";
//+
Save "../mesh/cad_377.mesh";
//+
Save "../geo_unrolled/cad_377.geo_unrolled";
