format long
pkg load symbolic     %导入符号运算库
u=sym(pi,'r');          %把数值转化成符号形式
d=sym(-pi,'r');    %在第一个位置填写u和d的值
syms x;               %设置变量
v=cos(x);        %目标逼近函数（可以自行更改）
%定义P6（R）上的一组线性无关向量组
v1=1;
v2=x;
v3=x^2;
v4=x^3;
v5=x^4;
v6=x^5;
v7=x^6;
v8=x^7;
v9=x^8;
%运用格拉姆-施密特过程求得规范正交基
%e1
e1=1/sqrt(u-d);
%e2
eu2=v2-int(v2*e1,d,u)*e1;
ed2=sqrt(int(eu2^2,d,u));
e2=eu2/ed2
%e3
eu3=v3-int(v3*e1,d,u)*e1-int(v3*e2,d,u)*e2;
ed3=sqrt(int(eu3^2,d,u));
e3=eu3/ed3
%e4
eu4=v4-int(v4*e1,d,u)*e1-int(v4*e2,d,u)*e2-int(v4*e3,d,u)*e3;
ed4=sqrt(int(eu4^2,d,u));
e4=eu4/ed4
%e5
eu5=v5-int(v5*e1,d,u)*e1-int(v5*e2,d,u)*e2-int(v5*e3,d,u)*e3-int(v5*e4,d,u)*e4;
ed5=sqrt(int(eu5^2,d,u));
e5=eu5/ed5
%e6
eu6=v6-int(v6*e1,d,u)*e1-int(v6*e2,d,u)*e2-int(v6*e3,d,u)*e3-int(v6*e4,d,u)*e4-int(v6*e5,d,u)*e5;
ed6=sqrt(int(eu6^2,d,u));
e6=eu6/ed6
%计算正交补： Puv
%原公式：Puv=int(v*e1,d,u)*e1+int(v*e2,d,u)*e2+
%int(v*e3,d,u)*e3+int(v*e4,d,u)*e4+
%int(v*e5,d,u)*e5+int(v*e6,d,u)*e6
a=[e1,e2,e3,e4,e5,e6];
Puv=0;                        %用逻辑语言改写后的公式
for i=1:6
  Puv += int(v*a(i),d,u)*a(i);
end
expand(Puv)               %化简
E=int(e5*e1,d,u)            %检验结果是否正交（结果为0即为正交）
E1=int(e4*e1,d,u)
E2=int(e4*e2,d,u)
E3=int(e4*e3,d,u)
E4=int(e5*e6,d,u)
E5=int(e6*e2,d,u)
E6=int(e6*e1,d,u)
E7=int(e6*e3,d,u)
E8=int(e6*e4,d,u)
E9=int(e2*e5,d,u)
E10=int(e5*e3,d,u)
E11=int(e5*e4,d,u)
E12=int(e3*e1,d,u)
E13=int(e3*e2,d,u)
E14=int(e2*e1,d,u)
E15=int(e1*e1,d,u)             %检验结果是否规范（结果为1即为规范）
E16=int(e2*e2,d,u)
E17=int(e3*e3,d,u)
E18=int(e4*e4,d,u)
E19=int(e5*e5,d,u)
E20=int(e6*e6,d,u)

