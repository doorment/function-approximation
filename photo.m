format long %a为0次系数，b为一次系数...
ff='0';     %直到f为5次系数。
fj=0;     %将系数手动输入到''和=后
f=eval(ff)
ef='-1575/(4*pi^6)+33075/(8*pi^8)';%带f为近似值
ej=-1575/(4*pi^6)+33075/(8*pi^8);%带j为精确值
e=eval(ef)      %计算近似值（π和根号的近似）
df='0';         %下同（略）
dj=0;
d=eval(df)
cf='-14175/(4*pi^6)+315/(pi^4)';
cj=-14175/(4*pi^6)+315/(pi^4);
c=eval(cf)
bf='0';
bj=0;
b=eval(bf)
af='-105/(4*pi^2)+2835/(8*pi^4)+0.008';
aj=-105/(4*pi^2)+2835/(8*pi^4)+0.008;
a=eval(af)
x= -pi:0.01:pi;  %设置区间和d与u相同
xlim([-pi pi]);
ylim([-1 1]);        %下面分别是近似和精确值函数
y=a+b*x+c*(x.^2)+d*(x.^3)+e*(x.^4)+f*(x.^5);
yj=aj+b*x+cj*(x.^2)+d*(x.^3)+ej*(x.^4)+f*(x.^5);
plot(x,y,'LineWidth',2);    %绘图
hold on;        %保留先前图形
plot(x,yj,'LineWidth',2);
hold on;
z=cos(x);
hold on;
plot(x,z,'LineWidth',2);
p=1-x.^2/(2*1)+x.^4/(4*3*2*1);%这是泰勒展开给出的近似
plot(x,p,'LineWidth',2);  %下面是给出图例
legend('拟合函数（近似）','拟合函数（未近似）','cos','泰勒展开');
