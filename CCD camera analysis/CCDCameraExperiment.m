CH1_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','D31:D132');
CH2_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','E31:E132');
CH3_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','F31:F132');
CH4_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','G31:G132');
CH5_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','H31:H132');
CH6_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 Layer.csv', 'Range','I31:I132');
Time_1st10 = 0:2:(132-31)*2; % total number of timesteps * 2 for 1 timestep / 2 secs
% Time_1st10 = readmatrix('2023-03-03_14-07-32_ First 10 layer.csv', 'Range','B31:B132');

CH1_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','D31:D157');
CH2_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','E31:E157');
CH3_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','F31:F157');
CH4_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','G31:G157');
CH5_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','H31:H157');
CH6_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','I31:I157');
Time_2nd10 = 0:2:(157-31)*2;
% Time_2nd10 = readmatrix('2023-03-03_14-35-58_ Second 10 Layer.csv', 'Range','B31:B157');

CH1_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','D31:D124');
CH2_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','E31:E124');
CH3_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','F31:F124');
CH4_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','G31:G124');
CH5_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','H31:H124');
CH6_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','I31:I124');
Time_3rd10 = 0:2:(124-31)*2;
% Time_3rd10 = readmatrix('2023-03-03_15-14-13_ Third 10 Layer.csv', 'Range','B31:B124');

CH1_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','D3:D287');
CH2_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','E3:E287');
CH3_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','F3:F287');
CH4_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','G3:G287');
CH5_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','H3:H287');
CH6_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','I3:I287');
Time_50 = 0:2:(287-3)*2;
% Time_50 = readmatrix('2023-03-03_15-46-04_ 50 Layer.csv', 'Range','B3:B287');

CH1_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','D31:D263');
CH2_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','E31:E263');
CH3_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','F31:F263');
CH4_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','G31:G263');
CH5_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','H31:H263');
CH6_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','I31:I263');
Time_50Cooldown = 0:2:(263-31)*2;
% Time_50Cooldown = readmatrix('2023-03-03_15-57-06_ 50 Layer Cooldown.csv', 'Range','B31:B263');

% nozzle runs from 20:280, shield data from 20:211
[p, S] = polyfit(Time_50(20:211), CH5_50(20:211), 2);
PolyRegCH5_50 = polyval(p, Time_50(20:280), S);

[p, S] = polyfit(Time_50(20:280), CH1_50(20:280), 2);
Time_200 = 0:2:(((280-20)*2)*4)+20; % time for 50 layers = (280-20) sec, multiply by timestep = 2, multiply by 4 to get 200 layers, compensate for beginning time by adding 20
PolyRegCH1_50 = polyval(p, Time_200, S);

% close all
% figure()
% plot(Time_1st10, CH1_1st10,'LineWidth',1), hold on
% plot(Time_1st10, CH2_1st10,'LineWidth',1), hold on
% plot(Time_1st10, CH3_1st10,'LineWidth',1), hold on
% plot(Time_1st10, CH4_1st10,'LineWidth',1), hold on
% plot(Time_1st10, CH5_1st10,'LineWidth',1), hold on
% plot(Time_1st10, CH6_1st10,'LineWidth',1), xlim([0 Time_1st10(end)]), title('First 10-Layer Deposition'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Nozzle','Location','best'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
% 
% figure()
% plot(Time_2nd10, CH1_2nd10,'LineWidth',1), hold on
% plot(Time_2nd10, CH2_2nd10,'LineWidth',1), hold on
% plot(Time_2nd10, CH3_2nd10,'LineWidth',1), hold on
% plot(Time_2nd10, CH4_2nd10,'LineWidth',1), hold on
% plot(Time_2nd10, CH5_2nd10,'LineWidth',1), hold on
% plot(Time_2nd10, CH6_2nd10,'LineWidth',1), xlim([0 Time_2nd10(end)]), title('Second 10-Layer Deposition'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Nozzle','Location','best'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
% 
% figure()
% plot(Time_3rd10, CH1_3rd10,'LineWidth',1), hold on
% plot(Time_3rd10, CH2_3rd10,'LineWidth',1), hold on
% plot(Time_3rd10, CH3_3rd10,'LineWidth',1), hold on
% plot(Time_3rd10, CH4_3rd10,'LineWidth',1), hold on
% plot(Time_3rd10, CH5_3rd10,'LineWidth',1), hold on
% plot(Time_3rd10, CH6_3rd10,'LineWidth',1), xlim([0 Time_3rd10(end)]), title('Third 10-Layer Deposition'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Nozzle','Location','best'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off

% figure()
% plot(Time_50, CH1_50,'LineWidth',1), hold on
% plot(Time_50, CH2_50,'LineWidth',1), hold on
% plot(Time_50, CH3_50,'LineWidth',1), hold on
% plot(Time_50, CH4_50,'LineWidth',1), hold on
% plot(Time_50, CH5_50,'LineWidth',1), hold on
% plot(Time_50, CH6_50,'LineWidth',1), xlim([0 Time_50(end)]), title('50-Layer Deposition'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Nozzle','Location','northeast'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
% 
% figure()
% plot(Time_50Cooldown, CH1_50Cooldown,'LineWidth',1), hold on
% plot(Time_50Cooldown, CH2_50Cooldown,'LineWidth',1), hold on
% plot(Time_50Cooldown, CH3_50Cooldown,'LineWidth',1), hold on
% plot(Time_50Cooldown, CH4_50Cooldown,'LineWidth',1), hold on
% plot(Time_50Cooldown, CH5_50Cooldown,'LineWidth',1), hold on
% plot(Time_50Cooldown, CH6_50Cooldown,'LineWidth',1), xlim([0 Time_50Cooldown(end)]), title('50-Layer Deposition: Cooldown Process'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Nozzle','Location','northeast'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
% 
% figure()
% plot(Time_50, CH1_50,'LineWidth',1), hold on
% plot(Time_50, CH2_50,'LineWidth',1), hold on
% plot(Time_50, CH3_50,'LineWidth',1), hold on
% plot(Time_50, CH4_50,'LineWidth',1), hold on
% plot(Time_50, CH5_50,'LineWidth',1), hold on
% plot(Time_50(20:280), PolyRegCH5_50, '--','LineWidth',1), hold on
% plot(Time_50, CH6_50,'LineWidth',1), xlim([0 Time_50(end)]), title('50-Layer Deposition: Shield Temperature 2nd-order Polynomial Fit'), legend('Cam Lens','Inside Cam','Back Cam','Top Cam','Shield','Shield Fit','Nozzle','Location','best'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
% 
% figure()
% plot(Time_50, CH1_50,'LineWidth',1), hold on
% plot(Time_200(20:end), PolyRegCH1_50(20:end),'--','LineWidth',1), hold on
% plot(Time_50, CH2_50,'LineWidth',1), hold on
% plot(Time_50, CH3_50,'LineWidth',1), hold on
% plot(Time_50, CH4_50,'LineWidth',1), hold on
% plot(Time_50(1:280), CH6_50(1:280),'LineWidth',1), xlim([0 Time_200(end)]), title('50-Layer Deposition: Camera Lens Temperature Predicted for 200 layers'), legend('Cam Lens','Cam Lens Fit','Inside Cam','Back Cam','Top Cam','Nozzle','Location','best'), xlabel('Duration of Recording (s)'), ylabel('Temperature (deg C)'), hold off
