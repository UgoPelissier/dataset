//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.861248, -3.762098, 0.000000, 31.491164, 9.255555, 0.100000};
//+
MeshSize {1} = 2.363485;
//+
MeshSize {2} = 2.363485;
//+
MeshSize {3} = 3.711774;
//+
MeshSize {4} = 3.711774;
//+
MeshSize {5} = 0.794296;
//+
MeshSize {6} = 0.794296;
//+
MeshSize {7} = 0.325344;
//+
MeshSize {8} = 0.325344;
//+
Cylinder(2) = {12.755531, -1.683333, 0.000000, 0.000000, 0.000000, 0.100000, 0.882790, 2*Pi};
//+
MeshSize {9} = 0.088279;
//+
MeshSize {10} = 0.088279;
//+
Cylinder(3) = {29.909224, 3.146543, 0.000000, 0.000000, 0.000000, 0.100000, 0.654267, 2*Pi};
//+
MeshSize {11} = 0.065427;
//+
MeshSize {12} = 0.065427;
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
Save "../msh/cad_357.msh2";
//+
Save "../mesh/cad_357.mesh";
//+
Save "../geo_unrolled/cad_357.geo_unrolled";
