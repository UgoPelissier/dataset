//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.247240, -3.763963, 0.000000, 37.410897, 8.803250, 1.000000};
//+
MeshSize {1} = 3.791450;
//+
MeshSize {2} = 3.791450;
//+
MeshSize {3} = 3.791450;
//+
MeshSize {4} = 3.791450;
//+
MeshSize {5} = 1.359069;
//+
MeshSize {6} = 1.359069;
//+
MeshSize {7} = 1.513558;
//+
MeshSize {8} = 1.513558;
//+
Cylinder(2) = {23.602178, -1.984275, 0.000000, 0.000000, 0.000000, 1.000000, 0.577483, 2*Pi};
//+
MeshSize {9} = 0.057748;
//+
MeshSize {10} = 0.057748;
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
