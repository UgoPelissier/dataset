//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.549235, -4.109290, 0.000000, 34.825942, 9.160236, 1.000000};
//+
l = [0.6143682498988178, 0.6143682498988178, 0.6143682498988178, 3.567044463443931, 3.567044463443931, 3.567044463443931, 3.567044463443931, 0.9028390103580478, 0.9028390103580478, 0.9028390103580478];
//+
MeshSize {1} = 0.614368;
//+
MeshSize {2} = 0.614368;
//+
MeshSize {3} = 0.614368;
//+
MeshSize {4} = 3.567044;
//+
MeshSize {5} = 3.567044;
//+
MeshSize {6} = 3.567044;
//+
MeshSize {7} = 3.567044;
//+
MeshSize {8} = 0.902839;
//+
Cylinder(2) = {7.726350, -2.313276, 0.000000, 0.000000, 0.000000, 1.000000, 1.254740, 2*Pi};
//+
c0 = 0.12547395497248656;
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
