//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.470147, -4.579371, 0.000000, 37.945246, 9.543127, 1.000000};
//+
MeshSize {1} = 1.063607;
//+
MeshSize {2} = 1.063607;
//+
MeshSize {3} = 0.853043;
//+
MeshSize {4} = 0.853043;
//+
MeshSize {5} = 1.063607;
//+
MeshSize {6} = 1.063607;
//+
MeshSize {7} = 3.871060;
//+
MeshSize {8} = 3.871060;
//+
Cylinder(2) = {9.563987, 2.588338, 0.000000, 0.000000, 0.000000, 1.000000, 0.942961, 2*Pi};
//+
MeshSize {9} = 0.094296;
//+
MeshSize {10} = 0.094296;
//+
Cylinder(3) = {29.618113, 0.201733, 0.000000, 0.000000, 0.000000, 1.000000, 1.482116, 2*Pi};
//+
MeshSize {11} = 0.148212;
//+
MeshSize {12} = 0.148212;
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
Save "../geo_unrolled/cad_403.geo_unrolled";
