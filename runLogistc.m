

%% globals
C=0.005;
h=0.007;
nNot=0.1;
timespan = [0 500]; %time interval of the simulation (in days)
%% eq1
N0_1 = .1; % initial condition (initial population size)
h1=0.00135;
C1=0.004;
A1=0.9;
%figure1
%[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,0), timespan, N0_1);
%figure2
%[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,h1), timespan, N0_1);
%figure3
%[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,N1*c), timespan, N0_1);
%figure4
%[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,N1*C1), timespan, nNot);
%figure5
[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,((N1*h)/(A1+N1))), timespan, nNot);


%% eq2
N0_2=1.5;
h2=0.001;
C2=0.003;
A2=0.5;
%figure1
%[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,0),timespan, N0_2);
%figure2
%[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,h2),timespan, N0_2);
%figure3
%[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,N2*C),timespan, N0_2);
%figure4
%[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,N2*C2),timespan, nNot);
%figure5
[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,((N2*h)/(A2+N2))), timespan, nNot);
%% eq3
N0_3=0.5;
h3=0.00375;
C3=0.002;
A3=0.8;
%figure1
%[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,0),timespan, N0_3);
%figure2
%[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,h3),timespan, N0_3);
%figure3
%[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,N3*C),timespan, N0_3);
%figure4
%[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,N3*C3),timespan, nNot);
%figure5
[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,((h*N3)/(A3+N3))), timespan, nNot);

%% graph
figure(1)
plot(t1,N1,'r');
hold on
plot(t2,N2,'g');
plot(t3,N3,'y');
yline(1,'--k');
%yline(2/3,'--k');
hold off
%legend('N0=0.1','N0=1.5','N0=0.5')
%legend('c=0.004','c=0.003','c=0.002')
legend('A=0.1','A=0.5','A=0.8');
xlabel('time (days)')   %% label each axis
ylabel('Number of fish')
axis([timespan,0,1])     