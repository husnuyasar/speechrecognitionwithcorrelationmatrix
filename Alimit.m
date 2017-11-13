function [ minA, maxA ] = Alimit()

a1=audioread('aytena.wav');
a1=a1';
a1=a1(1,:);
a1=a1';

a2=audioread('dursuna.wav');
a2=a2';
a2=a2(1,:);
a2=a2';

a3=audioread('fatmaa.wav');
a3=a3';
a3=a3(1,:);
a3=a3';

a4=audioread('nagihana.wav');
a4=a4';
a4=a4(1,:);
a4=a4';

a5=audioread('ha5.wav');
a5=a5';
a5=a5(1,:);
a5=a5';

a6=audioread('Salim_a.wav');
a6=a6';
a6=a6(1,:);
a6=a6';

a7=audioread('trainingA1.wav');
a7=a7';
a7=a7(1,:);
a7=a7';

a8=audioread('trainingA2.wav');
a8=a8';
a8=a8(1,:);
a8=a8';

z12=xcorr(a1,a2);
z13=xcorr(a1,a3);
z14=xcorr(a1,a4);
z15=xcorr(a1,a5);
z16=xcorr(a1,a6);
z17=xcorr(a1,a7);
z18=xcorr(a1,a8);

z23=xcorr(a2,a3);
z24=xcorr(a2,a4);
z25=xcorr(a2,a5);
z26=xcorr(a2,a6);
z27=xcorr(a2,a7);
z28=xcorr(a2,a8);

z34=xcorr(a3,a4);
z35=xcorr(a3,a5);
z36=xcorr(a3,a6);
z37=xcorr(a3,a7);
z38=xcorr(a3,a8);

z45=xcorr(a4,a5);
z46=xcorr(a4,a6);
z47=xcorr(a4,a7);
z48=xcorr(a4,a8);

z56=xcorr(a5,a6);
z57=xcorr(a5,a7);
z58=xcorr(a5,a8);

z67=xcorr(a6,a7);
z68=xcorr(a6,a8);

z78=xcorr(a7,a8);

m12 = max(z12);
m13 = max(z13);
m14 = max(z14);
m15 = max(z15);
m16 = max(z16);
m17 = max(z17);
m18 = max(z18);
m23 = max(z23);
m24 = max(z24);
m25 = max(z25);
m26 = max(z26);
m27 = max(z27);
m28 = max(z28);
m34 = max(z34);
m35 = max(z35);
m36 = max(z36);
m37 = max(z37);
m38 = max(z38);
m45 = max(z45);
m46 = max(z46);
m47 = max(z47);
m48 = max(z48);
m56 = max(z56);
m57 = max(z57);
m58 = max(z58);
m67 = max(z67);
m68 = max(z68);
m78 = max(z78);

arrayA = [m12 m13 m14 m15 m16 m17 m18 m23 m24 m25 m26 m27 m28 m34 m35 m36 m37 m38 m45 m46 m47 m47 m48 m56 m57 m58 m67 m68 m78];
minA = min(arrayA);
maxA = max(arrayA);

end

