//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.661183, -3.497035, 0.000000, 33.590207, 8.861406, 1.000000};
//+
l = [3.453677492978947, 3.453677492978947, 0.8741847226309343, 0.8741847226309343, 0.8741847226309343, 0.9035235735943585, 0.9035235735943585, 0.9035235735943585, 3.453677492978947, 3.453677492978947];
//+
MeshSize {1} = 3.453677;
//+
MeshSize {2} = 3.453677;
//+
MeshSize {3} = 0.874185;
//+
MeshSize {4} = 0.874185;
//+
MeshSize {5} = 0.874185;
//+
MeshSize {6} = 0.903524;
//+
MeshSize {7} = 0.903524;
//+
MeshSize {8} = 0.903524;
//+
Cylinder(2) = {25.652843, 0.613272, 0.000000, 0.000000, 0.000000, 1.000000, 0.788611, 2*Pi};
//+
c0 = 0.07886105883058418;
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
