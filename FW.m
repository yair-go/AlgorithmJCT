function   D = FW (W)
n= length(W);
D0 = W;
D = zeros(5);
for k=1:n
     k
    for i=1:n
        for j=1:n
            d = min (D0(i,j),D0(i,k)+D0(k,j));
            if (D0(i,j) ~= d)
                a= [i j d];
                disp(a);
            end
             D(i,j) = d;
            % D(i,j) = min (D0(i,j),D0(i,k)+D0(k,j));
        end
    end
    D0=D;
    disp(D);
end
