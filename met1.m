clc 
clear
a=50;%valor inferior del intervalo
b=100;%valor superior del intervalo
p=0.1;%precision
while pol(a)*pol(b)>0
    a=input('cambie el valor de a');
end
c=a-((pol(a)*(b-a))/(pol(b)-pol(a)));
e=100;
i=0;
x(1)=c;
while abs(e)>p
    if (pol(a)*pol(c))>0
        a=c;
    else
        b=c;
    end
    c=a-((pol(a)*(b-a))/(pol(b)-pol(a)));
    i=i+1;
    x(i+1)=c;
    e=((x(i+1)-x(i))/x(i+1))*100;
end
disp('la solucion es m=')
disp(c)
disp('y el atgoritmo necito')
disp(i)
disp('interacciones para encontrarla')
function f=pol(m) 
g=9.81;%gravedad en [m/s^2]
s=15;%resistencia en [kg/s]
v=36;%velocidad en [m/s]
t=10;%tiempo en [s]
f=((g*m)/s)*(1-(exp(-s*t/m)))-v;
end