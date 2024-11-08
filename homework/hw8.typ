#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #8",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "November 7, 2024",
)


#hw([习题四 A4])[
  设二维离散型随机变量 $(X,Y)$ 的联合分布律为

  #align(
    center,
    table(
      columns: 4,
      align: center,
      stroke: 0.5pt,
      [$X backslash Y$], [0], [1], [2],
      [1], [0.2], [0.1], [0.3],
      [2], [0.2], [0], [0.2],
    ),
  )

  求随机变量 $Z$ 的数学期望 $E(Z)$：

  *(1)* $Z = X Y$；

  *(2)* $Z = min{X,Y}$；

  *(3)* $Z = max{X,Y}$。
][]

#hw([习题四 B6])[
  设二维随机变量 $(X,Y)$ 的联合密度函数为

  $
    f(x,y) = cases(
			display(2/x e^(-2x))\, quad 0 < y < x < +oo\,,
			0\, quad "其他"
		)
  $


  *(1)* 求 $E(X)$；

  *(2)* 求 $E(3X-1)$；

  *(3)* 求 $E(X Y)$。
][]

#hw([习题四 B11])[
  某电子监视器的圆形屏幕半径为 $r\ (r > 0)$，若目标出现的位置点 A 服从均匀分布。以圆形屏幕的圆心为原点，设点 A 的平面直角坐标为 $(X,Y)$。

  *(1)* 求 $E(X)$ 与 $E(Y)$；

  *(2)* 求点 A 与屏幕中心位置 $(0,0)$ 的平均距离。
][]

#hw([习题四 B14])[
  有 $n$ 张各不相同的卡片，采用有放回抽样，每次取一张，共取 $n$ 次，则有些卡片会被取到，甚至被取到很多次，但有些卡片可能不曾被取到。设这 $n$ 张卡片中被取到的共有 $X$ 张，计算 $E(X)$，并计算当 $n arrow +oo$ 时，$display(E(X/n))$ 的极限。
][]

#hw([习题四 B15])[
  在区间 $(0,1)$ 中随机取 $n (n >= 2)$ 个点，求相距最远的两个点的距离的数学期望。
][]

#hw([习题四 B20])[
  设随机变量 $X$ 服从拉普拉斯分布，密度函数为

  $
    f(x) = display(1/2) e^(-abs(x))\,, quad -oo < x < +oo,
  $

  计算 $X$ 与 $abs(X)$ 的方差。
][]