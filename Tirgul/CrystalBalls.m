function [ C,t ] = CrystalBalls( n,k )
%  Crystal Balls Problem, Dynamic programming O(n^2*k)

C = zeros(k,n);
C(1,:) = 1:n;
C(:,1)=1;
for i=2:k
    for j=2:n
        F = calcF(C,i,j);
        C(i,j)=min(F);
    end
end
t = C(k,n);
end

function F=calcF(C,k,n)
F=zeros(n,1);
for i=1:n
    if (i==1)
        a=0;
    else
         a=C(k-1,i-1);
    end
    if (i == n)
        b=0;
    else
         b=C(k,n-i);
    end       
    F(i) = max(a,b);
end
F=F+1;
end

