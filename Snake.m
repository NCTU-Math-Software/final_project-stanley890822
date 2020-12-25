classdef Snake
   properties
       Direction {mustBeNumeric}
   end
   methods
       function obj = Snake(direction)
           obj.Direction = direction;
       end
       
       function run(obj)
           
           %�e�XReady Go�ϧΪ����
           function ReadyGo(a)
               axis([-15,15,-15,15])                                                            %�T�w�C���I�y�Ы��plot�e�X��
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
           
           %�e�XGame Over�ϧΪ����
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
           
           %�ǥѫ���������ק��V
           function callback(src, event)
               switch event.Key
                   case 'leftarrow'                                                                 %����
                       k=d;
                       if k~=2
                           d=1;
                       end
                   case 'rightarrow'                                                                %�k��
                       k=d;
                       if k~=1
                           d=2;
                       end
                   case 'uparrow'                                                                   %�W��
                       k=d;
                       if k~=4
                           d=3;
                       end
                   case 'downarrow'                                                                 %�U��
                       k=d;
                       if k~=3
                           d=4;
                       end
                   case 'e'                                                                         %e �����C��
                       d=5;
                   case 's'                                                                         %s �Ȱ��C��
                       d=0;
               end
           end
           
           N=15;                                                                                %�]�w�y�жb
           N1=202;
           x=zeros(1,5);                                                                        %x,y����l��
           y=zeros(1,5);
           score=0;                                                                             %���ƪ��
           check=1;                                                                             %�P�w�O�_�Y��ۤv
           test=0;                                                                              %�P�w�O�_�Ĥ@���}�l
           k=0;                                                                                 
           life=5;                                                                              %�ͩR�ƶq
           level=1;                                                                             %����
           d=obj.Direction;                                                                     %��V
           h_fig = figure;plot(x,y,'o');axis([-N,N,-N,N]);title('ChebSnake');drawnow            %�]�w�D����
           set(h_fig, 'WindowKeyPressFcn', @callback)                                           %WindowKeyPressFcn������h_fig
           a=randi([-N+1,N-1],[1,2]);                                                           %�]�w�o���I
           plot(0,0,'g.','MarkerSize',20);hold on;plot(a(1),a(2),'r*');hold off;axis([-N,N,-N,N])
           
           %�j��ΨӨϳg�Y�D�@������
           while 1
               %�P�_�Ĥ@���}�l
               if d~=0&&test==0
                   ReadyGo(a)
                   test=1;
               end
               
               text(N-5,N-1,['level : ',num2str(level)])                                        %�ХܥX���šB�ͩR�H�Τ���
               text(N-5,N-2,['life : ',num2str(life)])
               text(N-5,N-3,['score : ',num2str(score)])
               
               %�P�_�O�_�Y���I
               if x(1)~=a(1) || y(1)~=a(2)
                   %for �g�Y�D�����ʡA�Q�Ϋ�@�Ӯy��Ū���e�@�Ӯy��
                   for ii=length(x):-1:2
                       x(ii)=x(ii-1);
                       y(ii)=y(ii-1);
                   end
                   
                   %����d�M�w��V
                   if d==1                                                                  %��
                       x(1)=x(1)-1;
                   elseif d==2                                                              %�k
                       x(1)=x(1)+1;
                   elseif d==3                                                              %�W
                       y(1)=y(1)+1;
                   elseif d==4                                                              %�U
                       y(1)=y(1)-1;
                   elseif d==5                                                              %�����C��
                       GameOver()
                       text(-4,-6,['Your score is ',num2str(score)])
                       break
                   end
               else
                   x=[x,x(end)];                                                            %�Y��o���I��A���ݦh�[�@��
                   y=[y,y(end)];
                   a=randi([-N+1,N-1],[1,2]);                                               %���ͤU�@�ӱo���I
                   score=score+1;                                                           %���ƥ[�@
                   if score==5||score==10||score==15||score==20                             %���Ʀb5,10,15,20�ɼW�[����
                       text(-4,14,'level up')                                               %��ܵ��Ŵ���
                       pause(2)
                       level=level+1;
                   end
               end
               
               %�P�w���ʮɬO�_�Y��ۤv
               if d~=0 
                   for ii=2:length(x)
                       if x(1)==x(ii)&&y(1)==y(ii)                                          %�p�G�Y�P����y�ЬۦP�N��r��
                           check=0;
                       end     
                   end
               end
               
               %���`����G������ɩΫr��ۤv����
               if abs(x(1))==N||abs(y(1))==N||check==0
                   if life~=0                                                               %���Ѿl�ͩR�ȮɡA�g�Y�D�^���l��m�A���פ���
                       x=zeros(1,score+5);
                       y=zeros(1,score+5);
                       life=life-1;                                                         %�ͩR��-1_
                       pause(2)
                       check=1;                                                             
                       d=0;                                                                 %�^�줣�ʪ����A
                   else 
                       GameOver()                                                           %�����C���ϫ�
                       text(-4,-6,['Your score is ',num2str(score)])                        %��ܤ���
                       break
                   end
               end
               
               %�e�ϡG�e�X�D�H�αo���I
               
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

               %���P���żȰ��ɶ����P�|�ϳt�פ��@�ˡA����5�ӵ���
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
