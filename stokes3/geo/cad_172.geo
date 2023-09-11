//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.952789, -4.583860, 0.000000, 35.122940, 9.453280, 1.000000};
//+
l = [1.1678790628981741, 1.1678790628981741, 1.1678790628981741, 3.638405352087034, 3.638405352087034, 3.638405352087034, 3.638405352087034, 1.257453675359276, 1.257453675359276, 1.257453675359276];
//+
MeshSize {1} = 1.167879;
//+
MeshSize {2} = 1.167879;
//+
MeshSize {3} = 1.167879;
//+
MeshSize {4} = 3.638405;
//+
MeshSize {5} = 3.638405;
//+
MeshSize {6} = 3.638405;
//+
MeshSize {7} = 3.638405;
//+
MeshSize {8} = 1.257454;
//+
Cylinder(2) = {13.215567, -1.107410, 0.000000, 0.000000, 0.000000, 1.000000, 1.067245, 2*Pi};
//+
c0 = 0.10672446417241195;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
