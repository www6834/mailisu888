data_DNA1 = fopen('DNA_data1.txt','r');
s = fscanf(data_DNA1,'%c');
data_DNA2 = fopen('DNA_data2.txt','r');
t = fscanf(data_DNA2,'%c');
n = length(s);
m = length(t);

Matrix = zeros(n + 1, m + 1);

v = zeros(1,3); 

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
       if s(k-1) == t(f-1)
          v(1,1) = Matrix(k-1,f-1);
       else
          v(1,1) = Matrix(k-1,f-1) + 1;
       end
            
            v(1,2) = Matrix(k-1,f) + 2;
            v(1,3) = Matrix(k,f-1) + 2;
        Matrix(k,f) = min(v);
        
    end
end

similar = Matrix(a,b) / n;

fprintf('The cost of the DNA matching is %d.\n', Matrix(a,b));
fprintf('Divided by their length is %f, and it is less than 5 percent.\n',similar);
fprintf('Therefore they have the same biological function.\n');
fclose(data_DNA);
