//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.806200, -3.730802, 0.000000, 37.811443, 7.605756, 0.000000};
//+
l = [3.8804436325573755, 1.5725810110460474, 1.5506035481501903, 3.8804436325573755];
//+
MeshSize {1} = 3.880444;
//+
MeshSize {2} = 1.572581;
//+
MeshSize {3} = 1.550604;
//+
MeshSize {4} = 3.880444;
//+
Disk(2) = {22.234462, 0.558260, 0.000000, 1.209499, 1.209499};
//+
c0 = 0.12094989615689343;
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
