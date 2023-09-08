//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.862014, -3.588490, 0.000000, 29.982000, 7.862676, 0.000000};
//+
l = [1.2834748817882722, 1.2834748817882722, 3.109354687359459, 0.7387097880286858, 3.109354687359459, 0.8721649111813797, 1.2398858907639898, 1.2398858907639898];
//+
MeshSize {1} = 1.283475;
//+
MeshSize {2} = 1.283475;
//+
MeshSize {3} = 3.109355;
//+
MeshSize {4} = 0.738710;
//+
Disk(2) = {13.577073, 1.081705, 0.000000, 0.710857, 0.710857};
//+
c0 = 0.07108567474615379;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.650645, -1.218119, 0.000000, 1.142261, 1.142261};
//+
c1 = 0.11422610973149201;
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
