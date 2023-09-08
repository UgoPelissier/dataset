//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.581556, -3.808619, 0.000000, 34.727664, 8.563760, 0.000000};
//+
l = [3.5567899329508927, 0.807308942087612, 0.9704379807571915, 3.5567899329508927];
//+
MeshSize {1} = 3.556790;
//+
MeshSize {2} = 0.807309;
//+
MeshSize {3} = 0.970438;
//+
MeshSize {4} = 3.556790;
//+
Disk(2) = {26.338398, -1.449063, 0.000000, 1.202855, 1.202855};
//+
c0 = 0.12028549421857689;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
