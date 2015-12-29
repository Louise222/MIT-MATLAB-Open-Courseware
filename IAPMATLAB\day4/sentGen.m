c=cell(3,2);
c{1,1}='John';c{2,1}='Mary-Sue';c{3,1}='Gomer';
c{1,2}='smart';c{2,2}='blonde';c{3,2}='hot';
r1=ceil(rand*3);r2=ceil(rand*3);
disp([c{r1,1} ' is ' c{r2,2} '.']);