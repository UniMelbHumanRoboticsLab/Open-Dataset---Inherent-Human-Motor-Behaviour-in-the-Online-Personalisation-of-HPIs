close all
clear all
addpath('..\Dataset')
%% Read csv table
data = readtable('PersonalisationImplementation.csv');
%% Choose subject
subject =3; % choose subject number to plot, range: [1,9]
display(strcat('Plotting Results of Subject:',num2str(subject)))
ITERATION = 80;
rows = [ITERATION*(subject-1)+1:ITERATION*subject].'; % corresponding rows in the table
%% Color settings
blueLine = [0/255,114/255,189/255];
blueMarker = [205/255,224/255,247/255];
redLine = [217/255,83/255,25/255];
redMarker = [239/255,221/255,221/255];
greyLine = [0.49 0.49 0.49];

%% Implementation result
figure(1);
hold off
yyaxis left
taskPlot(data.iteration(rows,1),data.cost(rows,1),'','Iteration','Performance (J_p)',blueLine,blueMarker);
xlim([0 80])
ylim([0 200])
ylabel('Performance (J_p)')
grid on
% subplot(2,1,2)
yyaxis right
plot(data.iteration(rows,1),data.parameter(rows,1),'-','Color',redLine,'LineWidth',1.5)
title('Synergy')
xlabel('Iteration')
ylabel('Synergy (\theta)')
% Plot rest line
hold on
plot([40 40],[0 200], '--','Color',greyLine,'LineWidth',3.0)
% Set plot limits
xlim([0 80])
ylim([0.5 3.0])
title('')
grid on
legend('Performance','Synergy','Rest')
set(gca,'FontSize',15);

%% Compensation during iterations
figure(2);
hold off
taskPlot(data.iteration(rows,1),data.c7_disp_cm(rows,1),'','Iteration','Compensation (cm)',blueLine,blueMarker);
hold on
grid on
% figure();
taskPlot(data.iteration(rows,1),data.sa_disp_cm(rows,1),'','Iteration','Compensation (cm)',redLine,redMarker);
% Plot rest line
hold on
plot([40 40],[-10 200], '--','Color',greyLine,'LineWidth',3.0)
% grid on
xlim([0 80])
ylim([-5 20])
xlabel('Iteration')
ylabel('Displacement (cm)')
legend('C7 Displacement','SA Displacement')
set(gca,'FontSize',15);