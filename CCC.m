clc;
clear all;
close all;

x1 = [1 1 1 -1];
x2 = [1 -1 1 1];

[ans1 , u] = xcorr(x1 , x1); %aperiodic autocorrelation of x1
subplot(3 , 3 , 1);
stem(u , ans1 , 'filled');
title('$$\hat{\rho}(c^0_0;u)$$' , 'Interpreter' , 'Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

[ans2 , u] = xcorr(x2 , x2); %aperiodic autocorrelation of x2
subplot(3 , 3 , 4);
stem(u , ans2 , "filled");
title('$$\hat{\rho}(c^0_1;u)$$' , 'Interpreter' , 'Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

ans3 = ans1 + ans2; %summation of an1 and ans2 = 0
subplot(3 , 3 , 7);
stem(u , ans3 , 'filled');
title('$$\hat{\rho}(c^0_0;u)+\hat{\rho}(c^0_1;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

x4 = [1 1 -1 1];
x5 = [1 -1 -1 -1];

[ans4 , u] = xcorr(x4 , x4); %aperiodic autocorrelation of x4
subplot(3 , 3 , 2);
stem(u , ans4 , 'filled');
title('$$\hat{\rho}(c^1_0;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

[ans5 , u] = xcorr(x5 , x5); %aperiodic autocorrelation of x4
subplot(3 , 3 , 5);
stem(u , ans5 , "filled");
title('$$\hat{\rho}(c^1_1;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

ans6 = ans4 + ans5; %summation of an4 and ans5 = 0
subplot(3 , 3 , 8);
stem(u , ans6 , 'filled');
title('$$\hat{\rho}(c^1_0;u)+\hat{\rho}(c^1_1;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

[ans7 , u] = xcorr(x1 , x4); %aperiodic crosscorrelation of x1 and x4 
subplot(3 , 3 , 3);
stem(u , ans7 , 'filled');
title('$$\hat{\rho}(c^0_0,c^1_0;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

[ans8 , u] = xcorr(x2 , x5); %aperiodic crosscorrelation of x2 and x5 
subplot(3 , 3 , 6);
stem(u , ans8 , 'filled');
title('$$\hat{\rho}(c^0_1,c^1_1;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

ans9 = ans7 + ans8; %summation of an7 and ans8 = 0
subplot(3 , 3 , 9);
stem(u , ans9 , 'filled');
title('$$\hat{\rho}(c^0_0,c^1_0;u)+\hat{\rho}(c^0_1,c^1_1;u)$$','Interpreter','Latex');
xlabel('u');
axis([-3 , 3 , -5 , 10]);

