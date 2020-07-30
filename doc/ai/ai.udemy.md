# Doc/ai Udemy

## 两个重要的资料

如何把真实世界转化成模型
https://worldmodels.github.io

https://blog.otoro.net/2017/10/29/visual-evolution-strategies/

资源：
https://www.superdatascience.com/pages/artificial-intelligence-masterclass

CNN Convolutional(卷积) Neural Network
V vision
VAE Variational（变异） AutoEncoder
D Dream
MDN mixture Density Network（混合密度）
RNN Recurrent Neural Network（递归）
M Memory
C Controller
Z Latent Vector（潜伏向量）
H Hidden State

## 人工神经网络

The Neuron 神经元
    Axon 轴突
    Dendrites 树突
    Synapse 触突 Weight
The Activation Function 激活函数
Gradient Descent
Stochastic Gradient Descent 随机梯度下降
Backpropagtion 反向传播

我们可以用1+1来举例

归一化 Standardize
标准化 Nomarlize
论文: Efficient BackProp
http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf

### 激活函数
Threshold Function
    用于判断是否
Sigmoid Function
    用于判断概率
    $(x) = 1/(1+e^(-x))
Rectifier
Hyperbolic Tangent(tanh)
    $(x) = (1-e^(-2x)) / (1+e^(-2x))

Deep sparse rectifier neural network
ReLU——Deep Sparse Rectifier Neural Networks
https://zhuanlan.zhihu.com/p/63003542


Neuron Network 怎么工作？
隐藏层 Hidden layout

损失函数
c=1/2(y^-y)^2
A list of cost Functions used in neural network, alongside applications
https://jmlb.github.io/flashcards/2018/04/21/list_cost_functions_fo_neuralnets/

Gradient Descent
递度下降
Stochastic Gradient Descent
随机递度下降

A Neural Network in 13 lines of python
https://iamtrask.github.io/2015/07/27/python-network-part2/

Neural Network and Deep Learning
http://neuralnetworksanddeeplearning.com/chap2.html

反向传播 Backpropagtion
作用： 同时调整所有参数
1 随机赋予权重接近但不等于0的数
2 输入第一个观测的数据集
3 正向计算得到Y^
4 计算损失方程 c
5 反向传播调整参数

## 卷积神经网络
卷积操作
ReLU层
Pooling 投票
Flatteing 平面化
Full Connection 完全连接

Gradient-based Learning Applied to Document Recognition
http://yann.lecun.com/exdb/publis/pdf/lecun-01a.pdf

Introduction to Convolutional neural networks
http://cs.nju.edu.cn/wujx/paper/CNN.pdf
https://cs.nju.edu.cn/wujx/