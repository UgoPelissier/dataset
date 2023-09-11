//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.655509, -4.190500, 0.000000, 37.072972, 8.735293, 1.000000};
//+
l = [3.7980450293436534, 3.7980450293436534, 1.0345705847028508, 1.0345705847028508, 1.0345705847028508, 0.8590647143288779, 0.8590647143288779, 0.8590647143288779, 3.7980450293436534, 3.7980450293436534];
//+
MeshSize {1} = 3.798045;
//+
MeshSize {2} = 3.798045;
//+
MeshSize {3} = 1.034571;
//+
MeshSize {4} = 1.034571;
//+
MeshSize {5} = 1.034571;
//+
MeshSize {6} = 0.859065;
//+
MeshSize {7} = 0.859065;
//+
MeshSize {8} = 0.859065;
//+
Cylinder(2) = {28.464095, 2.270103, 0.000000, 0.000000, 0.000000, 1.000000, 0.948905, 2*Pi};
//+
c0 = 0.0948905256995063;
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
