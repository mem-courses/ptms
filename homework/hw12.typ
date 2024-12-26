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
		2^(-theta) x^(theta-1)\, quad& 0 < x < 2\,,
		0\, quad& "其他"\,,
	)\, quad theta > 0)$；

  #grid(
    columns: 2,
    [样本值：$quad$],
    [
      0.45, 0.2, 0.5, 0.47, 0.35,\
      1.63, 0.14, 0.06, 0.89, 0.34；
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
][]

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
][]

#hw([习题七 A7])[
  设总体 $X$ 的密度函数为

  $
    f(x; theta) = cases(
      display(x/theta e^(-x^2/(2theta)))\, quad& x > 0\,,
      0\, quad& "其他"\,,
    )
  $

  $theta > 0$ 未知，记 $mu_2 = E(X^2)$, $p = P{X > 1}$。$X_1, X_2, dots.c, X_n$ 是来自该总体的简单随机样本，求参数 $theta$, $mu_2$ 和 $p$ 的极大似然估计量。
][]

#hw([习题七 A8])[
  设总体 $X$ 的均值为 $mu$，方差为 $sigma^2$，$X_1, X_2, dots.c, X_10$ 为来自总体 $X$ 的简单随机样本，问 $a$ 取何值时，$display(a sum_(i=1)^9 (X_(i+1) - X_i)^2)$ 是 $sigma^2$ 的无偏估计量？
][]

#hw([习题七 A9])[
  设总体 $X sim N(mu, sigma^2)$, $mu, sigma^2$ 未知，$X_1, X_2, X_3$ 是总体 $X$ 的简单随机样本，用

  $
    hat(mu)_1 = 1 / 2 X_1 + 1 / 4 X_2 + 1 / 4 X_3,\
    hat(mu)_2 = 2X_1 - 2X_2 + X_3,\
    hat(mu)_3 = 1 / 3 X_1 + 1 / 3 X_2 + 1 / 3 X_3
  $

  估计参数 $mu$，它们都是无偏估计量吗？如果是，哪个更有效？
][]

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
][]

#hw([习题七 B6])[
  设总体 $X$ 的密度函数为

  $
    f(x; theta) = cases(
      display(2x/theta^2)\, quad& 0 < x < theta\,,
      0\, quad& "其他"\,,
    )
  $

  $theta > 0$ 未知，$X_1, X_2, dots.c, X_n (n >= 4)$ 是来自总体 $X$ 的简单随机样本。

  *(1)* 求 $theta$ 的矩估计量 $hat(theta)_1$ 和极大似然估计量 $hat(theta)_2$；

  *(2)* 在均方误差准则下，判断哪个估计量更优；

  *(3)* 判断两个估计量是否为 $theta$ 的相合估计量。
][]
