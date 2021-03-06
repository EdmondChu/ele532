%%
%Question A
%A.1
f = @(t) exp(-t).*cos(2*pi*t);
t = (-2:2);
plot(t,f(t));
hold on;
xlabel('t'); ylabel('f(t)'); grid;
t = (-2:0.01:2);
plot (t,f(t));
hold on;

%A.2
f1 = @(t) exp(-t);
t = (-2:2);
xlabel('t'); ylabel('f(t)'); grid;
plot(t,f1(t));
hold off;

%A.3
%The graph for A.2 and Figure 1.46 are the same since the spacing between
%each t is 1 second... if the values of t were recorded for 0.1t then the
%graphs would differ.

%%
%Question B
%B.1
p = @(t) 1.0.*((t>=0)&(t<1));
t = (-1:0.01:5); 
plot (t,p(t));
xlabel('t'); ylabel('p(t) = u(t) - u(t-1)');
axis ([-1 2 -.1 1.1]);

%B.2
r = @(t) t .* p(t);
n = @(t) r(t) + r(-t-2);
plot (t,r(t)); hold on;
plot (t, n(t));

%B.3
n1 = @(t) n(1/2*t);
n2 = @(t) n1(t + 1/2);
plot(t,n1(t)); hold on;
plot(t,n2(t));
legend('r(t)','n(t)','n1','n2');

%B.4
n3 = @(t) n(t + 1/4);
n4 = @(t) n3(1/2*t);
plot(t,n3(t)); hold on;
plot(t,n4(t));

%B.5
%The graph for n4 and n2 are observed to be the same
%%
%Question C
%C.1
g = @(t) f(t).* u(t);
t = (-2:0.01:2);
plot(t,g(2*t+1)); xlabel('t'); ylabel('g(2t+1)'); grid;

%C.2
s = @(t) g(t+1);
t = (0:0.01:4);
plot(t,s(t)); xlabel('t'); ylabel('s(t)'); grid;

%C.3


%%
%Question D
%D.1
B ([abs(B(i,j))<0.01]) = 0;
