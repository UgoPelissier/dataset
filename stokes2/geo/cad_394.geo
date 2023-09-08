//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.161999, -3.885978, 0.000000, 33.006783, 8.228391, 0.000000};
//+
l = [0.9309770768749138, 0.21410286944739246, 3.342296712067963, 3.342296712067963, 3.342296712067963, 3.342296712067963, 0.8491363882698946, 0.6906323212308028];
//+
MeshSize {1} = 0.930977;
//+
MeshSize {2} = 0.214103;
//+
MeshSize {3} = 3.342297;
//+
MeshSize {4} = 3.342297;
//+
Disk(2) = {8.871734, 1.190190, 0.000000, 0.771248, 0.771248};
//+
c0 = 0.0771248101351349;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.655650, -2.740791, 0.000000, 0.603009, 0.603009};
//+
c1 = 0.06030093140568861;
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
