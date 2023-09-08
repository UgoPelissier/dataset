//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.231433, -3.674997, 0.000000, 29.859981, 8.764332, 0.000000};
//+
l = [1.0797121206167635, 3.040882460420699, 3.040882460420699, 1.055618802611855];
//+
MeshSize {1} = 1.079712;
//+
MeshSize {2} = 3.040882;
//+
MeshSize {3} = 3.040882;
//+
MeshSize {4} = 1.055619;
//+
Disk(2) = {11.230137, 1.032747, 0.000000, 1.166755, 1.166755};
//+
c0 = 0.11667547295533397;
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
