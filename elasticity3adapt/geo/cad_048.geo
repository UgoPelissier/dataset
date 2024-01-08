//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.323274, -3.423061, 0.000000, 33.718477, 8.786491, 0.100000};
//+
MeshSize {1} = 0.849764;
//+
MeshSize {2} = 0.849764;
//+
MeshSize {3} = 0.930976;
//+
MeshSize {4} = 0.930976;
//+
MeshSize {5} = 1.397613;
//+
MeshSize {6} = 1.397613;
//+
MeshSize {7} = 1.335385;
//+
MeshSize {8} = 1.335385;
//+
Cylinder(2) = {25.750649, 1.101903, 0.000000, 0.000000, 0.000000, 0.100000, 1.259991, 2*Pi};
//+
MeshSize {9} = 0.125999;
//+
MeshSize {10} = 0.125999;
//+
Cylinder(3) = {6.929479, 0.432468, 0.000000, 0.000000, 0.000000, 0.100000, 1.427673, 2*Pi};
//+
MeshSize {11} = 0.142767;
//+
MeshSize {12} = 0.142767;
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
Save "../msh/cad_048.msh2";
//+
Save "../mesh/cad_048.mesh";
//+
Save "../geo_unrolled/cad_048.geo_unrolled";
