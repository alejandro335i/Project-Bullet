%Impact Force of Speeding Bullet
%ME 1311-C06
%Jose Munoz - Juan Sablon
%this program will help you determine the bullet with the most impact
%force using their mass and their velocity. 
 
clc, clear all, close all, format compact 
 
disp('The following variables represent constants to be used by the program:')
disp(' ') % will display and empty line
d = .104, disp('The value above is in feet, but it is equivalent to 1.25 inches.') %this is the thickness, in feet, of the bulletproof glass with which the bullets will collide. Consequently, this will be the distance upon which the force is exerted at the moment of impact.
disp(' ')
g = 32.17 %this is the gravitational constant of Earth in feet per second (ft./s)
 
disp(' ') 
disp('The following variables represent the weights of every caliber in pounds(lbs.):')
disp(' ')
W9 = 0.021 %weight of 9mm bullet in lbs.
W40 = 0.024 %weight of .40 bullet in lbs.
W45 = 0.033 %weight of .45 bullet in lbs.
W7_62 = 0.018 %weight of 7.62x39 bullet in lbs.
W50 = 0.114 %weight of .50BMG bullet in lbs.
 
disp(' ')
disp('The following variables represent the velocity of each bullet in feet per second (ft./s):')
disp(' ')
V9 = 1246.72 %velocity of 9mm bullet (ft./s)
V40 = 1115.49 %velocity of .40 bullet (ft./s)
V45 = 836.61 %velocity of .45 bullet (ft./s)
V7_62 = 2421.26 %velocity of 7.62x39 bullet (ft./s)
V50 = 2893.70 %velocity of .50BMG bullet (ft./s)
%calculating mass, in slugs, of projectile using it's weight. 
disp(' ')
disp('Choose an input from the selection below for the program to calculate the mass of the chosen bullet, in slugs, using their weight in lbs.')
disp(' ')
disp('Input 1 to calculate mass of 9mm bullet.')
disp('Input 2 to calculate mass of .40 bullet.')
disp('Input 3 to calculate the mass of .45 bullet.')
disp('Input 4 to calculate the mass of 7.62x39 bullet.')
disp('Input 5 to calculate the mass of .50BMG bullet.')
disp(' ')
W = input('Selection variable is = ');
disp(' ')
if W==1
    m = W9/g;
    fprintf('The mass of the 9mm bullet is %.3f slugs.\n', m)
elseif W==2
    m = W40/g;
    fprintf('The mass of the .40 bullet is %.3f slugs.\n', m)
elseif W==3
    m = W45/g;
    fprintf('The mass of the .45 bullet is %.3f slugs.\n', m)
elseif W==4
    m = W7_62/g;
    fprintf('The mass of the 7.62x39 bullet is %.3f slugs.\n', m)
elseif W==5
    m = W50/g;
    fprintf('The mass of the .50BMG bullet is %.3f slugs.\n', m)
else 
    disp('Please input value from 1-5.')
while (W<1 || W>5)
    disp('Invalid entry. Please try again.')
    W = input('Selection variable is = ');
    if W==1
    m = W9/g;
    fprintf('The mass of the 9mm bullet is %.3f slugs.\n', m)
elseif W==2
    m = W40/g;
    fprintf('The mass of the .40 bullet is %.3f slugs.\n', m)
elseif W==3
    m = W45/g;
    fprintf('The mass of the .45 bullet is %.3f slugs.\n', m)
elseif W==4
    m = W7_62/g;
    fprintf('The mass of the 7.62x39 bullet is %.3f slugs.\n', m)
elseif W==5
    m = W50/g;
    fprintf('The mass of the .50BMG bullet is %.3f slugs.\n', m)
else 
    disp('Please input value from 1-5.')
    end 
end
end
%calculating Kinetic Energy
disp(' ')
disp('The program in now calculating the Kinetic Energy of each projectile using the mass previously acquired and the velocities of the bullets.')
disp('please wait a few seconds')
disp(' ')
pause(5)
if W==1
    KE = (1/2)*m*V9^2;
    fprintf('The Kinetic Energy of the 9mm bullet is %.3f ft.lbs.\n', KE)
elseif W==2
    KE = (1/2)*m*V40^2;
    fprintf('The Kinetic Energy of the .40 bullet is %.3f ft.lbs.\n', KE)
elseif W==3
    KE = (1/2)*m*V45^2;
    fprintf('The Kinetic Energy of the .45 bullet is %.3f ft.lbs.\n', KE)
elseif W==4 
    KE = (1/2)*m*V7_62^2;
    fprintf('The Kinetic Energy of the 7.62x39 bullet is %.3f ft.lbs.\n', KE)
elseif W==5
    KE = (1/2)*m*V50^2;
    fprintf('The Kinetic Energy of the .50BMG bullet is %.3f ft.lbs.\n', KE)
else
    disp('Please input value from 1-5.')
while (W<1 || W>5)
     disp('Invalid entry. Please try again.')
     W = input('Selection variable is = ');
    if W==1
    KE = (1/2)*m*V9^2;
    fprintf('The Kinetic Energy of the 9mm bullet is %.3f ft.lbs.\n', KE)
elseif W==2
    KE = (1/2)*m*V40^2;
    fprintf('The Kinetic Energy of the .40 bullet is %.3f ft.lbs.\n', KE)
elseif W==3
    KE = (1/2)*m*V45^2;
    fprintf('The Kinetic Energy of the .45 bullet is %.3f ft.lbs.\n', KE)
elseif W==4 
    KE = (1/2)*m*V7_62^2;
    fprintf('The Kinetic Energy of the 7.62x39 bullet is %.3f ft.lbs.\n', KE)
elseif W==5
    KE = (1/2)*m*V50^2;
    fprintf('The Kinetic Energy of the .50BMG bullet is %.3f ft.lbs.\n', KE)
else
    disp('Please input value from 1-5.')
    end
end
end    
%Since Work=KE then F*d=(1/2)*m*v^2
%As a result, our final force on impact equation is F=((1/2)*m*v^2)/d
disp(' ')
disp('The program is now calculating the total impact force of the chosen bullet.')
disp('please wait a few seconds')
disp(' ')
pause(5)
if W==1
    F = ((1/2)*m*V9^2)/d;
    fprintf('The impact force of the 9mm bullet is approximately %.3f ft.lbs.\n', F)
elseif W==2
    F = ((1/2)*m*V40^2)/d;
    fprintf('The impact force of the .40 bullet is approximately %.3f ft.lbs.\n', F)
elseif W==3
    F = ((1/2)*m*V45^2)/d;
    fprintf('The impact force of the .45 bullet is approximately %.3f ft.lbs.\n', F)
elseif W==4
    F = ((1/2)*m*V7_62^2)/d;
    fprintf('The impact force of the 7.62x39 bullet is approximately %.3f ft.lbs.\n', F)
elseif W==5
    F = ((1/2)*m*V50^2)/d;
    fprintf('The impact force of the .50BMG bullet is approximately %.3f ft.lbs.\n', F)
else
    disp('Invalid value for W. Re-run program.') 
end 
 
figure(1) %This figure plots the following: mass and velocity, impact force in relation to mass, and impact force in relation to velocity of each bullet.
y = [1.2467e+03, 1.1155e+03, 836.6100, 2.4213e+03, 2.8937e+03]; %these are the velocities, in ft./s, of each bullet(9mm, .40, .45, 7.62x39, .50BMG)
x = [6.5278e-04, 7.4604e-04, 0.0010, 5.5953e-04, 0.0035]; %these are the masses, in slugs, of each bullet(9mm, .40, .45, 7.62x39, .50BMG)
z = [4.8780e+03, 4.4630e+03, 3.4518e+03, 1.5770e+04, 1.4266e+05]; %these are the impact forces, in ft.lbs., of each bullet(9mm, .40, .45, 7.62x39, .50BMG)
 
subplot(1,3,1)
plot(x,y,'k-*')
title('Comparison of Velocity and Mass of Each Bullet')
xlabel('Mass in Slugs')
ylabel('Velocity')
legend('Markers are bullets in order of increasing caliber')
annotation('textbox', [0.16, 0.1, 0.1, 0.1], 'String', "Markers = 9mm, .40, .45, 7.62x39, .50BMG")
 
subplot(1,3,2)
plot(x,z,'r-*')
title('Impact Force in Relation to Mass')
xlabel('Mass in Slugs')
ylabel('Impact Force')
legend('Markers are bullets in order of increasing caliber')
annotation('textbox', [0.435, 0.1, 0.1, 0.1], 'String', "Markers = 9mm, .40, .45, 7.62x39, .50BMG")
 
subplot(1,3,3)
plot(z,y,'b-*')
title('Impact Force in Relation to Velocity')
xlabel('Impact Force')
ylabel('Velocity')
legend('Markers are bullets in order of increasing caliber')
annotation('textbox', [0.725, 0.1, 0.1, 0.1], 'String', "Markers = 9mm, .40, .45, 7.62x39, .50BMG")
 
disp('Enlarge figure to see proper display of data.')