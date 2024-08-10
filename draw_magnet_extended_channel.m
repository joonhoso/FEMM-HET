%% draw_magnet_extended_channel.m
% E:\ABEP\FEMM\HEPS100_ExtendChannelMagnet
clear; clc; close all;
%% Geometry Parameters of HETs
p.Hight_BasePlate = 3.5;    % Hight_BasePlate = 3.5mm 
p.Hight_Shield_T0 = 5;      % Shield supproting  
p.Hight_Shield_T1 = 6;      % dT = 1.5 mm 
p.Hight_Shield_T2 = 38;     % Shield Core 
p.Hight_Core_T = 43;        % airgap = 5mm 
p.Hight_Core = 45;       
p.Hight_Extended = 40;

p.R_CenterCore_T = 5;       % R1.CenterCore, dR = 5mm     
p.R_CenterShiled_T = 10;    % R1.CenterShield     
p.R_CenterCore = 11.3;      % R2.CenterCore, R2.CenterShield  
p.R1_OuterCore = 22;        % R1.Shield
p.R1_OuterCore_T = 23.5;    % R2.Shield, dR = 1.5mm
p.R1_OuterCore_T2 = 27.5;   % R1.OuterCore, dR = 2.5mm
p.R2_OuterCore = 30;        % Radius of BasePlate, R2.OuterCore, 
p.Aluminum_T = 1;           % Thickness of Aluminum, as Supporter.Outer.AWG 


%% 1. Base Plate, Core Pure Ion, @rz-domain
r = [0 p.R2_OuterCore]; 
z = [0 p.Hight_BasePlate ]; 

R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'b-o'); grid; hold on; 
xlabel('Radius, r (mm)'); ylabel('Hight, z [mm)')

BaseCore.r = r; BaseCore.z = z; BaseCore.R = R; BaseCore.Z = Z;
clear r; clear R; clear z; clear Z;

%% 2. Center Core @rz-domain
%% 2.1 radius and height of center core 
r = [0 p.R_CenterCore_T     p.R_CenterCore] ; 
z = [p.Hight_BasePlate      p.Hight_Core_T p.Hight_Core]; 

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
r = [p.R_CenterCore_T   p.R_CenterShiled_T  p.R_CenterCore] ; 
z = [p.Hight_BasePlate  p.Hight_Shield_T1   p.Hight_Shield_T2] ; 

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
r = [p.R_CenterCore_T  p.R_CenterShiled_T ] ; 
z = [p.Hight_Shield_T1 p.Hight_Core_T] ; 
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
r = [p.R1_OuterCore     p.R1_OuterCore_T2   p.R2_OuterCore];
z = [p.Hight_BasePlate  p.Hight_Core_T      p.Hight_Core];

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
r = [p.R1_OuterCore     p.R1_OuterCore_T    p.R1_OuterCore_T2]; 
z = [p.Hight_BasePlate  p.Hight_Shield_T0   p.Hight_Shield_T2]; 

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
r = [(p.R1_OuterCore_T + p.Aluminum_T )   p.R1_OuterCore_T2]; 
z = [p.Hight_Shield_T0                    (p.Hight_Core_T - p.Aluminum_T )] ; 
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'k-o'); 
OuterAWG.r = r; OuterAWG.z = z; OuterAWG.R = R; OuterAWG.Z = Z;
clear r; clear R; clear z; clear Z;

%% 4. Extended Core
%% 4.1 Center Extended Core
% Nodes 
r = [0              p.R_CenterCore]; 
z = [p.Hight_Core   (p.Hight_Core + p.Hight_Extended)] ; 
% Segnments in the Clockwised Block Generation
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'g-o'); 
CenterExtendCore.r = r; CenterExtendCore.z = z; CenterExtendCore.R = R; CenterExtendCore.Z = Z;
clear r; clear R; clear z; clear Z;

%% 4.2 Outer Extended Core
% Nodes  
r = [p.R1_OuterCore     p.R2_OuterCore]; 
z = [p.Hight_Core       (p.Hight_Core + p.Hight_Extended)] ; 
% Segnments in the Clockwised Block Generation
R(1) = r(1); Z(1) = z(1); 
R(2) = r(1); Z(2) = z(2);
R(3) = r(2); Z(3) = z(2);
R(4) = r(2); Z(4) = z(1);
R(5) = r(1); Z(5) = z(1); 
plot(R, Z,'g-o'); 
CenterExtendCore.r = r; CenterExtendCore.z = z; CenterExtendCore.R = R; CenterExtendCore.Z = Z;
clear r; clear R; clear z; clear Z;

axis([-10 40 -10 100]); axis equal;

