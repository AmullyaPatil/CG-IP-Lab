a=magic(4);
disp('a=');
disp(a);
b=input('enter the row <size of the matrix');
c=input('enter the column <size of the matrix');
disp('element');
disp(a(b,c));
N4=[a(b+1,c),a(b-1,c),a(b,c+1),a(b,c-1)];
disp('N4=');
disp(N4);
N8=[a(b+1,c),a(b-1,c),a(b,c+1),a(b,c-1),a(b+1,c+1),a(b+1,c-1),a(b-1,c-1),a(b-1,c+1)];
disp('N8=');
disp(N8);
ND=[a(b+1,c+1),a(b+1,c-1),a(b-1,c-1),a(b-1,c+1)];
disp('ND=');
disp(ND); 
