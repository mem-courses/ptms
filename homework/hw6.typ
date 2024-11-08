#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #6",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "October 24, 2024",
)

#hw([习题三 A11])[
  设二维离散型随机变量 $(X,Y)$ 的联合分布律为

  #align(
    center,
    table(
      columns: (auto, auto, auto, auto),
      align: center,
      stroke: 0.5pt,
      [$X backslash Y$], [0], [1], [2],
      [0], [0.1], [0.1], [0],
      [1], [0], [0.2], [0.2],
      [2], [0.2], [0], [0.2],
    ),
  )

  记 $F(x,y)$，$F_X (x)$ 分别是 $(X,Y)$ 的联合分布函数和 $X$ 的边际分布函数。

  *(1)* 求 $F(0,1)$，$F(1,1.5)$，$F(2.1,1.1)$；

  *(2)* 求 $F_X (x)$。
][]

#hw([习题三 A12])[
  设二维离散型随机变量 $(X,Y)$ 的边际分布函数

  $
    F_X (x) = cases(
			0\,   &x < 1\,,
			0.3\, &1 <= x < 2\,,
			1\,   &x >= 2\,,
		)quad
    F_Y (y) = cases(
			0\,   &y < 0\,,
			0.4\, &0 <= y < 1\,,
			1\,   &y >= 1\,,
		)
  $

  且已知 $P{X = 1, Y = 0} = 0.1$。

  *(1)* 求 $(X,Y)$ 的联合分布律；

  *(2)* 求给定 ${Y = 0}$ 的条件下 $X$ 的条件分布函数。
][

]

#hw([习题三 A17])[
  二维随机变量 $(X,Y)$ 的联合密度函数为
  $
    f(x,y) = cases(
			e^(-x)\, quad &0 < y < x\,,
			0\,      quad &"其他".,
		)
  $

  *(1)* 分别求 $X$ 与 $Y$ 的边际密度函数 $f_X (x)$ 与 $f_Y (y)$；

  *(2)* 求条件密度函数 $f_(Y|X) (y|x)$；

  *(3)* 给定 ${X = x}$ 的条件下，$Y$ 的条件分布是均匀分布吗？为什么？
][]

#hw([习题三 A19])[
  设 $(X,Y)$ 为二维随机变量，$X$ 的密度函数为
  $
    f_X (x) = cases(
			x^2 e^(-lambda x)\, quad &x > 0\,,
			0\,                 quad &x <= 0\,,
		)
  $
  其中 $lambda > 0$。当 $x > 0$ 时，给定 ${X = x}$ 的条件下 $Y$ 的条件密度函数为
  $
    f_(Y|X) (y|x) = cases(
			display(1/x e^(-y/x))\, quad &y > 0\,,
			0\,            quad &y <= 0\,,
		)
  $

  *(1)* 求 $(X,Y)$ 的联合密度函数；

  *(2)* 求当 $x > 0$ 时，给定 ${X = x}$ 条件下 $Y$ 的条件分布函数；

  *(3)* 求 $P{Y > 1 | X = 1}$。
][]

#hw([习题三 A27])[
  在半圆 $D = {(x,y): x^2 + y^2 <= 1, x > 0}$ 内随机投点 $A$，设 $A$ 点的坐标为 $(X,Y)$。

  *(1)* 求 $X$ 的边际密度函数 $f_X (x)$；

  *(2)* 求 $display(P{X < 1/2})$；

  *(3)* $X$ 与 $Y$ 相互独立吗？为什么？
][]

#hw([习题三 B4])[
  设二维随机变量 $(X,Y)$ 的联合密度函数为
  $
    f(x,y) = cases(
			c(y-x)\, quad &0 < x < y < 1\,,
			0\,      quad &"其他".,
		)
  $

  *(1)* 求常数 $c$；

  *(2)* 求 $P{X + Y <= 1}$；

  *(3)* 求 $P{X < 0.5}$。
][]
