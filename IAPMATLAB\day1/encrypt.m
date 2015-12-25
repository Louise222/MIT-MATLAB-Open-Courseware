original='This is my top secret message!';
indices=randperm(length(original));
encoded=original(indices);
matrix=[indices',(1:length(original))'];
matrix=sortrows(matrix,1);
decoding_key=matrix(:,2);
decoded=encoded(decoding_key);
disp(['Original: ' original]);
disp(['Encoded: ' encoded]);
disp(['Decoded: ' decoded]);
correct=strcmp(original,decoded);
disp(['Decoded correctly (1 ture, 0 false: ' num2str(correct)]);