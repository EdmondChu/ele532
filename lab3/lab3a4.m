n = -5:5; 

C_n1 = calculateDn(1,n);
subplot(2,3,1); 
stem(n,abs(C_n1),'.k');
xlabel('n'); ylabel('C_n1');

C_n2 = calculateDn(2,n);
subplot(2,3,2);
stem(n,abs(C_n2),'.k');
xlabel('n'); ylabel('C_n2');

C_n3 = calculateDn(3,n);
subplot(2,3,3);
stem(n,abs(C_n3),'.k');
xlabel('n'); ylabel('C_n3');

 subplot(2,3,4); 
 stem(n,angle(abs(C_n1)),'.k');
 axis([-6 6 -2 4]); 
 xlabel('n'); ylabel('\theta_n1');

 subplot(2,3,5); 
 stem(n,angle((C_n2)),'.k');
 axis([-6 6 -2 4]); 
 xlabel('n'); ylabel('\theta_n2');
 
 subplot(2,3,6); 
 stem(n,angle((C_n3)),'.k');
 axis([-6 6 -2 4]); 
 xlabel('n'); ylabel('\theta_n3');