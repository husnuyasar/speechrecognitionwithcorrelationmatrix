function [ ort ] = Ikarsilastirma( filename )
voice=audioread(filename);
x=voice;
x=x';
x=x(1,:);
o=x';

a1=audioread('ayteni.wav');
a1=a1';
a1=a1(1,:);
a1=a1';

a2=audioread('dursuni.wav');
a2=a2';
a2=a2(1,:);
a2=a2';

a3=audioread('fatmai.wav');
a3=a3';
a3=a3(1,:);
a3=a3';

a4=audioread('nagihani.wav');
a4=a4';
a4=a4(1,:);
a4=a4';

a5=audioread('hi4.wav');
a5=a5';
a5=a5(1,:);
a5=a5';

a6=audioread('Salim_i.wav');
a6=a6';
a6=a6(1,:);
a6=a6';

a7=audioread('trainingI1.wav');
a7=a7';
a7=a7(1,:);
a7=a7';

a8=audioread('trainingI2.wav');
a8=a8';
a8=a8(1,:);
a8=a8';

z1=xcorr(o,a1);
z2=xcorr(o,a2);
z3=xcorr(o,a3);
z4=xcorr(o,a4);
z5=xcorr(o,a5);
z6=xcorr(o,a6);
z7=xcorr(o,a7);
z8=xcorr(o,a8);

m1=max(z1);
m2=max(z2);
m3=max(z3);
m4=max(z4);
m5=max(z5);
m6=max(z6);
m7=max(z7);
m8=max(z8);

ort = (m1+m2+m3+m4+m5+m6+m7+m8)/8;
end

