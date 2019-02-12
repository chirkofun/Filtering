function [ y ] = Filter_LowPass( x , k )
K = k;
y = x;
old = 0;
new = 0;

for i=1:length(y)
    if i==1
        new = y(i);
    else
        old = y(i-1);
        new = y(i);
        y(i) = (1-K)*new + K*old;
    end
end

