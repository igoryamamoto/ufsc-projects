close all;
set(0, 'defaultLineLineWidth', 2);
plot(xy(:,4),xy(:,5),'r')
hold on
plot(xy(:,2),xy(:,3),'k--')
ylabel('y')
xlabel('x')
legend('Resposta manipulador', 'Trajetoria referencia')

print('xy_plot.png','-dpng')