%% 
% 1. Genera una matriu A de 10x10 amb valors aleatoris entre 0 i 255 de tipus enter

A = randi([0, 255], 10)
%% 
% 2. Obté un vector amb la 4ª fila de A
A1 = A(4,:)
%% 
% 3. Obté un vector amb la 4ª columna de A
A2 = A(:,4)
%% 
% 4. Obté una matriu on s'hagi suprimit la 4ª columna de A

% Alternativa 1
A3 = A(:, [1:3, 5:end])
%% 

% Alternativa 2
A3 = A;
A3(:,4) = []
%% 
% 5. Obté un vector amb el valor màxim de cada columna de A
maxColA = max(A)
%% 
% 6. Obté el valor màxim de la matriu A

% Alternativa 1
maxA = max(A(:))
%% 

% Alternativa 2
maxA = max(maxColA)
%% 
% 7. Obté una matriu amb només les files parells de A
parellA = A((2:2:end),:)
%% 
% 8. Obté la fila i columna on es troba el valor mínim de A
minValue = min(A(:));
[row, col] = find(A == minValue)
%% 
% 9. Genera la matriu B trasposant la matriu A
B = A'
%% 
% 10. Obté el producte de les matrius A i B
C = A*B
%% 
% 11. Obté el producte element a element de A i B
D = A.*B
%% 
% 12. Genera una matriu booleana on cada element (i,j) valgui 1 si A(i,j) > B(i,j), i 0 en cas contrari
boolAB = A > B
%% 
% 13. Genera un vector amb tots els elements A(i,j) més grans que B(i,j)

% Alternativa 1
vector_nums_mes_grans = [];

vector_nums_mes_grans = A(A > B);

vector_nums_mes_grans'
%% 

% Alternativa 2
x = 1;
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j) > B(i,j)
            aux(x) = A(i,j);
            x = x + 1;
        end
    end
end
aux
%% 
% 14. Genera una matriu on cada element (i,j) valgui A(i,j) si A(i,j)>B(i,j) , i 0 en cas contrari
for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j) > B(i,j)
            aux2(i,j) = A(i,j);
        else
            aux2(i,j) = 0;
        end
    end
end
aux2