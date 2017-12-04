function   D = FW (W)
%Example
% W = [
% 0     2     4     2     2;
% Inf     0   Inf     2     2;
% Inf    -2     0   Inf     2;
% Inf   Inf     1     0   Inf;
% Inf   Inf   Inf    -1     0]
n= length(W);
D0 = W;
[D, P] = initialize(W);
for k=1:n
     k
     disp('     the changes :');
     disp('     i     j     d   Pij(k)');
    for i=1:n
        for j=1:n
            d = min (D0(i,j),D0(i,k)+D0(k,j));
            if (D0(i,j) ~= d)
                a= [i j d P(k,j)];
                P(i,j) = P(k,j);
                disp(a);
            end
             D(i,j) = d;
            % D(i,j) = min (D0(i,j),D0(i,k)+D0(k,j));
        end
    end
    D0=D;
    disp('     D matrix :');
    disp(D);
    disp('     P matrix :');
    disp(P);
end
end

function  [D, P] = initialize(W)
n = length(W);
D = zeros(5);
P = repmat(1:n,n,1)';
P(W==inf) = NaN;
P(logical(eye(n)))=NaN;
end
