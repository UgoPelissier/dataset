//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.323602, -3.796354, 0.000000, 32.284251, 8.088803, 0.100000};
//+
MeshSize {1} = 2.182225;
//+
MeshSize {2} = 2.182225;
//+
MeshSize {3} = 2.788145;
//+
MeshSize {4} = 2.788145;
//+
MeshSize {5} = 0.797002;
//+
MeshSize {6} = 0.797002;
//+
MeshSize {7} = 0.498451;
//+
MeshSize {8} = 0.498451;
//+
Cylinder(2) = {10.004296, -0.765066, 0.000000, 0.000000, 0.000000, 0.100000, 1.002520, 2*Pi};
//+
MeshSize {9} = 0.100252;
//+
MeshSize {10} = 0.100252;
//+
Cylinder(3) = {29.187888, 1.646533, 0.000000, 0.000000, 0.000000, 0.100000, 0.810978, 2*Pi};
//+
MeshSize {11} = 0.081098;
//+
MeshSize {12} = 0.081098;
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
Save "../msh/cad_123.msh2";
//+
Save "../mesh/cad_123.mesh";
//+
Save "../geo_unrolled/cad_123.geo_unrolled";
