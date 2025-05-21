% %MENCARI DAN MEMBUAT PLOT DENGAN FUNGSI PLOTING DI MATLAB
% x = linspace(-0.5*pi,12*pi);
% y1 = sin(x);
% y2 = cos(x);
% figure;
% plot(x,y1,x,y2);
% 
% x = linspace(0,10,150);
% y = cos(5*x);
% 
% 
% plot(x,y,'Color',[0,0.7,0.1])
% 
% title('2-D Line Plot')
% xlabel('x')
% ylabel('cos(5x)')
% 
% r = 2;
% xc = 4;
% yc = 3;
% 
% theta = linspace(0,2*pi);
% x = r*cos(theta) + xc;
% y = r*sin(theta) + yc;
% plot(x,y)
% axis equal
% 
% x = logspace(-1,2);
% y = 2.^x;
% loglog(x,y)
% grid on
% 
% x = logspace(-1,2);
% y1 = 10.^x;
% y2 = 1./10.^x;
% loglog(x,y1,x,y2)
% grid on
% 
% x = logspace(-1,2,10000);
% y = 5 + 3*sin(x);
% loglog(x,y)
% 
% x = logspace(-1,2,20);
% y = 10.^x;
% loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
% grid on
% 
% z = [50 40 30 20 10];
% bar3(z);
% 
% z = [1 4 7; 2 5 8; 3 6 9; 4 7 10];
% bar3(z)
% 
% [X,Y,Z] = sphere(100);
% contour3(X,Y,Z)
% 
% Z = X.^2 + X.^4 + Y.^2 + 10;
% contour3(Z)
% 
% [X,Y] = meshgrid(-2:0.0125:2);
% Z = X.*exp(-X.^2-Y.^2+X.^6);
% [M,c] = contour3(X,Y,Z,30);
% c.LineWidth = 3;
% 
% surf(peaks)
% F = getframe(gcf);
% 
% t = linspace(0, 2*pi, 1000);
% r = 1 + cos(t);               
% polarplot(t, r, 'LineWidth', 2);
% 
% [X,Y,Z,V] = flow;
% zslice = 0;
% contourslice(X,Y,Z,V,[],[],zslice)
% grid on
% 
% [X,Y,Z] = meshgrid(-5:0.2:5);
% V = X.*exp(-X.^2-Y.^2-Z.^2 + sin(X))+X.^5+sin(Y).^2;
% 
% [xsurf,ysurf] = meshgrid(-2:0.2:2);
% zsurf = xsurf.^2-ysurf.^2;
% contourslice(X,Y,Z,V,xsurf,ysurf,zsurf,20)
% view(3)
% grid on
