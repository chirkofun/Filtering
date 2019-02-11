function [ y ] = sort_func( x )
buff = 0;
y = x;
for i=1:length(y)
    for j=1:(length(y)-(i+1))
        if (y(j)<y(j+1))
            buff = y(j);
            y(j) = y(j + 1);
            y(j + 1) = buff;
        end
    end
end

