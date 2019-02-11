function [ y ] = Filter_Mediana_10( x )
y = x;
z = [];
for i=1:(length(y))
    z = 0;
        for j=i:(i+9)
            if j<5
                z(j-i+1) = y(i);
            elseif j>(length(y)-5)
                z(j-i+1) = y(i);
            else
                z(j-i+1)=y(j-4);
            end
        end
        z = sort_func(z);        
        y(i) = z(5);
end
end

