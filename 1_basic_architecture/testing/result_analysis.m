clear all
close all
clc

%% Comparing results

fs=10000; %% sampling frequency

T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

% Open file
fx = fopen('samples.txt','r');
x_in = fscanf(fx,'%d');
fclose(fx);

fym = fopen('resultsm.txt','r');
ym = fscanf(fym, '%d');
fclose(fym);

fyc = fopen('resultsc.txt','r');
yc = fscanf(fyc, '%d');
fclose(fyc);

quantum_spec = figure('Name','C and MATLAB results'); % create the figure f_spec
figure(quantum_spec)
plot(tt(1:2*T*fs),x_in(1:2*T*fs),'--+'); %show the first two periods
hold on
plot(tt(1:2*T*fs),ym(1:2*T*fs),'--ob');
plot(tt(1:2*T*fs),yc(1:2*T*fs),'--og');
legend('x_q','y_M_A_T_L_A_B', 'y_C')

xlabel('Time [s]');
ylabel('Quantized output');


% compute errors
errors = ym-yc;
max_err = max(abs(errors))

dist = thd(yc)