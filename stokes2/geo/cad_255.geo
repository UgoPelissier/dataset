//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.242424, -3.865114, 0.000000, 37.922521, 8.482338, 0.000000};
//+
l = [0.4929629922637078, 0.4929629922637078, 3.8399876983846504, 1.7114193579792756, 3.8399876983846504, 1.6561621910919848, 0.4691744112649596, 0.4691744112649596];
//+
MeshSize {1} = 0.492963;
//+
MeshSize {2} = 0.492963;
//+
MeshSize {3} = 3.839988;
//+
MeshSize {4} = 1.711419;
//+
Disk(2) = {4.346523, 0.541602, 0.000000, 1.092227, 1.092227};
//+
c0 = 0.10922270342503855;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.823904, 1.541348, 0.000000, 1.050099, 1.050099};
//+
c1 = 0.10500991569974727;
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
