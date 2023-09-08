//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.661183, -3.497035, 0.000000, 33.590207, 8.861406, 0.000000};
//+
l = [3.453677492978947, 0.8741847226309343, 0.9035235735943585, 3.453677492978947];
//+
MeshSize {1} = 3.453677;
//+
MeshSize {2} = 0.874185;
//+
MeshSize {3} = 0.903524;
//+
MeshSize {4} = 3.453677;
//+
Disk(2) = {25.652843, 0.613272, 0.000000, 0.788611, 0.788611};
//+
c0 = 0.07886105883058418;
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
