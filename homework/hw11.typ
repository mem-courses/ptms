#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #11",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "November 28, 2024",
)

#hw([习题六 A11])[
  设总体 $X$ 服从标准正态分布，$X_1, X_2, dots.c, X_16$ 是来自总体 $X$ 的简单随机样本，写出下列统计量的分布：

  *(1)* 样本均值 $overline(X)$；
  *(2)* $display(sum_(i=1)^16 X_i^2)$；
  *(3)* $display((3X_1) / sqrt(sum_(i=2)^10 X_i^2))$；

  *(4)* $display((X_1 + X_2) / sqrt(X_3^2 + X_4^2))$；
  *(5)* $overline(X) - X_1$。
  #half_par
][
  *(1)* #nega_par
  $
    overline(X) sim N(0, 1 / 16)
  $

  *(2)* #nega_par
  $
    sum_(i=1)^16 X_i^2 sim chi^2(16)
  $

  *(3)* #nega_par
  $
    (3 X_1) / sqrt(sum_(i=2)^10 X_i^2) = X_1 / sqrt(sum_(i=2)^10 X_i^2 "/" 9) sim t(9)
  $

  *(4)* #nega_par
  $
    X_1 sim chi^2(1), space X_2 sim chi^2(1) ==> X_1 + X_2 sim chi^2(2)\
    sqrt(X_3^2 + X_4^2) sim chi^2(2) ==> display((X_1 + X_2) / sqrt(X_3^2 + X_4^2)) sim F(2, 2)
  $

  *(5)* #nega_par
  $
    overline(X) sim N(0, display(1/16)),space X_1 sim N(0, 1) \
    ==> overline(X) - X_1 sim N(0 - 0 , display(1/16 + 1)) = N(0, 17 / 16)
  $
  #text(fill: red)[
    订正：注意 $overline(X)$ 与 $X_1$ 并非独立。
    $
      overline(X) - X_1 = 1 / 16 sum_(i=2)^16 X_i - 15 / 16 X_1,
    $
    其中：
    $
      1 / 16 sum_(i=2)^16 X_i sim N(0, 15 / 256) ,quad
      15 / 16 X_1 sim N(0, 225 / 256),
    $
    故，
    $
      overline(X) - X_1 sim N(0 - 0, 15 / 256 + 225 / 256) = N(0, 15 / 16).
    $
  ]
]

#hw([习题六 B2])[
  设总体 $X sim N(mu, sigma^2)$，$X_1, X_2, dots.c, X_9$ 是来自总体 $X$ 的简单随机样本，$overline(X)$ 是样本均值，$S^2$ 是样本方差，写出下列抽样分布：

  #half_par
  #grid(
    columns: (1fr, 1fr),
    [
      *(1)* $display((3(overline(X) - mu)) / sigma)$
      #hole_par
      *(3)* $display((sum_(i=1)^9 (X_i - overline(X))^2) / sigma^2)$
      #hole_par
      *(5)* $display((9(overline(X) - mu)^2) / sigma^2)$
    ],
    [
      *(2)* $display((3(overline(X) - mu)) / S)$
      #hole_par
      *(4)* $display((sum_(i=1)^9 (X_i - mu)^2) / sigma^2)$
      #hole_par
      *(6)* $display((9(overline(X) - mu)^2) / S^2)$
    ],
  )
  #hole_par
  *(7)* $display((2(X_1 - X_2)^2) / ((X_3 - X_4)^2 + (X_5 - X_6)^2))$
  #hole_par
  *(8)* $display(((X_1 - Y_1)^2 + (X_2 - Y_1)^2 + (X_3 - Y_1)^2) / ((X_4 - Y_2)^2 + (X_5 - Y_2)^2 + (X_6 - Y_2)^2))$，其中 $Y_1 = display((X_1 + X_2 + X_3) / 3), space Y_2 = display((X_4 + X_5 + X_6) / 3)$。
  #half_par
][]

#hw([习题六 B5])[
  设总体 $X$ 的密度函数
  $
    f(x) = display(1/2) e^(-abs(x)), space -oo < x < +oo,
  $
  从总体中抽取样本容量为 10 的样本，$overline(X)$ 和 $S^2$ 分别是样本均值和样本方差，求：

  *(1)* $overline(X)$ 的数学期望和方差；

  *(2)* $S^2$ 的数学期望。
][]

#hw([习题六 B7])[
  设总体 $X$ 的密度函数
  $
    f(x) = cases(
      lambda e^(-lambda x)\, quad& x > 0\,,
      0\,  quad& x <= 0\,
    )
  $
  从总体中抽取样本容量为 10 的样本。

  *(1)* 求样本均值的数学期望和方差；

  *(2)* 记 $X_((1)) = min{X_1, X_2, dots.c, X_10}$，求 $X_((1))$ 的数学期望和方差。
][]

#hw([习题六 B10])[
  设总体 $X tilde N(mu, sigma^2)$，$X_1, X_2, dots.c, X_5$ 和 $Y_1, Y_2, dots.c, Y_9$ 是来自总体 $X$ 的两个独立样本，$overline(X)$ 和 $overline(Y)$ 分别是两个样本的样本均值，$S_1^2$ 和 $S_2^2$ 分别是两个样本的样本方差。

  #half_par
  *(1)* 若 $display(a(overline(X) - overline(Y)) / sigma) tilde N(0, 1)$，求 $a$；
  #hole_par
  *(2)* 若 $display(b(overline(X) - overline(Y)) / sqrt(S_1^2 + 2S_2^2)) tilde t(12)$，求 $b$。
  #half_par
][]

#hw([习题七 A3 (只算矩估计)])[
  设 $X_1, X_2, dots.c, X_n$ 是来自下列总体 $X$ 的简单随机样本，求各总体中未知参数 $theta$ 的矩估计量和极大似然估计量，并对所获得的样本值，求参数 $theta$ 的矩估计值和极大似然估计值：

  *(1)* $display(f(x; theta) = cases(
		2^(-theta) x^(theta-1)\, quad& 0 < x < 2\,,
		0\, quad& "其他"\,,
	)\, quad theta > 0)$；

  样本值：0.45, 0.2, 0.5, 0.47, 0.35, 1.63, 0.14, 0.06, 0.89, 0.34；

  *(2)* $f(x; theta) = display(1/(2theta) e^(-abs(x)/theta)), quad -oo < x < +oo, quad theta > 0$；

  样本值：-0.05, -0.47, 0.01, -0.03, -0.18, 1.65, -0.64, -1.05, 0.41, -0.19.
][]
