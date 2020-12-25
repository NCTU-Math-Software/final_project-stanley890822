classdef Snake
   properties
       Direction {mustBeNumeric}
   end
   methods
       function obj = Snake(direction)
           obj.Direction = direction;
       end
       
       function run(obj)
           
           %畫出Ready Go圖形的函數
           function ReadyGo(a)
               axis([-15,15,-15,15])                                                            %確定每個點座標後用plot畫出來
               Rx=[-10,-10,-7.5,-7.5,-10,-6];
               Ry=[3,-3,3,0,0,-3];
               Ex=[-6,-6,-6,-2,-2,-2];
               Ey=[3,0,-3,3,0,-3];
               Ax=[0,-2,2,-1,1];
               Ay=[3,-3,-3,0,0];
               Dx=[2,2,3,3];
               Dy=[3,-3,3,-3];
               Yx=[8,6,10,8];
               Yy=[0,3,3,-3];

               hold on
               %R
               plot([Rx(1),Rx(2)],[Ry(1),Ry(2)],'b',[Rx(1),Rx(3)],[Ry(1),Ry(3)],'b')
               x1=linspace(-7.5,-6,100);
               y1=sqrt(2.25-(x1+7.5).^2)+1.5;
               plot(x1,y1,'b',x1,-(y1)+3,'b');
               plot([Rx(4),Rx(5)],[Ry(4),Ry(5)],'b',[Rx(5),Rx(6)],[Ry(5),Ry(6)],'b')
               %E
               plot([Ex(1),Ex(4)],[Ey(1),Ey(4)],'b',[Ex(2),Ex(5)],[Ey(2),Ey(5)],'b')
               plot([Ex(3),Ex(6)],[Ey(3),Ey(6)],'b',[Ex(1),Ex(3)],[Ey(1),Ey(3)],'b')
               %A
               plot([Ax(1),Ax(2)],[Ay(1),Ay(2)],'b',[Ax(1),Ax(3)],[Ay(1),Ay(3)],'b')
               plot([Ax(4),Ax(5)],[Ay(4),Ay(5)],'b')
               %D
               x1=linspace(2,6,100);
               y1=sqrt(9-(x1-3).^2);
               plot(x1,y1,'b',x1,-y1,'b')
               plot([Dx(1),Dx(2)],[Dy(1),Dy(2)],'b',[Dx(1),Dx(3)],[Dy(1),Dy(3)],'b',[Dx(2),Dx(4)],[Dy(2),Dy(4)],'b')
               %Y
               plot([Yx(1),Yx(2)],[Yy(1),Yy(2)],'b',[Yx(1),Yx(3)],[Yy(1),Yy(3)],'b',[Yx(1),Yx(4)],[Yy(1),Yy(4)],'b')
               hold off

               pause(1)
               axis([-15,15,-15,15])
               %G
               x1=linspace(-5,-1,100);
               y1=sqrt(6.25-(x1+2.5).^2);
               %O
               x2=linspace(0,5,100);
               y2=sqrt(6.25-(x2-2.5).^2);
               plot(0,0,'g.','MarkerSize',20);hold on;plot(a(1),a(2),'r*');plot(x2,y2,'b',x2,-y2,'b',x1,y1,'b',x1,-y1,'b',[-1,-1],[-sqrt(6.25-(-1+2.5)^2),0],'b',[-1,-2.5],[0,0],'b');axis([-15,15,-15,15])
               ...
               title('ChebSnake');text(N-5,N-1,['level : ',num2str(level)]);text(N-5,N-2,['life : ',num2str(life)]);text(N-5,N-3,['score : ',num2str(score)]);hold off;drawnow;
               pause(1)
               hold off
           end
           
           %畫出Game Over圖形的函數
           function GameOver()
               Ax=[-2.5,-5,0,-3.75,-1.25];
               Ay=[5,0,0,2.5,2.5];
               Mx=[0,1.25,2.5,3.75,5];
               My=[0,5,0,5,0];
               Ex=[10,5,5,10,5,5,10];
               Ey=[5,5,2.5,2.5,2.5,0,0];
               Vx=[-5,-2.5,0];
               Vy=[0,-5,0];
               Ex1=[5,0,0,5,0,0,5];
               Ey1=[0,0,-2.5,-2.5,-2.5,-5,-5];
               Rx=[5,5,8.75,8.75,5,10];
               Ry=[-5,0,0,-2.5,-2.5,-5];
               %G
               hold on
               x1=linspace(-10,-6,100);
               y1=sqrt(6.25-(x1+7.5).^2)+2.5;
               plot(x1,y1,'b',x1,-y1+5,'b',[-6,-6],[0.5,2.5],'b',[-6,-8],[2.5,2.5],'b')

               %A
               plot([Ax(1),Ax(2)],[Ay(1),Ay(2)],'b',[Ax(1),Ax(3)],[Ay(1),Ay(3)],'b',[Ax(4),Ax(5)],[Ay(4),Ay(5)],'b')
               %M
               plot(Mx,My,'b')
               %E
               plot(Ex,Ey,'b')

               %O
               x1=linspace(-10,-5,100);
               y1=sqrt(6.25-(x1+7.5).^2)-2.5;
               plot(x1,y1,'b',x1,-y1-5,'b')
               %V
               plot(Vx,Vy,'b')
               %E
               plot(Ex1,Ey1,'b')
               %R
               x1=linspace(8.75,10,100);
               y1=sqrt(1.25^2-(x1-8.75).^2)+1.25;
               plot(Rx(1:3),Ry(1:3),'b',x1,y1-2.5,'b',x1,-y1,'b',Rx(4:6),Ry(4:6),'b')
           end
           
           %藉由按壓的按鍵修改方向
           function callback(src, event)
               switch event.Key
                   case 'leftarrow'                                                                 %左鍵
                       k=d;
                       if k~=2
                           d=1;
                       end
                   case 'rightarrow'                                                                %右鍵
                       k=d;
                       if k~=1
                           d=2;
                       end
                   case 'uparrow'                                                                   %上鍵
                       k=d;
                       if k~=4
                           d=3;
                       end
                   case 'downarrow'                                                                 %下鍵
                       k=d;
                       if k~=3
                           d=4;
                       end
                   case 'e'                                                                         %e 結束遊戲
                       d=5;
                   case 's'                                                                         %s 暫停遊戲
                       d=0;
               end
           end
           
           N=15;                                                                                %設定座標軸
           N1=202;
           x=zeros(1,5);                                                                        %x,y的初始值
           y=zeros(1,5);
           score=0;                                                                             %分數初值
           check=1;                                                                             %判定是否吃到自己
           test=0;                                                                              %判定是否第一次開始
           k=0;                                                                                 
           life=5;                                                                              %生命數量
           level=1;                                                                             %等級
           d=obj.Direction;                                                                     %方向
           h_fig = figure;plot(x,y,'o');axis([-N,N,-N,N]);title('ChebSnake');drawnow            %設定主視窗
           set(h_fig, 'WindowKeyPressFcn', @callback)                                           %WindowKeyPressFcn對應到h_fig
           a=randi([-N+1,N-1],[1,2]);                                                           %設定得分點
           plot(0,0,'g.','MarkerSize',20);hold on;plot(a(1),a(2),'r*');hold off;axis([-N,N,-N,N])
           
           %迴圈用來使貪吃蛇一直移動
           while 1
               %判斷第一次開始
               if d~=0&&test==0
                   ReadyGo(a)
                   test=1;
               end
               
               text(N-5,N-1,['level : ',num2str(level)])                                        %標示出等級、生命以及分數
               text(N-5,N-2,['life : ',num2str(life)])
               text(N-5,N-3,['score : ',num2str(score)])
               
               %判斷是否吃到點
               if x(1)~=a(1) || y(1)~=a(2)
                   %for 貪吃蛇的移動，利用後一個座標讀取前一個座標
                   for ii=length(x):-1:2
                       x(ii)=x(ii-1);
                       y(ii)=y(ii-1);
                   end
                   
                   %改變d決定方向
                   if d==1                                                                  %左
                       x(1)=x(1)-1;
                   elseif d==2                                                              %右
                       x(1)=x(1)+1;
                   elseif d==3                                                              %上
                       y(1)=y(1)+1;
                   elseif d==4                                                              %下
                       y(1)=y(1)-1;
                   elseif d==5                                                              %結束遊戲
                       GameOver()
                       text(-4,-6,['Your score is ',num2str(score)])
                       break
                   end
               else
                   x=[x,x(end)];                                                            %吃到得分點後再尾端多加一顆
                   y=[y,y(end)];
                   a=randi([-N+1,N-1],[1,2]);                                               %產生下一個得分點
                   score=score+1;                                                           %分數加一
                   if score==5||score==10||score==15||score==20                             %分數在5,10,15,20時增加等級
                       text(-4,14,'level up')                                               %顯示等級提升
                       pause(2)
                       level=level+1;
                   end
               end
               
               %判定移動時是否吃到自己
               if d~=0 
                   for ii=2:length(x)
                       if x(1)==x(ii)&&y(1)==y(ii)                                          %如果頭與身體座標相同代表咬到
                           check=0;
                       end     
                   end
               end
               
               %死亡條件：撞到邊界或咬到自己身體
               if abs(x(1))==N||abs(y(1))==N||check==0
                   if life~=0                                                               %當有剩餘生命值時，貪吃蛇回到初始位置，長度不變
                       x=zeros(1,score+5);
                       y=zeros(1,score+5);
                       life=life-1;                                                         %生命值-1_
                       pause(2)
                       check=1;                                                             
                       d=0;                                                                 %回到不動的狀態
                   else 
                       GameOver()                                                           %結束遊戲圖型
                       text(-4,-6,['Your score is ',num2str(score)])                        %顯示分數
                       break
                   end
               end
               
               %畫圖：畫出蛇以及得分點
               
               %polyfit
               P1=[];
               P2=[];
               for ii=1:length(x)-1
                   cut1=linspace(x(ii),x(ii+1),N1);
                   cut1(end)=[];
                   cut2=linspace(y(ii),y(ii+1),N1);
                   cut2(end)=[];
                   P1=[P1,cut1];
                   P2=[P2,cut2];
               end
               P1=[P1,x(end)];
               P2=[P2,y(end)];
               
               t=linspace(0,1,(length(x)-1)*N1-(length(x)-2));
               p1=polyfit(t,P1,15);                  
               f2=polyval(p1,t);                       
               p2=polyfit(t,P2,15);
               f3=polyval(p2,t);
   
               plot(f2,f3,'k',a(1),a(2),'r*');hold on;
               plot(x(1),y(1),'g.',x(2:end),y(2:end),'k.','MarkerSize',20);axis([-N,N,-N,N]);title('ChebSnake');text(N-5,N-1,['level : ',num2str(level)]);text(N-5,N-2,['life : ',num2str(life)]);text(N-5,N-3,['score : ',num2str(score)]);drawnow;hold off

               %不同等級暫停時間不同會使速度不一樣，分為5個等級
               if score<5
                   pause(0.35)
               elseif score>=5&&score<10
                   pause(0.175)
               elseif score>=10&&score<15
                   pause(0.1)
               elseif score>=15&&score<20
                   pause(0.05)
               end
            end
        end
    end
end
