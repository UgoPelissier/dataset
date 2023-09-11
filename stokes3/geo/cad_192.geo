//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.989091, -4.288455, 0.000000, 30.199019, 9.937707, 1.000000};
//+
l = [1.2566693015184551, 1.2566693015184551, 1.2566693015184551, 3.158144586574313, 3.158144586574313, 3.158144586574313, 3.158144586574313, 1.077948446957999, 1.077948446957999, 1.077948446957999];
//+
MeshSize {1} = 1.256669;
//+
MeshSize {2} = 1.256669;
//+
MeshSize {3} = 1.256669;
//+
MeshSize {4} = 3.158145;
//+
MeshSize {5} = 3.158145;
//+
MeshSize {6} = 3.158145;
//+
MeshSize {7} = 3.158145;
//+
MeshSize {8} = 1.077948;
//+
Cylinder(2) = {12.285112, 2.930602, 0.000000, 0.000000, 0.000000, 1.000000, 0.839085, 2*Pi};
//+
c0 = 0.08390852999525654;
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
