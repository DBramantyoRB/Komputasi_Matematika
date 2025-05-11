% clc;
% clear;
% %ITERASI JACOBI
% % Nilai awal
% % x1_0 = a, x2_0 = 0, x3_0 = 0, x4_0 = 0 
% a = 0; b = 0; c = 0; d = 0;
% x1 = (6 + b - 2*c)/10;
% x2 = (25+a+c-3*d)/11;
% x3 = (-11-2*a+b+d)/10;
% x4 = (15-3*b+c)/8;
% galA = abs((x1-a)/x1);
% galB = abs((x2-b)/x2);
% galC = abs((x3-c)/x3);
% galD = abs((x4-d)/x4);
% iterasi = 0;
% fprintf('Iterasi\t\tx1\t\tx2\t\tx3\t\tx4\n');
% fprintf('%d\t\t%.4f\t%.4f\t%.4f\t%.4f\n', iterasi, x1, x2, x3, x4);
% % 
% % % Iterasi Jacobi
% while galA ~= 0 || galB ~= 0 || galC ~= 0 || galD ~= 0
% %     % Simpan nilai sebelumnya
%     a = x1;
%     b = x2;
%     c = x3;
%     d = x4;
% 
%     %Iterasi baru (menggunakan nilai sebelumnya: a, b, c, d)
%     x1 = (6 + b - 2*c)/10;
%     x2 = (25 + a+ c -3*d)/11;
%     x3 = (-11 - 2*a + b + d)/10;
%     x4 = (15 - 3*b + c)/8;
%     galA = (x1-a)/x1;
%     galB = (x2-b)/x2;
%     galC = (x3-c)/x3;
%     galD = (x4-d)/x4;
%     iterasi = iterasi + 1;
%     p = sprintf('%d\t%d\t%d\t%d\t%d\t\n', iterasi, x1, x2, x3, x4);
%     disp(p);
%  end
% 
% fprintf('\nSolusi :\n');
% fprintf('x1 = %d, x2 = %d, x3 = %d, x4 = %d\n', x1, x2, x3, x4)
% 
% %GUASS SIDEL
% %x1_0 = a, x2_0 = 0, x3_0 = 0, x4_0 = 0 
% a = 0; b = 0;  c = 0;  d = 0; iterasi = 0;
% x1 = (6 + b - 2*c)/10;
% x2 = (25+x1+c-3*d)/11;
% x3 = (-11-2*x1+x2+d)/10;
% x4 = (15-3*x2+x3)/8;
% galA = (x1-a)/x1;
% galB = (x2-b)/x2;
% galC = (x3-c)/x3;
% galD = (x4-d)/x4;
% disp('Iterasi       x1         x2         x3         x4')
% fprintf('\t%d\t%d\t%d\t%d\t%d\n', iterasi, x1, x2, x3, x4)
% 
% while galA ~= 0 || galB ~= 0 || galC ~= 0 || galD ~= 0
%     x1 = (6 + x2-2*x3)/10;
%     x2 = (25+x1+x3-3*x4)/11;
%     x3 = (-11-2*x1+x2+x4)/10;
%     x4 = (15-3*x2+x3)/8;
%     galA = (x1-a)/x1;
%     galB = (x2-b)/x2;
%     galC = (x3-c)/x3;
%     galD = (x4-d)/x4;
%     a = x1; b = x2; c = x3; d = x4;
%     iterasi = iterasi + 1;
%     fprintf('%d\t\t%d\t\t%d\t\t%d\t\t%d\n', iterasi, x1, x2, x3, x4)
% end
% disp('Solusi : ')
% fprintf('x1=%d\tx2=%d\tx3=%d\tx4=%d', x1, x2, x3, x4)
% % 
% %INTEGRAL JUMALAHAN RIEMAN
% x = [0,1];
% y = 2*x.^2;
% h = 0.1;
% 
% %RIEMAN KIRI
% syms x;
%  y = 2 *x.^3;
%  h = 0.1;
%  a = 0; b = 1; x = 0;
%  jumRiem = 0;
%  while(x <(b-h))
%      y = 2 * x.^3;
%      x = x + h;
%      jumRiem = (jumRiem + y);
%      fprintf('F(x%d) = %.4f\n', a, y)
%      a = a+1;
%  end 
%  fprintf('Maka Jumlahan Rieman Kiri adalah: %.2f x %.4f = %.4f\n', h, jumRiem, jumRiem*h);
%  
% % RIEMAN KANAN
% syms x;
%  y = 2 *x.^3;
%  h = 0.1;
%  a = 0; b = 1; x = 0.1;
%  jumRiem = 0;
%  while(x < b)
%      y = 2 * x.^3;
%      x = x + h;
%      jumRiem = (jumRiem + y);
%      fprintf('F(x%d) = %.4f\n', a, y)
%      a = a+1;
%  end 
%  fprintf('Maka Jumlahan Rieman Kanan adalah: %.2f x %.4f = %.4f\n', h, jumRiem, jumRiem*h);
% % 
%  %RIEMAN TENGAH
% syms x;
%  y = 2 *x.^3;
%  h = 0.1;
%  a = 0; b = 1; x = 0;
%  jumRiem = 0;
%  x = (x + h)/2;
%  while(x < b)
%      y = 2 * x.^3;
%      x = x+h;
%      jumRiem = (jumRiem + y);
%      fprintf('F(x%d) = %.4f\n', a, y)
%      a = a+1;
%  end 
%  fprintf('Maka Jumlahan Rieman Tengah adalah: %.2f x %.4f = %.4f\n', h, jumRiem, jumRiem*h);
% 
% %ATURAN TRAPESIUM
% %menghitung f(0) dan f(1)
% f0 = 0; f9 = 2;
% syms x;
% y = 2 * x.^3;
% h = 0.1;
% trap = 0;
% a = 1; b = 1; x = 0.1;
% fprintf('f(x0) = %d\n', f0)
% while( x <= (b-h))
%     y = 2*x.^3;
%     x = x + h;
%     trap = trap + y;
%     fprintf('F(x%d) = %.4f\n', a, y);
%     a = a+1;
% end
% jumfin = (h/2)*(f0 + 2*trap + f9);
% fprintf('f(x9) = %d\n', f9)
% fprintf('Jumlahan Trapesium adalah : (0.1/2) * %d + 2 x %.f4 + %d = %.4f', f0, trap, f9, jumfin)
% 
