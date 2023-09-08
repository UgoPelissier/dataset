//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.549235, -4.109290, 0.000000, 34.825942, 9.160236, 0.000000};
//+
l = [0.6143682498988178, 3.567044463443931, 3.567044463443931, 0.9028390103580478];
//+
MeshSize {1} = 0.614368;
//+
MeshSize {2} = 3.567044;
//+
MeshSize {3} = 3.567044;
//+
MeshSize {4} = 0.902839;
//+
Disk(2) = {7.726350, -2.313276, 0.000000, 1.254740, 1.254740};
//+
c0 = 0.12547395497248656;
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
