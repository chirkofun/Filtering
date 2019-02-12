function [ y ] = Filter_Mediana( x, window )
y = x;
w = uint16(window);
z = [];
for i=1:(length(y))
    z = 0;
    for j=i:(i + w - 1)
        if j<=w/2
           z(j-i+1) = y(1);
        elseif j>=(length(y)-w/2)
           z(j-i+1) = y(length(y));
        else
           z(j-i+1)=y(j-(w/2)+1);
        end
    end
    z = sort_func(z);        
    y(i) = z(w/2);
end
end

