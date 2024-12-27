% Section 1
% If Statement
clc, clearvars, close all

a = randi (5,1,10);

num3 = sum (a == 3);
num3
if num3 >= 3
    disp ('wow')
end    

% For Loop

%clc, clearvars
numx=0;
%a = randi (5,1,10)
for i = 1:10
    if a(i) == 3
        numx = numx + 1;
    end    
end  
numx
if numx >= 3
    disp ('wow')
end 