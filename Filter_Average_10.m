function [ y ] = Filter_Average_10( x )
y = [];
for i=1:(length(x))
    w = 0;
        for j=i:(i+9)
            if j<5
                w = w + x(i);
            elseif j>(length(x)-5)
                w = w + x(i);
            else
                w = w + x(j-4);
            end
        end
        w = w/10;
    y(i) = w;
end
end

