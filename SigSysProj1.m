function [omega1_pi, omega1, omega2_pi, omega2, omega3_pi, omega3] = SigSysProj1
%Engin 321
%TM
%
%To visualize a difference between continuous-time and discrete-time
%signals: a continuous-time sinusoid is always periodic when a
%discrete-time sinusoid is only periodic if the angular frequency carries a
%factor of Pi
%Continuous and discrete-time periodic sinusoids
tc=0:0.05:10;%continuous-time vector
td=0:1:10;%discrete-time vector
omega1_pi=3*pi;
figure(1), subplot(4,1,1), plot(tc,cos(omega*tc))
title('continuous-time signal of period T=2/3s; angular frequency=3*pi')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,2), stem(td,cos(omega*td))
title('discrete-time signal of period N=2; angular frequency=3*pi')
xlabel('time index n');
ylabel('f[n]');

%Continuous periodic and discrete-time non-periodic sinusoids
omega1=3; %here the angular frequency does not carry a factor of Pi
subplot(4,1,3), plot(tc, cos(omega*tc))
title('continuous-time signal of period T=2*pi/3s; angular frequency=3')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,4), stem(td,cos(omega*td))
title('discrete-time sinusoid that IS NOT periodic; angular frequency=3 (does not carry a factor of Pi!)')
xlabel('time index n');
ylabel('f[n]');

tc=0:0.05:10;%continuous-time vector
td=0:1:10;%discrete-time vector
omega2_pi=4*pi;
figure(2), subplot(4,1,1), plot(tc,cos(omega*tc))
title('continuous-time signal of period T=2/4s; angular frequency=4*pi')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,2), stem(td,cos(omega*td))
title('discrete-time signal of period N=2; angular frequency=4*pi')
xlabel('time index n');
ylabel('f[n]');

%Continuous periodic and discrete-time non-periodic sinusoids
omega2=4; %here the angular frequency does not carry a factor of Pi
subplot(4,1,3), plot(tc, cos(omega*tc))
title('continuous-time signal of period T=2*pi/4s; angular frequency=3')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,4), stem(td,cos(omega*td))
title('discrete-time sinusoid that IS NOT periodic; angular frequency=4 (does not carry a factor of Pi!)')
xlabel('time index n');
ylabel('f[n]');

tc=0:0.05:10;%continuous-time vector
td=0:1:10;%discrete-time vector
omega3_pi=25*pi;
figure(3), subplot(4,1,1), plot(tc,cos(omega*tc))
title('continuous-time signal of period T=2/25s; angular frequency=25*pi')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,2), stem(td,cos(omega*td))
title('discrete-time signal of period N=2; angular frequency=25*pi')
xlabel('time index n');
ylabel('f[n]');

%Continuous periodic and discrete-time non-periodic sinusoids
omega3=25; %here the angular frequency does not carry a factor of Pi
subplot(4,1,3), plot(tc, cos(omega*tc))
title('continuous-time signal of period T=2*pi/25s; angular frequency=25')
xlabel('t (s)');
ylabel('f(t)');
subplot(4,1,4), stem(td,cos(omega*td))
title('discrete-time sinusoid that IS NOT periodic; angular frequency=25 (does not carry a factor of Pi!)')
xlabel('time index n');
ylabel('f[n]');
end