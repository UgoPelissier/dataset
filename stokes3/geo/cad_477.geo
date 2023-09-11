//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 1.000000};
//+
l = [0.7301185258362383, 0.7301185258362383, 0.7301185258362383, 0.7301185258362383, 0.7301185258362383, 0.7301185258362383, 3.8501419507472843, 3.8501419507472843, 1.4009252088201591, 1.4009252088201591, 1.4009252088201591, 3.8501419507472843, 3.8501419507472843, 1.3541630362367316, 1.3541630362367316, 1.3541630362367316, 0.9237399517578115, 0.9237399517578115, 0.9237399517578115, 0.9237399517578115, 0.9237399517578115, 0.9237399517578115];
//+
MeshSize {1} = 0.730119;
//+
MeshSize {2} = 0.730119;
//+
MeshSize {3} = 0.730119;
//+
MeshSize {4} = 0.730119;
//+
MeshSize {5} = 0.730119;
//+
MeshSize {6} = 0.730119;
//+
MeshSize {7} = 3.850142;
//+
MeshSize {8} = 3.850142;
//+
Cylinder(2) = {8.407352, -1.631753, 0.000000, 0.000000, 0.000000, 1.000000, 0.693080, 2*Pi};
//+
c0 = 0.06930795314464104;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.449355, 1.566785, 0.000000, 0.000000, 0.000000, 1.000000, 0.619977, 2*Pi};
//+
c1 = 0.06199771097778259;
//+
MeshSize {11, 12} = c1;
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
