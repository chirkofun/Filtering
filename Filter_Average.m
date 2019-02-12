function [ y ] = Filter_Average( x, window )
y = [];
ww = uint16(window);
for i=1:(length(x))
    w = 0;
        for j=i:(i + ww - 1)
            if j<=ww/2
                w = w + x(i);
            elseif j>=(length(x)-ww/2)
                w = w + x(i);
            else
                w = w + x(j-(ww/2)+1);
            end
        end
        w = w/ww;
        y(i) = w;
end
end

