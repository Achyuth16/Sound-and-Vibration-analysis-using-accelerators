%% 
clc;
clear all;
close all; 
daq.getDevices 
s=daq.createSession('ni');
s.DurationInSeconds=120;
s.Rate=4000;
ch1=s.addAnalogInputChannel('Dev1','ai0','voltage');
ch2=s.addAnalogInputChannel('Dev1','ai1','voltage');
ch3=s.addAnalogInputChannel('Dev1','ai2','voltage');
s.Channels
%% 
[data,time]=s.startForeground()
s.stop
%% 
figure
plot(time,data(:,1))
figure
plot(time,data(:,2))
figure
plot(time,data(:,3))