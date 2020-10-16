close all
clear all
addpath('..\Dataset')
%% Read csv table
data_sweep = readtable('ParameterSweep.csv');
data_ab = readtable('Ablebody.csv');
%% Choose subject
subject =2; % choose subject number to plot, range: [1,3]
display(strcat('Plotting Results of Subject:',num2str(subject)))
ITERATION = 164;
rows = [ITERATION*(subject-1)+1:ITERATION*subject].'; % corresponding rows in the table
%% Color settings
blueLine = [0/255,114/255,189/255];
blueMarker = [205/255,224/255,247/255];
redLine = [217/255,83/255,25/255];
redMarker = [239/255,221/255,221/255];
greyLine = [0.49 0.49 0.49];

%% Compensation
figure(1)
% C7
taskPlot(data_sweep.parameter(rows,1),data_sweep.c7_disp_cm(rows,1),'','Synergy (\theta)','Compensation (cm)',blueLine,blueMarker);
hold on
line([0.8 2.8],[mean(data_ab.c7_disp_cm) mean(data_ab.c7_disp_cm)],'Color',blueLine,'LineWidth',3)
% SA
taskPlot(data_sweep.parameter(rows,1),data_sweep.sa_disp_cm(rows,1),'','Synergy (\theta)','Compensation (cm)',redLine,redMarker);
line([0.8 2.8],[mean(data_ab.sa_disp_cm) mean(data_ab.sa_disp_cm)],'Color',redLine,'LineWidth',3)
% Settings
xlim([0.8 2.8])
xticks([0.5 :0.5:2.5])
legend('TH C7 Displacement','AB C7 Displacement','TH SA Displacement','AB SA Displacement')
grid on
set(gca,'FontSize',15);
%% Cost 
J = getCost(data_sweep.c7_disp_cm(rows,1),data_sweep.sa_disp_cm(rows,1));
figure(2)
taskPlot(data_sweep.parameter(rows,1),J,'','Synergy (\theta)','Performance(J_p)',blueLine,blueMarker)
hold on
p = polyfit(data_sweep.parameter(rows,1), J, 2) 
x1 = linspace(min(data_sweep.parameter(rows,1)), max(data_sweep.parameter(rows,1)), 100 );
y1 = polyval(p, x1);
plot(x1, y1, '-k','LineWidth',3);
xlim([0.7 2.9]) 
xticks([0.5 :0.5:2.5])
ylim([0 150])
yticks([0 :25:150])
grid on


% Annotate theat*
theta_optimal = -p(2)/(2*p(1));
annotation('textbox', [0.6, 0.8, 0.1, 0.1], 'String', strcat("\theta^*=",num2str(theta_optimal,3)),'Fontsize',15)
set(gca,'FontSize',15,'XMinorTick','on');