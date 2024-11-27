#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #10",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "November 21, 2024",
)

#hw([习题五 B6])[
  设 ${X_i,space i >= 1}$ 为独立同分布的正态随机变量序列，若 $X_1 sim N(mu, sigma^2)$，其中 $sigma > 0$。问以下的随机变量序列当 $n -> +oo$ 时依概率收敛吗？若收敛，请给出收敛的极限值，否则请说明理由：

  #v(0.5em)
  *(1)* $display(1/n sum_(i=1)^n X_i^2)$；
  #v(1em)
  *(2)* $display(1/n sum_(i=1)^n (X_i - mu)^2)$；
  #v(1em)
  *(3)* $display((X_1 + X_2 + ... + X_n)/(X_1^2 + X_2^2 + ... + X_n^2))$；
  #v(1em)
  *(4)* $display((X_1 + X_2 + ... + X_n)/(display(sqrt(n sum_(i=1)^n (X_i - mu)^2))))$。
  #v(0.5em)
][]

#hw([习题五 B7])[
  设随机变量序列 ${X_i,space i>=1}$ 独立同分布，都服从期望为 $display(1/lambda)$ 的指数分布，其中 $lambda>0$。

  *(1)* 若对任意的 $epsilon>0$，均有
  $
    lim_(n->+oo) P{abs((X_1^2 + X_2^2 + dots + X_n^2) / n - a) < epsilon} = 1,
  $
  成立，求 $a$；
  #v(0.5em)
  *(2)* 给出 $display(1/50 sum_(i=1)^100 X_i)$ 的近似分布；
  #v(1em)
  *(3)* 求 $display(P{1/100 sum_(i=1)^100 X_i^2 <= 2/(lambda^2)})$ 的近似值。
  #v(0.5em)
][]

#hw([习题五 B9(2)])[
  设随机变量 $X$ 服从辛普森（Simpson）分布，密度函数为
  $
    f(x) = cases(
      x\, quad& 0<=x<1\,,
      2-x\, quad& 1<=x<2\,,
      0\, quad& "其他".
    )
  $
  要保证至少有 $95%$ 的把握使事件 $display({1/2 < X < 3/2})$ 出现的次数不少于 $80$，问至少需要进行多少次观察？
][]

#hw([习题五 B11])[
  某次“知识竞赛”规则如下：参赛选手最多可抽取 3 个相互独立的问题——回答：如果答错就被淘汰、进而失去回答下一题的资格；每答对一题得 1 分，若 3 题都对则再加 1 分（即共得 4 分）。现有 100 名参赛选手，每人独立答题。

  *(1)* 若每人至少答对一题的概率为 0.7，用中心极限定理计算“最多有 35 人得 0 分”的概率；

  *(2)* 若题目的难易程度类似，每人答对每题的概率均为 0.8，求这 100 名参赛选手的总分超过 220 分的概率。
][]

#hw([习题六 A1])[
  假设 $X_1, X_2, dots, X_n$ 是从总体 $X$ 中抽取的样本 $(n >= 1)$，当总体 $X$ 服从下列分布时，写出样本的联合分布律或联合密度函数：

  *(1)* 总体服从二项分布 $B(10,0.2)$；

  *(2)* 总体服从泊松分布 $P(1)$；

  *(3)* 总体服从标准正态分布 $N(0,1)$；
  
  *(4)* 总体服从指数分布 $E(1)$。
][]

#hw([习题六 A3])[
  从总体 $X$ 中抽取样本容量为 $5$ 的样本，其观测值为 $2.6, 4.1, 3.2, 3.6, 2.9$，计算样本均值、样本方差和样本二阶中心矩。
][]
