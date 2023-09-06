//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161246, -2.970565, 0.000000, 30.063214, 7.607860, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.115258, 0.483896, 0.000000, 0.000000, 0.000000, 1.000000, 0.518620, 2*Pi};
//+
c0 = 0.051862;
//+
Cylinder(3) = {21.747929, 1.230534, 0.000000, 0.000000, 0.000000, 1.000000, 0.783455, 2*Pi};
//+
c1 = 0.07834550000000001;
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
Save "cad_372.msh";
