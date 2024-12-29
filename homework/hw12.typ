#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #12",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "December 5, 2024",
)

#hw([习题七 A3 (只算极大似然估计)])[
  设 $X_1, X_2, dots.c, X_n$ 是来自下列总体 $X$ 的简单随机样本，求各总体中未知参数 $theta$ 的矩估计量和极大似然估计量，并对所获得的样本值，求参数 $theta$ 的矩估计值和极大似然估计值：

  *(1)* $display(f(x; theta) = cases(
		2^(-theta) theta x^(theta-1)\, quad& 0 < x < 2\,,
		0\, quad& "其他"\,,
	)\, quad theta > 0)$；

  #grid(
    columns: 2,
    [样本值：$quad$],
    [
      0.45, 0.2, 0.5, 0.47, 0.35,\
      1.63, 0.14, 0.06, 0.89, 0.34;
    ],
  )

  *(2)* $f(x; theta) = display(1/(2theta) e^(-abs(x)/theta)), quad -oo < x < +oo, quad theta > 0$；

  #grid(
    columns: 2,
    [样本值：$quad$],
    [
      -0.05, -0.47, 0.01, -0.03, -0.18,\
      1.65, -0.64, -1.05, 0.41, -0.19.
    ],
  )

  *(3)* $f(x; theta) = display(cases(
    display(1/(2-theta))\, quad theta <= x < 2\,,
    0\, quad "其他"\,
  )quad theta < 2\;)$

  #grid(
    columns: 2,
    [样本值：$quad$],
    [
      0.95, 0.63, 1.69, 1.97, 0.84,\
      1.81, 0.63, 0.35, 1.34, 0.82.
    ],
  )
][
  *(1)* #v(-par-margin * 2)
  $
    L(theta)
    &= product_(i=1)^n 2^(-theta) theta x_i^(theta - 1)
    = 2^(-n theta) theta^n product_(i=1)^n x_i^(theta - 1)\
    ==> ln L(theta)
    &= -n theta ln 2 + n ln theta + (theta - 1) sum_(i=1)^n ln(x_i)\
    ==> (dif ln L(theta)) / (dif theta) &= - n ln 2 + n / theta + sum_(i=1)^n ln(x_i)
  $
  令 $display((dif ln L(theta))/(dif theta) = 0)$，代入
  $
    sum_(i=1)^n ln(x_i) = -10.3922
  $
  计算得：
  $
    hat(theta)_2 = 0.5772
  $

  *(2)* #v(-2 * par-margin)
  $
    L(theta)
    &= product_(i=1)^n 1 / (2 theta) e^(-abs(x_i) / theta)
    = (1 / (2 theta))^n product_(i=1)^n e^(-abs(x_i) / theta)\
    ==> ln L(theta)
    &= -n ln (2 theta) - 1 / theta sum_(i=1)^n abs(x_i)\
    ==> (dif ln L(theta)) / (dif theta)
    &= -n / theta + 1 / theta^2 sum_(i=1)^n abs(x_i)
  $
  令 $display((dif ln L(theta))/(dif theta) = 0)$，代入计算得：
  $
    hat(theta)_1 = 1 / n sum_(i=1)^n abs(x_i) = 0.468
  $

  *(3)* #v(-2 * par-margin)
  $
    L(theta) &= product_(i=1)^n 1 / (2-theta) = 1 / (2-theta)^n\
    ==> ln L(theta) &= -n ln(2-theta)\
    ==> (dif ln L(theta)) / (dif theta) &= n / (2-theta)
  $
  由于 $theta < 2$，故 $display((dif ln L(theta))/(dif theta)) > 0$，即 $ln L(theta)$ 随着 $theta$ 的增加单调增加，也就是说选择的 $theta$ 越大越好，故取：
  $
    hat(theta)_2 = min {x_1,x_2,cdots,x_n} = 0.35
  $
  时 $L(theta)$ 最大。
]

#hw([习题七 A6])[
  设总体 $X$ 具有如下概率分布律：

  #align(center)[
    #table(
      columns: 4,
      align: (center, center, center, center),
      [$X$], [0], [1], [2],
      [$p$], [$theta$], [$lambda$], [$1-theta-lambda$],
    )
  ]

  其中 $0 < theta < 1, 0 < lambda < 1, 0 < theta + lambda < 1$。从上述总体中抽取样本容量为 9 的简单随机样本，观察值：2, 0, 2, 1, 0, 0, 1, 2, 1，求参数 $theta$ 和 $lambda$ 的矩估计值和极大似然估计值。
][
  计算矩估计值：
  $
    E(X) &= lambda + 2(1 - theta - lambda) = 2 - 2 theta - lambda\
    E(X^2) &= lambda + 4(1 - theta - lambda) = 4 - 4 theta - 3 lambda
  $
  用 $overline(X)$ 估计 $E(X)$，用 $A_2$ 估计 $E(X^2)$ 得：
  $
    overline(X) &= 2 - 2 hat(theta)_1 - hat(lambda)_1 = 1 \
    A_2 &= 4 - 4 hat(theta)_1 - 3 hat(lambda)_1 = 5 / 3 \
  $
  解得：
  $
    hat(theta)_1 = 1 / 3, quad hat(lambda)_1 = 1 / 8.
  $

  计算极大似然估计值：
  $
    L(theta,lambda) &= theta^3 lambda^3 (1-theta-lambda)^3\
    &= (theta lambda (1-theta-lambda))^3
  $
  根据 $x^3$ 的单调性，要使 $L(theta,lambda)$ 最大，只需要使
  $
    l(theta, lambda) = theta lambda (1-theta-lambda)
  $
  最大。令：
  $
    (partial l(theta, lambda)) / (partial theta) &= lambda(1-theta-  lambda) - theta lambda = lambda - lambda^2 - 2 theta lambda = 0 \
    (partial l(theta, lambda)) / (partial lambda) &=theta(1-theta - lambda) - theta lambda = theta - theta^2 - 2 theta lambda = 0 \
  $
  解得：
  $
    hat(theta)_2 = hat(lambda)_2 = 1 / 3.
  $
]

#hw([习题七 A7])[
  设总体 $X$ 的密度函数为

  $
    f(x; theta) = cases(
      display(x/theta e^(-x^2/(2theta)))\, quad& x > 0\,,
      0\, quad& "其他"\,,
    )
  $

  $theta > 0$ 未知，记 $mu_2 = E(X^2)$, $p = P{X > 1}$。$X_1$, $X_2$, $dots.c$, $X_n$ 是来自该总体的简单随机样本，求参数 $theta$, $mu_2$ 和 $p$ 的极大似然估计量。
][
  $
    & L(theta)
    = product_(i=1)^n f(X_i; theta)
    = product_(i=1)^n X_i / theta e^(-X_i^2 / (2theta))
    = 1 / theta^n product_(i=1)^n X_i e^(-X_i^2 / (2theta))\
    ==> & ln L(theta)
    = -n ln theta + sum_(i=1)^n ln X_i - 1 / (2 theta) sum_(i=1)^n X_i^2 \
    ==> & (dif ln L(theta)) / (dif theta)
    = -n / theta + 1 / (2 theta^2) sum_(i=1)^n X_i^2\
    ==>& hat(theta) = 1 / (2n) sum_(i=1)^n X_i^2
  $
  代入 $mu_2$ 和 $p$ 的计算得：
  $
    mu_2
    &= E(X^2)
    = int_(0)^(+oo) x^2 cdot x / theta e^(-x^2 / theta) dif x\
    &= int_(0)^(+oo) x^2 / (2 theta) e^(-x^2 / (2 theta)) dif x^2 \
    &= 2 theta\
    ==> hat(mu_2) &= 1 / n sum_(i=1)^n X_i^2\
  $
  $
    p
    &= P{X>1}
    = int_(1)^(+oo) x / theta e^(-x^2 / (2 theta)) dif x\
    &= e^(-1 / (2 theta)) \
    ==> hat(p) &= exp(-n/(sum_(i=1)^n X_i^2))
  $
]

#hw([习题七 A8])[
  设总体 $X$ 的均值为 $mu$，方差为 $sigma^2$，$X_1$, $X_2$, $dots.c$, $X_10$ 为来自总体 $X$ 的简单随机样本，问 $a$ 取何值时，$display(a sum_(i=1)^9 (X_(i+1) - X_i)^2)$ 是 $sigma^2$ 的无偏估计量？
][
  依题意，
  $
    E(X_i) = mu,quad E(X_i^2) = mu^2 + sigma^2.
  $
  故：
  $
    &E(a sum_(i=1)^(n-1) (X_(i+1) - X_i)^2)\
    =& a sum_(i=1)^(n-1) (E(X_(i+1)^2) + E(X_i^2) - 2 E(X_i X_(i+1)) )\
    =& a sum_(i=1)^(n-1) (2(sigma^2 + mu^2) - 2 mu^2)\
    =& 2a(n-1) sigma^2
  $
  由于原式是 $sigma^2$ 的无偏估计量，故有：
  $
    2a (n-1) = 18 a = 1 ==> a = 1 / 18.
  $
]

#hw([习题七 A9])[
  设总体 $X sim N(mu, sigma^2)$, $mu, sigma^2$ 未知，$X_1$, $X_2$, $X_3$ 是总体 $X$ 的简单随机样本，用

  $
    hat(mu)_1 = 1 / 2 X_1 + 1 / 4 X_2 + 1 / 4 X_3,\
    hat(mu)_2 = 2X_1 - 2X_2 + X_3,\
    hat(mu)_3 = 1 / 3 X_1 + 1 / 3 X_2 + 1 / 3 X_3
  $

  估计参数 $mu$，它们都是无偏估计量吗？如果是，哪个更有效？
][
  用 $E(X_1)=E(X_2)=E(X_3) = mu$ 代入得：
  $
    hat(mu)_1 = hat(mu)_2 = hat(mu)_3 = mu;
  $
  故都是 $mu$ 的无偏估计量。而：
  $
    D(hat(mu)_1) &= (1 / 4 + 1 / 16 + 1 / 16)sigma^2 = 3 / 8 sigma^2 \
    D(hat(mu)_2) &= (4 - 4 + 1) sigma^2 = sigma^2\
    D(hat(mu)_3) &= (1 / 9 + 1 / 9 + 1 / 9) sigma^2 = 1 / 3 sigma^2\
  $
  故在这三个中 $hat(mu)_3$ 最有效。
]

#hw([习题七 B3])[
  设总体 $X$ 具有如下概率分布律：

  #align(center)[
    #table(
      inset: 8pt,
      columns: 4,
      align: (center, center, center, center),
      [$X$], [$a_1$], [$a_2$], [$a_3$],
      [$p$], [$theta$], [$display((1-theta) / 2)$], [$display((1-theta) / 2)$],
    )
  ]

  从总体 $X$ 中取得样本容量为 $n$ 的样本 $X_1, X_2, dots.c, X_n$，记其中取 $a_1, a_2, a_3$ 的个数分别为 $n_1, n_2, n_3$，其中 $n_1 + n_2 + n_3 = n$，求参数 $theta$ 的矩估计量和极大似然估计量。
][
  计算矩估计量：
  $
    overline(X)
    &= (a_1 n_1 + a_2 n_2 + a_3 n_3) / n\
    E(X)
    &= a_1 theta + a_2 cdot (1-theta) / 2 + a_3 cdot (1-theta) / 2 \
    ==> hat(theta)_1
    &= display(overline(X) - (a_2 + a_3)/2) / display(a_1 - a_2 / 2 - a_3 / 2)\
    &= (2 (a_1 n_1 + a_2 n_2 + a_3 n_3) - a_2n - a_3n) / (n(2 a_1 - a_2 - a_3)).\
  $
  计算极大似然估计量：
  $
    L(theta)
    &= theta^(n_1) ((1-theta) / 2)^(n_2 + n_3)\
    ln L(theta)
    &= n_1 ln theta + (n_2 + n_3) ln((1-theta)/2)\
    (dif ln L(theta)) / (dif theta)
    &= n_1 / theta + (n_2 + n_3) / (theta - 1);
  $
  令 $display((dif ln L(theta)) / (dif theta)) = 0$，得：
  $
    hat(theta)_2 = n_1 / (n_1 + n_2 + n_3)
  $
]

#hw([习题七 B6])[
  设总体 $X$ 的密度函数为
  $
    f(x;theta) = cases(
      display(1 / theta e^(-x/theta)\, quad& x > 0)\,,
      0\, quad& "其他"\,
    )
  $
  $theta > 0$ 未知，$X_1,X_2,cdots,X_n$ 是来自总体 $X$ 的简单随机样本。

  *(1)* 证明：样本均值是 $theta$ 的矩估计量，也是极大似然估计量；

  *(2)* 在形如 $display(c sum_(i=1)^n X_i)$ 的估计中求 $c$，使其在均方误差准则下最优；

  *(3)* 判断由 *(2)* 得到的估计量是否为 $theta$ 的相合估计量。
][
  *(1)* 计算矩估计量：
  $
    E(X) &= int_0^(+oo) x cdot 1 / theta e^(-x / theta) dif x \
    &= theta int_0^(+oo)x e^(-x) = theta\
    ==> hat(theta)_1 &= overline(X)
  $
  计算极大似然估计量：
  $
    L(theta) &= product_(i=1)^n 1 / theta e^(-X_i / theta)
    = 1 / (theta^n) product_(i=1)^n e^(-X_i / theta)\
    ==> ln L(theta) &= - n ln theta -1 / theta sum_(i=1)^n X_i\
    ==> (dif ln L(theta)) / (dif theta) &= -n / theta + 1 / theta^2 sum_(i=1)^n X_i\
    ==> hat(theta)_2 &= 1 / n sum_(i=1)^n X_i = overline(X)
  $
  综上，样本均值是 $theta$ 的矩估计量，也是极大似然估计量，得证。

  *(2)* #v(-2 * par-margin)
  $
    &op("Mse")(c sum_(i=1)^n X_i) \
    =& E((c sum_(i=1)^n X_i - theta)^2) \
    =& E(c^2 n^2 (overline(X))^2 - 2 c n overline(X) theta + theta^2)\
    =& c^2 #text_red($((n theta)^2 + n theta^2)$) - 2 c n theta^2 + theta^2\
    =& theta^2 (c^2 n(n+1) - 2 c n + 1)\
  $
  $
    ==> dif(op("Mse")(c sum_(i=1)^n X_i)) / (dif c)
    = theta^2(2n(n+1) c - 2n)
  $
  故当 $display(c=1/(n+1))$ 时在均方误差准则下更优.

  *(3)* #v(-2*par-margin)#text_red[
  $
    &E(c sum_(i=1)^n X_i) = n / (n+1) theta
    ==> lim_(n->oo) E(c sum_(i=1)^n X_i) = theta\
    &D(c sum_(i=1)^n X_i) = n / (n+1)^2 theta
    ==> lim_(n->oo) D(c sum_(i=1)^n X_i) = 0\
  $
  故 $display(c sum_(i=1)^n X_i)$ 依概率收敛于 $theta$]，故是 $theta$ 的相合估计量。
]
