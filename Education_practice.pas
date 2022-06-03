Program Educational_practicу;

const
  Nmax=20; //ограничение максимального количества элементов в массиве
  
var 
  n,i,j,k:integer;
  g:double;
  A:array[1..Nmax] of double;
  fin, fout: TextFile;

begin
//связывание файловых переменных с внешними файлами
AssignFile(fout,'C:\PABCWork.NET\Output\2 сем\Education_practice_fout.txt');
AssignFile(fin,'C:\PABCWork.NET\Output\2 сем\Education_practice_fin.txt');

Reset(fin);//открытие уже существующего файла(если файла с таким именем не существует, то возникнет ошибка)
Rewrite(fout);//создание нового файла(если файл с таким названием уже существует, то он пересоздается)

readln(fin, n);//количество элементов в массиве
readln(fin, k);//номер наибольшего элемента в массиве

for i:=1 to n do
    read(fin,A[i]);//считывание массива
writeln(fout,'Элементы массива: ');
       for i:=1 to n do
    write(fout,' ', A[i]:5:2);//запись исходного массива в выходной файл
writeln(fout);
writeln(fout);


writeln(fout, 'Номер k-ого элемента:');
                 writeln(fout,' ',k);
                 writeln(fout);
for i:=1 to n-1 do begin
         for j:=1 to n-i do begin
            if a[j]<a[j+1] then begin
              g:=a[j];
              a[j]:=a[j+1];
              a[j+1]:=g;
           end;
      end;
  end;

writeln(fout,'Отсортированные элементы массива: ');
  for i:=1 to n do
    write(fout,' ', A[i]:5:2);
  writeln(fout);
  writeln(fout);
  if (k<=0) or (k>n) then
    begin
      writeln(fout,'k не удовлетворяет условиям');
      writeln(fout,'Введите правильное номер наибольшего элемента и попробуйте снова');
    end
  else begin
    writeln(fout,'k-ый наибольший элемент одномерного массива: ');
    writeln(fout,' ', A[k]:5:2);
    end;


CloseFile(fin);
CloseFile(fout);
 write('Нажмите Enter'); readln;

end.     
