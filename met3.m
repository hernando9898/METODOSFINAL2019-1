clc 
clear
syms H
g=9.81;%gravedad en [m/s^2]
L=4;%masa en [m]
v=5;%velocidad en [m/s]
t=2.5;%tiempo en [s]
a=0;%valor inferior del intervalo
b=2;%valor superior del intervalo
p=1;%precision
f=(sqrt(2*g*H)*tanh((sqrt(2*g*H))*t/(2*L)))-v;
while subs(f,a)*subs(f,b)>0
    a=input('cambie el valor de a');
end
c=(a+b)/2; 
e=100;
i=0;
x(1)=c;
y(1)=subs(f,c);
while abs(e)>p

    if subs(f,a)*subs(f,c)>0
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
    i=i+1;
    x(i+1)=c;
    y(i+1)=subs(f,c);
    e=((x(i+1)-x(i))/x(i+1))*100;
end
plot(x,t,'g*-')
xlabel('xxxxxx')
ylabel('yyyyy')
disp('la solucion es H=')
disp(c)
disp('y el atgoritmo necito')
disp(i)
disp('interacciones para encontrarla')


