# function-approximating
Welcome to use and give suggestions.

程序以5次多项式为例拟合cos(x)，可以自行更改拟合函数、拟合区间和拟合多项式的次数。

首先定义一组线性无关向量。（1,x,x^2,x^3,....,x^m）m为你想要拟合的多项式次数。

然后运用格拉姆-施密特过程求出一组规范正交基。在Octave中，定积分运用int函数进行，于是我们定义的内积运算变成了：
        int(f*g,d,u)
（f、g为函数，d、u为上下限）
在求规范正交基的时候由于分母要用到分子的结果，所以把分子分母分开运算。

最后我们计算正交补，我用一个for语句改写了原来冗长的公式，最后对得到的结果进行化简。

最后我又加入了一个检验程序来检验所算结果的规范性和正交性。（我使用这个程序找出了一处输入错误）

因为Octave不自带合并同类项功能，所以我们要将系数手动输入到另一个文件里面去得到系数的近似值和图像。

另一个文件我将其命名为photo，其中变量a-f分别是0-5次项的系数。

最后是绘图环节,我设置了cos(x)原图、精确和近似值函数还有泰勒展开的图像对比。绘图函数plot()中，第一二个参数分别为自变量和因变量，第三四个参数为设置线宽。（其实是一个参数）


首先运行上述第一个程序，在“命令窗口”出可以得到各个规范正交基、拟合结果和检验结果。

第二个程序给出了拟合多项式的近似系数和画出的图像。

最后就到对比环节了。结果表明，其实近似和未近似的函数图像并没有什么区别，这可能是因为Octave在绘图时自动取了近似，所以我们可以把其中一个绘图命令注释掉（用%）。对比程序拟合的函数和泰勒展开给出的5次多项式近似，泰勒多项式在0附近对函数有极好的逼近，但图上表明对|x|>2时并不怎么精确，我们的拟合函数非常精确，以至于两个图像几乎完全重合，只是在|x|=π时稍有误差，所以上述程序是有效的。
