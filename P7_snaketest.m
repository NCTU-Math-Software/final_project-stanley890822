x=[0,-1,-2,-3];
y=[0,0,0,0];

a=randi([-50,50],[1,2]);

plot(x,y,'o',a(1),a(2),'*');axis([-50,50,-50,50])

while 1
    if x(1)~=a(1) || y(1)~=a(2)
        for ii=length(x):-1:2
            x(ii)=x(ii-1);
            y(ii)=y(ii-1);
        end
              
        if strcmpi(get(gcf,'CurrentCharacter'),'w')
            y(1)=y(1)+1;
        elseif strcmpi(get(gcf,'CurrentCharacter'),'a')
            x(1)=x(1)-1;
        elseif strcmpi(get(gcf,'CurrentCharacter'),'s')
            y(1)=y(1)-1;
        elseif strcmpi(get(gcf,'CurrentCharacter'),'d')
            x(1)=x(1)+1;
        end
        
        if strcmpi(get(gcf,'CurrentCharacter'),'e')
            break
        end
        
    else
        x=[x,x(end)+1];
        y=[y,y(end)];
        a=randi([-50,50],[1,2]);
    end
    
    if strcmpi(get(gcf,'CurrentCharacter'),'e')
        break
    end
    
    plot(x,y,'o',a(1),a(2),'*');axis([-50,50,-50,50]);drawnow
end        
    