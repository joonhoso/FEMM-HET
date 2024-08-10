%% Draw_HEPS100_MagnetCircuit.m
clear; clc; close all;

%% 1. Base Core Pure Ion, @rz-domain
r = [0 30]; z = [0 3.5]; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'b-o'); grid; hold on; axis([-10 40 -10 60]);
xlabel('Radius, r (mm)'); ylabel('Hight, z [mm)')

BaseCore.r = r; BaseCore.z = z; BaseCore.R = R; BaseCore.Z = Z;
clear r; clear R; clear z; clear Z;

%% 2. Center Core @rz-domain
% 2.1 radius and height of center core 
r = [0 5 11.3] - 1; z = [3.5 43 45]+ 1; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(3);
R(3) = r(3); Z(3) = z(3);
R(4) = r(3); Z(4) = z(2);
R(5) = r(2); Z(5) = z(2); 
R(6) = r(2); Z(6) = z(1); 
R(7) = r(1); Z(7) = z(1); 
plot(R, Z,'r-o'); 
CenterCore.r = r; CenterCore.z = z;  CenterCore.R = R; CenterCore.Z = Z;
clear r; clear R; clear z; clear Z; 


%% 2.2. Center Shield @rz-domain
r = [5 10 11.3] ; z = [3.5 6 38] ; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(3);
R(5) = r(3); Z(5) = z(3); 
R(6) = r(3); Z(6) = z(1); 
R(7) = r(1); Z(7) = z(1); 
plot(R, Z,'g-o'); 
CenterShield.r = r; CenterShield.z = z;  CenterShield.R = R; CenterShield.Z = Z;
clear r; clear R; clear z; clear Z; 

%% 2.3. AWG26, @rz-domain
r = [5 10] - 0.5; z = [6 43] + 0.5; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'k-o'); 
CenterAWG.r = r; CenterAWG.z = z; CenterAWG.R = R; CenterAWG.Z = Z;
clear r; clear R; clear z; clear Z;

%% 3. Outer Core @rz-domain
%% 3.1 Outer core 
r = [22 27.5 30] + 1; z = [3.5 43 45] + 1; 
R(1) = r(2); Z(1) = z(1); 
R(2) = r(2); Z(2) = z(2);
R(3) = r(1); Z(3) = z(2);
R(4) = r(1); Z(4) = z(3);
R(5) = r(3); Z(5) = z(3); 
R(6) = r(3); Z(6) = z(1); 
R(7) = r(2); Z(7) = z(1); 
plot(R, Z,'r-o'); 
OuterCore.r = r; OuterCore.z = z;  OuterCore.R = R; OuterCore.Z = Z;
clear r; clear R; clear z; clear Z; 

%% 3.2. Outer Shield
r = [22.1 23.5 27.5]; z = [3.5 5 38]; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(3);
R(3) = r(2); Z(3) = z(3);
R(4) = r(2); Z(4) = z(2);
R(5) = r(3); Z(5) = z(2); 
R(6) = r(3); Z(6) = z(1); 
R(7) = r(1); Z(7) = z(1); 
plot(R, Z,'g-o'); 
OuterShield.r = r; OuterShield.z = z;  OuterShield.R = R; OuterShield.Z = Z;
clear r; clear R; clear z; clear Z; 

%% 3.3. Outer AWG26 
r = [23.5 27.5] + 0.5; z = [5 43] + 0.5; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'k-o'); 
OuterAWG.r = r; OuterAWG.z = z; OuterAWG.R = R; OuterAWG.Z = Z;
clear r; clear R; clear z; clear Z;
