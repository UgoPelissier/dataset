//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.198751, -4.046867, 0.000000, 33.058098, 9.447438, 0.000000};
//+
l = [3.359064701255882, 1.4558483580972454, 0.447230007968469, 0.447230007968469, 0.7151719013591316, 0.7151719013591316, 3.359064701255882, 1.5039426457469283];
//+
MeshSize {1} = 3.359065;
//+
MeshSize {2} = 1.455848;
//+
MeshSize {3} = 0.447230;
//+
MeshSize {4} = 0.447230;
//+
Disk(2) = {28.929678, -1.175900, 0.000000, 0.720663, 0.720663};
//+
c0 = 0.07206627583021649;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.663652, -0.147307, 0.000000, 1.390489, 1.390489};
//+
c1 = 0.13904888438870389;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
