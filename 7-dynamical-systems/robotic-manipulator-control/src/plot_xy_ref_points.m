close all;
L1 = 0.6;
L2 = 0.6;

x = L1*cos(ref1(2,:))+L2*cos(ref1(2,:)+ref2(2,:));
y = L1*sin(ref1(2,:))+L2*sin(ref1(2,:)+ref2(2,:));
set(0, 'defaultLineLineWidth', 2);

hold on
plot(xy(:,2),xy(:,3),'k')
scatter(x,y,'r')
ylabel('y')
xlabel('x')
legend('Trajetoria referencia', 'pontos referencia')

print('xy_plot.png','-dpng')