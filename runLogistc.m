timespan = [0 200]; %time interval of the simulation (in days)
N0 = 0.1; % initial condition (initial population size)
[t,N] = ode45(@(t,N) logistic(t,N,0), timespan, N0); %calling the function 'DiseaseModel'
h=0.0005; % rate which no change happens to fish population
[t1,N1] = ode45(@(t1,N1) logistic(t1,N1,h), timespan, N0);


%% ch method harvesting
c=0.005;
[t2,N2] = ode45(@(t2,N2) logistic(t2,N2,(N2*c)), timespan, N0);
%% A stuff
A=1;
[t3,N3] = ode45(@(t3,N3) logistic(t3,N3,((h*N3)/(A+N3))), timespan, N0);

%% graph
figure(1)
plot(t1,N1,'r');
hold on
plot(t2,N2,'g');
plot(t3,N3,'k');
hold off
legend('H(N)=h','H(N)=cN','H(N)=h*N/A+N')
xlabel('time (days)')   %% label each axis
ylabel('Number of fish')
axis([timespan,0,1])     