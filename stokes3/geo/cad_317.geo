//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.867189, -3.127699, 0.000000, 34.285508, 7.897432, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.936816, 0.053665, 0.000000, 0.000000, 0.000000, 1.000000, 0.635650, 2*Pi};
//+
c0 = 0.06356500000000001;
//+
Cylinder(3) = {29.925327, 2.995753, 0.000000, 0.000000, 0.000000, 1.000000, 0.528948, 2*Pi};
//+
c1 = 0.0528948;
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
Save "cad_317.msh";
