//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.655509, -4.190500, 0.000000, 37.072972, 8.735293, 0.000000};
//+
l = [3.7980450293436534, 1.0345705847028508, 0.8590647143288779, 3.7980450293436534];
//+
MeshSize {1} = 3.798045;
//+
MeshSize {2} = 1.034571;
//+
MeshSize {3} = 0.859065;
//+
MeshSize {4} = 3.798045;
//+
Disk(2) = {28.464095, 2.270103, 0.000000, 0.948905, 0.948905};
//+
c0 = 0.0948905256995063;
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
