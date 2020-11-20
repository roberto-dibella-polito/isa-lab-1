clear all

fs=10000; %% sampling frequency
f1=500;  %% first sinewave freq (in band)
f2=4500; %% second sinnewave freq (out band)

N=1; %% filter order -> Modified for our purpose
nb=8; %% number of bits

T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

x1=sin(2*pi*f1*tt); %% first sinewave
x2=sin(2*pi*f2*tt); %% second sinewave

x=(x1+x2)/2; %% input signal

[bi, ai, bq, aq]=myiir_design_adv(N, nb) %% filter design

y=filter(bq, aq, x); %% apply filter

%% plots
f_tot = figure('Name','MATLAB Results'); % create the figure f_tot
plot(tt,x1,'--o');
hold on
plot(tt,x2,'--+');
plot(tt,x, '-sg');
plot(tt, y, 'c-*');

legend('x1', 'x2', 'x', 'y')

t_spec = figure('Name','Result on two periods'); % create the figure f_spec
figure(t_spec)
plot(tt(1:2*T*fs),x1(1:2*T*fs),'--o'); %show the first two periods
hold on
plot(tt(1:2*T*fs),x2(1:2*T*fs),'--+')
plot(tt(1:2*T*fs),x(1:2*T*fs),'-sg')
plot(tt(1:2*T*fs),y(1:2*T*fs),'--ob')
legend('x1', 'x2', 'x', 'y')

xlabel('Time[s]');
ylabel('Output');


%% quantize input and output to be saved
xq=floor(x*2^(nb-1));
idx=find(xq==2^(nb-1));
xq(idx)=2^(nb-1)-1;

yq=floor(y*2^(nb-1));
idy=find(yq==2^(nb-1));
yq(idy)=2^(nb-1)-1;

quantum_spec = figure('Name','Quantized values'); % create the figure f_spec
figure(quantum_spec)
plot(tt(1:2*T*fs),xq(1:2*T*fs),'--o'); %show the first two periods
hold on
plot(tt(1:2*T*fs),yq(1:2*T*fs),'--ob')
legend('x_q', 'y_q')

xlabel('Time [s]');
ylabel('Quantized output');

%% save input and output
fp=fopen('../results/samples_adv.txt','w');
fprintf(fp,'%d\n', xq);
fclose(fp);

fp=fopen('../results/resultsm_adv.txt', 'w');
fprintf(fp, '%d\n', yq);
fclose(fp);

