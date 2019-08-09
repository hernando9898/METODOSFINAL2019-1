clc 
clear
syms s
g=9.81;%gravedad en [m/s^2]
m=82;%masa en [kg]
v=36;%velocidad en [m/s]
t=4;%tiempo en [s]
a=3;%valor inferior del intervalo
b=5;%valor superior del intervalo
p=2;%precision
f=((g*m)/s)*(1-(exp(-s*t/m)))-v;
while subs(f,a)*subs(f,b)>0
    a=input('cambie el valor de a');
end
c=(a+b)/2; 
i=0;
x(1)=c;
e=100;
while abs(e)>p

    if subs(f,a)*subs(f,c)>0
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
    i=i+1;
    x(i+1)=c;
    e=((x(i+1)-x(i))/x(i+1))*100;
   
end
disp('la solucion es s=')
disp(c)
disp('y el atgoritmo necito')
disp(i)
disp('interacciones para encontrarla')


