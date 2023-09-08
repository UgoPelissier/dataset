//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.124354, -4.239667, 0.000000, 36.872983, 9.856691, 0.000000};
//+
l = [1.8280036827487383, 1.8367240229459387, 3.7324141267812174, 3.7324141267812174];
//+
MeshSize {1} = 1.828004;
//+
MeshSize {2} = 1.836724;
//+
MeshSize {3} = 3.732414;
//+
MeshSize {4} = 3.732414;
//+
Disk(2) = {18.516138, -0.061159, 0.000000, 0.580442, 0.580442};
//+
c0 = 0.0580441851899301;
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
