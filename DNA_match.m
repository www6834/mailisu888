data_DNA = fopen('DNA_data.txt','r');
get_data = fscanf(data_DNA,'%c');
[s,t] = strtok(get_data);
t = t(2:end);
n = length(s);
m = length(t);

Matrix = zeros(n + 1, m + 1);

a = n + 1;
b = m + 1;

for i = 2:b
    Matrix(1,i) = Matrix(1,i-1) + 2;
end

for j = 2:a
    Matrix(j,1) = Matrix(j-1,1) + 2;
end


for k = 2:a
    for f = 2:b
        l = min(Matrix(k-1,f),Matrix(k,f-1));
        p = min(l,Matrix(k-1,f-1));
        if k <= f
            if p == Matrix(k-1,f)
                Matrix(k,f) = l + 2;
            elseif p == Matrix(k,f-1)
                Matrix(k,f) = l + 2;
            elseif p == Matrix(k-1,f-1)
                if s(f-1) == t(f-1)
                    Matrix(k,f) = Matrix(k-1,f-1) + 0;
                else
                    Matrix(k,f) = Matrix(k-1,f-1) + 1;
                end
            end
        elseif k > f
            if p == Matrix(k-1,f)
                Matrix(k,f) = l + 2;
            elseif p == Matrix(k,f-1)
                Matrix(k,f) = l + 2;
            elseif p == Matrix(k-1,f-1)
                    Matrix(k,f) = Matrix(k-1,f-1) + 2;
             end
        end
    end
end

Matrix(1000:1010,1000:1010)

fclose(data_DNA);
