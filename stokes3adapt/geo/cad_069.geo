//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.426764, -3.275691, 0.000000, 33.316246, 7.881597, 1.000000};
//+
MeshSize {1} = 3.056699;
//+
MeshSize {2} = 3.056699;
//+
MeshSize {3} = 3.499954;
//+
MeshSize {4} = 3.499954;
//+
MeshSize {5} = 0.505834;
//+
MeshSize {6} = 0.505834;
//+
MeshSize {7} = 0.524599;
//+
MeshSize {8} = 0.524599;
//+
Cylinder(2) = {27.391539, 0.444291, 0.000000, 0.000000, 0.000000, 1.000000, 1.086465, 2*Pi};
//+
MeshSize {9} = 0.108647;
//+
MeshSize {10} = 0.108647;
//+
Cylinder(3) = {18.949616, -1.342662, 0.000000, 0.000000, 0.000000, 1.000000, 0.622231, 2*Pi};
//+
MeshSize {11} = 0.062223;
//+
MeshSize {12} = 0.062223;
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
Mesh 2;
//+
Save "../geo_unrolled/cad_069.geo_unrolled";
