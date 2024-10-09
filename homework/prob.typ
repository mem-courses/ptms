#import "@preview/tablex:0.0.8": tablex, colspanx, rowspanx, hlinex, vlinex, cellx
#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Exercises",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "October 9, 2024",
)

== 习题三

#hw("A5")[
  设二维离散型随机变量 $(X,Y)$ 的联合分布律为

  #tablex(
    columns: (1fr, 1fr, 1fr),
    rowspanx(2, $X$),
    colspanx(2, $Y$),
    [*0*],
    [*1*],
    [*0*],
    [0.3],
    [$a$],
    [*1*],
    [$b$],
    [0.2],
  )

  且已知事件 ${X = 0}$ 与事件 ${X + Y = 1}$ 相互独立，求常数 $a,b$ 的值。
][]

#hw("A8")[
  设随机变量 $X, Y$ 的概率分布分别为

  #tablex(
    columns: (1fr, 1fr, 1fr),
    $X$,
    [0],
    [1],
    $p$,
    [0.4],
    [0.6],
  )

  #tablex(
    columns: (1fr, 1fr, 1fr, 1fr),
    $Y$,
    [0],
    [1],
    [2],
    $p$,
    [0.2],
    [0.5],
    [0.3],
  )

  且已知 $P{X = 0, Y = 0} = P{X = 1, Y = 2} = 0.2$。
][]

#hw("A9")[
  将一枚均匀的骰子掷 2 次，记 $X$ 为第 1 次出现的点数，$Y$ 为 2 次点数的最大值。

  *(1)* 求 $(X,Y)$ 的联合分布律及边际分布律；

  *(2)* 写出给定 ${Y = 6}$ 的条件下 $X$ 的条件分布律。
][]

#hw("A11")[
  设二维离散型随机变量 $(X,Y)$ 的联合分布律为

  #tablex(
    columns: (1fr, 1fr, 1fr, 1fr),
    rowspanx(2, $X$),
    colspanx(3, $Y$),
    [0],
    [1],
    [2],
    [0],
    [0.1],
    [0.1],
    [0],
    [1],
    [0],
    [0.2],
    [0.2],
    [2],
    [0.2],
    [0],
    [0.2],
  )

  记 $F(x,y), F_X(x)$ 分别是 $(X,Y)$ 的联合分布函数和 $X$ 的边际分布函数。

  *(1)* 求 $F(0,1), F(1,1.5), F(2.1,1.1)$；

  *(2)* 求 $F_X(x)$。
][]

#hw("A12")[
  设二维离散型随机变量 $(X,Y)$ 的边际分布函数
  $
    F_X(x) = cases(
			0\,    & x < 1,
			0.3\,  & 1 <= x < 2,
			1\,    & x >= 2,
		),
    F_Y(y) = cases(
			0\,    & y < 0,
			0.4\,  & 0 <= y < 1,
			1\,    & y >= 1,
		)
  $
  且已知 $P{X = 1, Y = 0} = 0.1$。

  *(1)* 求 $(X,Y)$ 的联合分布律；

  *(2)* 求给定 ${Y = 0}$ 的条件下 $X$ 的条件分布函数。
][]

#hw("A17")[
  二维随机变量 $(X,Y)$ 的联合密度函数为
  $
    f(x,y) = cases(
    e^(-x)\, quad & 0 < y < x\,,
    0\,      quad & "其他."
  )
  $

  *(1)* 分别求 $X$ 与 $Y$ 的边际密度函数 $f_X (x)$ 与 $f_Y (y)$；

  *(2)* 求条件密度函数 $f_(Y|X)(y|x)$；

  *(3)* 给定 ${X = x}$ 的条件下，$Y$ 的条件分布是均匀分布吗？为什么？
][]

#hw("A19")[
  设 $(X,Y)$ 为二维随机变量，$X$ 的密度函数为
  $
    f_X (x) = cases(
    lambda^2 x e^(-lambda x)\, quad & x > 0\,,
    0\,                        quad & x <= 0\,,
  )
  $
  其中 $lambda > 0$。当 $x > 0$ 时，给定 ${X = x}$ 的条件下 $Y$ 的条件密度函数为
  $
    f_(Y|X)(y|x) = cases(
    1/x\, quad & 0 < y < x,
    0\,   quad & "其他."
  )
  $

  *(1)* 求 $(X,Y)$ 的联合密度函数；

  *(2)* 求 $Y$ 的边际密度函数。
][]

#hw("A27")[
  在半圆 $D = {(x,y): x^2 + y^2 <= 1, x > 0}$ 内随机投点 $A$, 设 $A$ 点的坐标为 $(X,Y)$。

  *(1)* 求 $X$ 的边际密度函数 $f_X (x)$；

  *(2)* 求 $P{X < 1/2}$；

  *(3)* $X$ 与 $Y$ 相互独立吗？为什么？
][]

#hw("A32")[
  设随机变量 $X, Y$ 相互独立，且分别具有概率分布律

  #tablex(
    columns: (1fr, 1fr, 1fr, 1fr),
    [X],
    [0],
    [1],
    [2],
    [p],
    [0.2],
    [0.3],
    [0.5],
  )

  #tablex(
    columns: (1fr, 1fr, 1fr, 1fr),
    [Y],
    [1],
    [2],
    [3],
    [p],
    [0.2],
    [0.4],
    [0.4],
  )

  设 $Z = X + Y$, $M = max{X, Y}$, $N = min{X, Y}$, 分别求 $Z, M, N$ 的概率分布律。
][]

#hw("A38")[
  设随机变量 $X tilde U(0, 1)$，$Y$ 的密度函数为

  $
    f_Y (y) = cases(
    2y\, quad & 0 < y < 1\,,
    0\,  quad & "其他."
  )
  $

  且 $X$ 与 $Y$ 相互独立。记 $M = max{X, Y}$, $N = min{X, Y}$，分别求 $M, N$ 的密度函数。
][]