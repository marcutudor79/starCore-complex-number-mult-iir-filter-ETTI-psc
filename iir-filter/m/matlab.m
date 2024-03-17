%% Compute the filter coefficeints and scaling factors
% clear the previous results
clear all
close all
clc

% declare the sampling freq, the cutoff freq,
% max Ripple value [dB] in the pass band and
% max Ripple value [dB] in the stop band
Fs      = 8000;
Fcutoff = 2600;
Rp      = 0.5;
Rs      = 20;

% declare the stop band limits and the pass band limits
Ws = (Fcutoff/Fs)*2 - 0.1;
Wp = (Fcutoff/Fs)*2;

% determine the order of the HP elliptic filter (not required)
[orderComputed, Wcutoff] = ellipord(Wp, Ws, Rp, Rs);

% determine the filter coefficients
order = 4; % was computed before for sanity check
[b, a] = ellip(order, Rp, Rs, Wp, 'high');

% plot the frequency response and poles position
figure(1)
freqz(b,a), title('Frequency response of HP IIR filter')

figure(2)
zplane(b,a), title('Poles and zeroes position of the HP IIR filter')

% compute and owerwrite the b coeficients with 
% the scaled ones by using L1 law
h  = impz(b, a);
k0 = sum(abs(h));
bScaled  = b / k0;

% compute the scaling coefficient 's1' for 
% the input signal
h1 = impz(1, a);
k1 = sum(abs(h1));
s1 = 1 / k1;

%% Generate the input signal sinusoidal signal 

t = 0 : 1/Fs : 1-1/Fs;              % 1 secs @ 8kHz sample rate

% generate a sinusoidal signal with linear increasing frequency
inputSignal = chirp(t,0,1,Fs/2);              % Start @ DC, cross 4kHz at t=1sec

% scale the input signal 
inputSignalScaled = inputSignal / k1;

% write the values in the input file for the C program
fid = fopen('..\input.dat','w','b');
fwrite(fid,inputSignalScaled.*2^15,'int16');
fclose(fid);

% compute BlockLength for 160 samples / Block 
BlockLength = fix(length(inputSignalScaled)/160); 
L           = BlockLength * 160;
%% Generate the output signal in Matlab and 
%  compare with the output signal from the C progam

fid            = fopen('..\output.dat','r','b');
outputSignalCW = fread(fid, L, 'int16');
fclose(fid);

% transform the output from CW in integer format
% and scale it
outputSignalCW= k1 * k0 * outputSignalCW'/(2^15);

% compute the output signal from Matlab
outputSignalM = k1 * filter(b,a,inputSignalScaled);

figure(3), plot(t,inputSignalScaled),                title('Unfiltered signal')
figure(4), plot(t,outputSignalM),               grid,title('Matlab output signal')
figure(5), plot(t,outputSignalCW),              grid,title('CW output signal')
figure(6), plot(t,outputSignalCW-outputSignalM),grid,title('Error')



