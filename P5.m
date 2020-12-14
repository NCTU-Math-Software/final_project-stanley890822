tol=10^-5;
axis([-50,50,-50,50])
plot(0,0,'o')
[x,y]=ginput(3);

plot(0,0,'o')
plot(x,y,'b')
hold on
plot([x(3),x(1)],[y(3),y(1)],'b')
plot(0,0,'o')
hold off

a1=[x(1),y(1),0];
a2=[x(2),y(2),0];
a3=[x(3),y(3),0];

A=norm(cross(a1,a2))+norm(cross(a2,a3))+norm(cross(a3,a1));
B=norm(cross([x(2)-x(1),y(2)-y(1),0],[x(3)-x(1),y(3)-y(1),0]));

if abs(A-B)>tol
    disp('原點不在三角形範圍內')
else 
    disp('原點在三角形範圍內')
end