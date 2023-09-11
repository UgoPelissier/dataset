//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.989091, -4.288455, 0.000000, 30.199019, 9.937707, 1.000000};
//+
MeshSize {1} = 1.256669;
//+
MeshSize {2} = 1.256669;
//+
MeshSize {3} = 1.077948;
//+
MeshSize {4} = 1.077948;
//+
MeshSize {5} = 3.158145;
//+
MeshSize {6} = 3.158145;
//+
MeshSize {7} = 3.158145;
//+
MeshSize {8} = 3.158145;
//+
Cylinder(2) = {12.285112, 2.930602, 0.000000, 0.000000, 0.000000, 1.000000, 0.839085, 2*Pi};
//+
MeshSize {9} = 0.083909;
//+
MeshSize {10} = 0.083909;
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
