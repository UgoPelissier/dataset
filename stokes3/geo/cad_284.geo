//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166963, -3.959025, 0.000000, 37.644277, 8.171912, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {33.516441, 2.218104, 0.000000, 0.000000, 0.000000, 1.000000, 0.529356, 2*Pi};
//+
c0 = 0.052935600000000006;
//+
Cylinder(3) = {30.517748, -1.863354, 0.000000, 0.000000, 0.000000, 1.000000, 0.563872, 2*Pi};
//+
c1 = 0.056387200000000005;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_284.msh";
