function [ y ] = Filter_Mediana_5( x )
y = x;
z = [];
for i=1:(length(y))
    z = 0;
        for j=i:(i+4)
            if j<3
                z(j-i+1) = y(i);
            elseif j>(length(y)-3)
                z(j-i+1) = y(i);
            else
                z(j-i+1)=y(j-2);
            end
        end
        z = sort_func(z);        
        y(i) = z(3);
end
end

