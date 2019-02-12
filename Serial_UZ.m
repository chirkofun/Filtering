instrreset
clc

UZ = serial('COM5');
UZ.InputBufferSize = 4096;
fopen(UZ);

A = [];
C = [];
t =  2;
 for i = 1:t
    A=fread(UZ, [100,1], 'uint16');
    C = [C; A];
    A = 0;
 end
 
 A10 = Filter_Average(C, 10);
 M10 = Filter_Mediana(C, 10);
 M5 = Filter_Mediana(C, 5);
 
 
 subplot(2,2,1);
 hold on
 plot(C);
 subplot(2,2,2);
 plot(C);
 hold on;
 plot(A10);
 subplot(2,2,3);
 plot(C);
 hold on;
 plot(M10);
 subplot(2,2,4);
 plot(C);
 hold on;
 plot(M5);
 grid on;

fclose(UZ);
delete(UZ);