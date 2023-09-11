//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.492029, -4.579671, 0.000000, 39.477564, 9.279131, 1.000000};
//+
MeshSize {1} = 4.023797;
//+
MeshSize {2} = 4.023797;
//+
MeshSize {3} = 1.937512;
//+
MeshSize {4} = 1.937512;
//+
MeshSize {5} = 0.839461;
//+
MeshSize {6} = 0.839461;
//+
MeshSize {7} = 1.937512;
//+
MeshSize {8} = 1.937512;
//+
Cylinder(2) = {20.774564, 1.863685, 0.000000, 0.000000, 0.000000, 1.000000, 0.872492, 2*Pi};
//+
MeshSize {9} = 0.087249;
//+
MeshSize {10} = 0.087249;
//+
Cylinder(3) = {5.336494, 2.968978, 0.000000, 0.000000, 0.000000, 1.000000, 0.574830, 2*Pi};
//+
MeshSize {11} = 0.057483;
//+
MeshSize {12} = 0.057483;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
