load classGrades;
namesAndGrades(1:5,:)
grades=namesAndGrades(:,2:end);
% mean(grades,1);
meanGrades=nanmean(grades,1)
meanMatrix=ones(15,1)*meanGrades
curvedGrades=3.5*grades./meanMatrix;
nanmean(curvedGrades,1)
curvedGrades(find(curvedGrades>5))=5;
totalGrade=nanmean(curvedGrades,2);
totalGrade=ceil(totalGrade);
letters=['F','D','C','B','A'];
letterGrades=letters(totalGrade);
disp(['Grades: ' letterGrades]);