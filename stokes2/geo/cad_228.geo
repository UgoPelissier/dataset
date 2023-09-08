//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.318904, -3.552914, 0.000000, 36.406415, 8.301663, 0.000000};
//+
l = [0.7465338032902361, 3.695914579600835, 3.695914579600835, 0.9530961751776404];
//+
MeshSize {1} = 0.746534;
//+
MeshSize {2} = 3.695915;
//+
MeshSize {3} = 3.695915;
//+
MeshSize {4} = 0.953096;
//+
Disk(2) = {8.117865, -1.656174, 0.000000, 0.560958, 0.560958};
//+
c0 = 0.05609576371067622;
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
