//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041611, -4.268240, 0.000000, 35.421922, 9.974440, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {3.632049, 3.292270, 0.000000, 0.000000, 0.000000, 1.000000, 1.251345, 2*Pi};
//+
c0 = 0.1251345;
//+
Cylinder(3) = {12.361771, 3.159190, 0.000000, 0.000000, 0.000000, 1.000000, 0.939070, 2*Pi};
//+
c1 = 0.093907;
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
Save "cad_269.msh";
