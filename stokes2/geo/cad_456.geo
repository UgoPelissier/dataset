//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.712899, -4.296232, 0.000000, 34.621951, 9.934205, 0.000000};
//+
l = [3.5682260020054546, 3.5682260020054546, 0.8862203058061611, 0.8862203058061611, 0.9867541396079123, 0.5805737931447221, 3.5682260020054546, 3.5682260020054546];
//+
MeshSize {1} = 3.568226;
//+
MeshSize {2} = 3.568226;
//+
MeshSize {3} = 0.886220;
//+
MeshSize {4} = 0.886220;
//+
Disk(2) = {26.704063, -0.340789, 0.000000, 0.631795, 0.631795};
//+
c0 = 0.0631795280373962;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.721968, 4.169277, 0.000000, 0.968276, 0.968276};
//+
c1 = 0.09682759053801224;
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
