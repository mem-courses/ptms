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
  设 ${X_i,space i >= 1}$ 为独立同分布的正态随机变量序列，若 $X_i sim N(mu, sigma^2)$，其中 $sigma > 0$。问以下的随机变量序列当 $n -> +oo$ 时依概率收敛吗？若收敛，请给出收敛的极限值，否则请说明理由：

  #v(0.5em)
  *(1)* $display(1/n sum_(i=1)^n X_i^2)$；
  #v(1em)
  *(2)* $display(1/n sum_(i=1)^n (X_i - mu)^2)$；
  #v(1em)
  *(3)* $display((X_1 + X_2 + ... + X_n)/(X_1^2 + X_2^2 + ... + X_n^2))$；
  #v(1em)
  *(4)* $display((X_1 + X_2 + ... + X_n)/(display(sqrt(n sum_(i=1)^n (X_i - mu)^2))))$。
  #v(0.5em)
][
  *(1)* 由于 $X_i$ 独立同分布，故 $X_i^2$ 也是独立同分布的。考虑：
  $
    & D(X) = sigma^2 = E(X^2) - E^2(X) \
    ==> & E(X^2) = sigma^2 + mu^2
  $
  由辛钦大数定律可得原式收敛且收敛于 $sigma^2 + mu^2$。

  *(2)* $X_i sim N(mu, sigma^2) ==> (X_i - mu) sim N(0, sigma^2)$，故 *(2)* 可以看做是 *(1)* 取 $mu= 0$ 的特殊情况，故原式收敛且收敛于 $sigma^2$。

  *(3)* 同理，分子收敛于 $mu$，分母收敛于 $sigma^2 + mu^2$，故原式收敛于 $display(mu/(sigma^2 + mu^2))$。

  *(4)* 由 *(3)* 知分子收敛于 $mu$，由 *(2)* 知分母收敛于 $sigma$，故原式收敛且收敛于 $display(mu/sigma)$。
]

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
][
  *(1)* 即求 $display(Y = (X_1^2+X_2^2+cdots+X_n^2)/n)$ 依概率收敛于何处。注意到：
  $
    E(X_i) = 1 / lambda,quad
    E(X_i^2) = 2 / lambda^2.
  $
  根据辛钦大数定律，$Y$ 收敛且依概率收敛于 $display(2/lambda^2)$，即
  $
    a = 2 / lambda^2.
  $

  *(2)* 根据中心极限定理：
  $
    1 / n sum_(i=1)^n X_i sim N(1 / lambda, 1 / (n lambda^2))
  $
  故：
  $
    2 / n sum_(i=1)^n X_i sim N(2 / n, 4 / (n lambda^2))
  $
  取 $n=100$ 可得近似分布：
  $
    1 / 50 sum_(i=1)^100 X_i sim^"approx" N(2 / lambda, 1 / (25 lambda^2))
  $

  *(3)* 指数分布的 $k$ 阶原点矩的性质：
  $
    E(X_i^k) = int_0^(+oo) x^k e^(-lambda x) dif x = k! / (lambda^k)
  $
  取 $k=4$ 得：
  $
    E(X_i^4) = 4! / (lambda^4) = 24 / (lambda^4) .
  $
  故：
  $
    D(X_i^2) = E(X_i^2) - E^2(X_i^2) = 24 / (lambda^4) - (2 / (lambda^2))^2 = 20 / (lambda^4)
  $
  根据中心极限定理有：
  $
    1 / n sum_(i=1)^n X_i^2 sim N(2 / lambda^2, 20 / (n lambda^4))
  $
  取 $n=100$ 可得近似分布：
  $
    1 / 100 sum_(i=1)^100 X_i^2 sim^"approx" N(2 / lambda^2, 1 / (5 lambda^4))
  $
  故：
  $
    P{1 / 100 sum_(i=1)^100 <= 2 / (lambda^2)} = Phi(0) = 1 / 2.
  $
]

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
][
  $
    & P{1 / 2<X<3 / 2} \
    =& int_(1 / 2)^1 x dif x + int_1^(3 / 2) (2-x) dif x \
    =& 1 / 2(1^2-(1 / 2)^2) + 1 - 1 / 2((3 / 2)^2 - 1^2) \
    =& 3 / 8 + 1 - 5 / 8 = 3 / 4
  $
  每次事件的发生概率都是独立同分布的且服从 $display(B(1,3/4))$。可以将第 $i$ 次事件的结果记为：$X_i$，即求
  $
    P{sum_(i=1)^N X_i >= 80} >= 0.95
  $
  的最小的 $N$。#text_red[注意到：
  $
    E(X) = 3/4,quad D(X) = (1-3/4)^2 3/4 + (0-3/4)^2 1/4 = 3/16
  $
  假设 $N$ 足够大，则根据中心极限定理：
  $
    display(sum_(i=1)^N X_i - 3/4 N)/sqrt(display(3/16 N)) sim N(0,1)
  $]
  设左式为 $Y$ 即要求：
  $
    &P{Y >= display(80 - 3/4 N) / sqrt(display(3/16 N))} >= 0.95 \
    <==>& 1 - Phi( display(80 - 3/4 N)/sqrt(display(3/16 N))) >= 0.95\
    <==>& Phi( display(80 - 3/4 N)/sqrt(display(3/16 N))) <= 0.05
  $
  查表得：
  $
    display(80 - 3/4 N) / sqrt(display(3/16 N)) <= -1.65 \
  $
  解得：
  $
    N >= 117。
  $
]

#hw([习题五 B11])[
  某次“知识竞赛”规则如下：参赛选手最多可抽取 3 个相互独立的问题——回答：如果答错就被淘汰、进而失去回答下一题的资格；每答对一题得 1 分，若 3 题都对则再加 1 分（即共得 4 分）。现有 100 名参赛选手，每人独立答题。

  *(1)* 若每人至少答对一题的概率为 0.7，用中心极限定理计算“最多有 35 人得 0 分”的概率；

  *(2)* 若题目的难易程度类似，每人答对每题的概率均为 0.8，求这 100 名参赛选手的总分超过 220 分的概率。
][
  *(1)* 设 $X_i$ 表示第 $i$ 名选手是否得了 $0$ 分，则 $X_i sim B(1, 0.3)$ 是独立同分布的。则：
  $
    E(X) &= 0.3\
    D(X) &= (0-0.3)^2 dot 0.7 + (1 - 0.3)^2 dot 0.3 = 0.21
  $
  根据中心极限定理：
  $
    display(sum_(i=1)^100 X_i - 30) / sqrt(21) sim N(0, 1)
  $
  则：
  $
    P{N<=35} = Phi(display(35 - 30)/sqrt(21)) = Phi(5/sqrt(21)) = 0.8621.
  $

  *(2)* 设 $Y_i$ 表示第 $i$ 名选手的得分，则 $Y_i$ 的分布律为：
  #align(
    center,
    table(
      columns: 5,
      $Y_i$, $0$, $1$, $2$, $4$,
      $P{Y_i=y_i}$, $0.2$, $0.16$, $0.128$, $0.512$,
    ),
  )
  故可计算得：
  $
    E(X) = 2.464,quad D(X) = 8.864 - 2.464^2 = 2.793
  $
  则：
  $
    display(sum_(i=1)^100 X_i - 246.4) / sqrt(279.3) sim N(0,1)
  $
  故，
  $
    P{sum_(i=1)^n 100 > 220}
    &= 1 - Phi((220 - 246.4)/sqrt(279.3)) \
    &= 1 - Phi(-1.58)\
    &= 0.9429
  $
]

#hw([习题六 A1])[
  假设 $X_1, X_2, dots, X_n$ 是从总体 $X$ 中抽取的样本 $(n >= 1)$，当总体 $X$ 服从下列分布时，写出样本的联合分布律或联合密度函数：

  *(1)* 总体服从二项分布 $B(10,0.2)$；

  *(2)* 总体服从泊松分布 $P(1)$；

  *(3)* 总体服从标准正态分布 $N(0,1)$；

  *(4)* 总体服从指数分布 $E(1)$。
][
  *(1)* 联合分布律为：
  $
    p(x_1,x_2,cdots,x_n) = product_(i=1)^n binom(10, x_i) 0.2^(x_i) 0.8^(10 - x_i) #text_red[$,space x_i = 0,1,cdots,10$]
  $
  *(2)* 联合分布律为：
  $
    p(x_1,x_2,cdots,x_n) = product_(i=1)^n (e^(-1))/((x_i) !) #text_red[$,quad x_i = 0,1,2,cdots$]
  $
  *(3)* 联合密度函数为：
  $
    f(x_1,x_2,cdots,x_n) = product_(i=1)^n 1/sqrt(2 pi) e^(-x_i^2 / 2)  #text_red[$,quad -oo < x_i < +oo$]
  $
  *(4)* 联合密度函数为：
  $
    f(x_1,x_2,cdots,x_n) = product_(i=1)^n e^(-x_i) #text_red[$,quad x_i > 0$]
  $
]

#hw([习题六 A3])[
  从总体 $X$ 中抽取样本容量为 $5$ 的样本，其观测值为 $2.6, 4.1, 3.2, 3.6, 2.9$，计算样本均值、样本方差和样本二阶中心矩。
][
  $
    overline(X) &= 1 / 5 (2.6 +4.1 + 3.2 + 3.6 + 2.9) = 3.28\
    S^2 &= 1 / 4 sum_(i=1)^5 (X_i - overline(X)) = 0.347\
    B_2 &= 1 / 5 sum_(i=1)^5(X_i - overline(X)) = 0.2776
  $
]
