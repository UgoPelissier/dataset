//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.198751, -4.046867, 0.000000, 33.058098, 9.447438, 1.000000};
//+
MeshSize {1} = 3.359065;
//+
MeshSize {2} = 3.359065;
//+
MeshSize {3} = 0.447230;
//+
MeshSize {4} = 0.447230;
//+
MeshSize {5} = 1.455848;
//+
MeshSize {6} = 1.455848;
//+
MeshSize {7} = 0.447230;
//+
MeshSize {8} = 0.447230;
//+
Cylinder(2) = {28.929678, -1.175900, 0.000000, 0.000000, 0.000000, 1.000000, 0.720663, 2*Pi};
//+
MeshSize {9} = 0.072066;
//+
MeshSize {10} = 0.072066;
//+
Cylinder(3) = {15.663652, -0.147307, 0.000000, 0.000000, 0.000000, 1.000000, 1.390489, 2*Pi};
//+
MeshSize {11} = 0.139049;
//+
MeshSize {12} = 0.139049;
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
