function dn = calculateDn(sig, n)
if sig == 1
    dn = zeros(size(n));
    dn(n==3)= n(n==3)*1/2;
    dn(n==-3)= n(n==-3)*1/2;
    dn(n==1)= n(n==1)*1/2;
    dn(n==-1)= n(n==-1)*1/2;
    
elseif sig == 2
    dn(n==0) = 1/2; 
    dn(n~=0) = (1./(pi * n(n~=0))) .* sin((pi/2) * n(n~=0));
    
else
    dn(n==0) = 1/4; 
    dn(n~=0) = (1./(pi .* n(n~=0))).*sin((pi./4).*n(n~=0));

end
