x = (1:10)
for i = 1:10
    if x(i)  == 8 
        disp ('I found it!')
        break;
    else 
        disp ('Not yet!')
    end
end