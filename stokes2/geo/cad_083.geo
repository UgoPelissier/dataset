//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.813566, -3.593050, 0.000000, 33.734693, 8.286293, 0.000000};
//+
l = [3.4795802453046165, 1.5374266637388119, 1.6016094468003352, 3.4795802453046165];
//+
MeshSize {1} = 3.479580;
//+
MeshSize {2} = 1.537427;
//+
MeshSize {3} = 1.601609;
//+
MeshSize {4} = 3.479580;
//+
Disk(2) = {18.745664, -0.718856, 0.000000, 0.687583, 0.687583};
//+
c0 = 0.06875825413945272;
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
