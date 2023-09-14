% 1. Genera una matriu A de 10x10 amb valors aleatoris entre 0 i 255 de tipus enter

A = randi([0, 255], 10, 10);

A

% 2. Obté un vector amb la 4a fila de A

fila4_A = A(4, :);

fila4_A

% 3. Obté un vector amb la 4a columna de A

colum4_A = A(:, 4);

colum4_A

% 4. Obté una matriu on s'hagi suprimit la 4a columna de A

A_2 = A(:, [1:3, 5:end]);

A_2

% 5. Obté un vector amb el valor màxim de cada columna de A

max_colum = max(A);

max_colum;

% 6. Obté el valor màxim de la matriu A

max_A = max(A(:));

max_A

% 7. Obté una matriu amb només les files parells de A

PAR_A = A(2:2:end, :);

PAR_A

% 8. Obté la fila i columna on es troba el valor mínim de A

min_A = min(A(:));
[fila, columna] = find(A == min_A);

fila
columna

% 9. Genera la matriu B trasposant la matriu A

B = transpose(A);

B

% 10. Obté el producte de les matrius A i B

AB = A*B;

AB

% 11. Obté el producte element a element de A i B

ABA_ele = A .* B;

ABA_ele

% 12. Genera una matriu booleana on cada element (i,j) valgui 1 si A(i,j) > B(i,j), i 0 en cas contrari

AB_BOOL = A > B;

AB_BOOL

%O fent servir bucles:

[files, columnes] = size(A);

for i = 1:files
    for j = 1:columnes
        AB_BOOL2(i,j) = (A(i,j) > B(i,j));
    end
end

AB_BOOL2


% 13. Genera un vector amb tots els elements A(i,j) més grans que B(i,j)

vector_nums_mes_grans = [];

vector_nums_mes_grans = A(A > B);

vector_nums_mes_grans

%O fent servir bucles:

vector_nums_mes_grans2 = [];

[files, columnes] = size(A);

for i = 1:files
    for j = 1:columnes
        if A(i,j) > B(i,j) 
            vector_nums_mes_grans2 = [vector_nums_mes_grans2, A(i,j)];
        end
    end
end


% 14. Genera una matriu on cada element (i,j) valgui A(i,j) si A(i,j)>B(i,j) , i 0 en cas contrari



MAT = [];

[files, columnes] = size(A);

for i = 1:files
    for j = 1:columnes
        if A(i,j) > B(i,j) 
            MAT(i,j) = A(i,j);
        else 
            MAT(i,j) = 0;
        end
    end
end


