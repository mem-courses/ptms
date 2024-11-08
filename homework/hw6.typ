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
][
  *(1)* 由已知，
  $
    F(0,1) &= f(0,0) +f(0,1) = 0.2 \
    F(1,1.5) &= f(0,0) + f(0,1) + f(1,0) + f(1,1) = 0.4 \
    F(2.1,1.1) &= f(0,0) + dots.c + f(2,1) = 0.6 \
  $
  *(2)* 由已知：
  $
    F_X (
      x
    ) = cases(
      0\,quad& x < 0\,,
      0.2\, quad& 0 <= x < 1\,,
      0.6\, quad& 1 <=x  < 2\,,
      1\, quad& x >= 2.,
    )
  $
]

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
  *(1)* 由已知，$(X,Y)$ 的联合分布律和条件分布律如下：
  #align(
    center,
    table(
      columns: 4,
      align: center + horizon,
      $X backslash Y$, $0$, $1$, $dot.c$,
      $1$, $0.1$, $0.2$, $0.3$,
      $2$, $0.3$, $0.4$, $0.7$,
      $dot.c$, $0.4$, $0.6$, $1$,
    ),
  )
  *(2)* 由已知，所求的条件分布函数如下：
  $
    F_(X|Y) (
      x,0
    ) = cases(
      0\,quad& x < 1\,,
      0.25\, quad& 1 <= x < 2\,,
      0.75\, quad& x >= 2.,
    )
  $
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
][
  *(1)* 由已知，
  $
    f_X (x) &= int_(-oo)^(+oo) f(x,y) dif y
    = int_(0)^x e^(-x) dif y = x e^(-x)\
    f_Y (y) &= int_(-oo)^(+oo) f(x,y) dif x
    = int_y^(+oo) e^(-x) dif x \
    & = (- e^(-x)) |_y^(+oo) = e^(-y)
  $
  *(2)* 由已知，当 $x>y>0$ 时，
  $
    f_(Y|X) (y|x) &= f(x,y) / (f_X (x)) = (e^(-x)) / (x e^(-x)) = 1 / x
  $
  故：
  $
    f_(Y|X) (y|x) = cases(
    display(1/x)\, quad& 0<y<x\,,
    0\, quad& y>=x\.
  ) quad (x>0)
  $
  *(3)* 当 ${X=x}$ 为条件时，$y$ 在定义域内服从密度函数恒等于 $1/x$ 的分布，故是均匀分布。
]

#hw([习题三 A19])[
  设 $(X,Y)$ 为二维随机变量，$X$ 的密度函数为
  $
    f_X (x) = cases(
			lambda^2 x e^(-lambda x)\, quad &x > 0\,,
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
][
  *(1)* 当 $(X>0) sect (Y>0)$ 时，
  $
    f_(Y|X) (y|x) = f(x,y) / (f_X (x)) ==> f(x,y) = f_X (x) dot.c f_(Y|X) (y|x)\
    ==>
    f(x,y) = cases(
      lambda^2 e^(-lambda x - y/x)\,quad& x>0\,y>0\,,
      0\, quad& "其他".,
    )
  $
  *(2)* 由已知，对于当 $x>0$ 时 ${X=x}$ 条件下 $Y$ 的条件分布函数，当 $y>0$ 时为：
  $
    F_(Y|X) (y|x) &= int_(-oo)^y f_(Y|X) (y|x) dif y
    = int_(0)^y 1 / x e^(-y / x) dif y \
    &= lr((-e^(-y/x))|)_(0)^y = 1 - e^(-y / x)
  $
  故，
  $
    F_(Y|X) (y|x) &= cases(
    1 - e^(-y/x)\, quad & y > 0\,,
      0\, quad & y <= 0.,
    )
  $
  *(3)* 由已知，
  $
    P{Y>1,X=1} &= 1 - F_(Y|X) (1,1)
    = 1 - (1 - 1 / e)
    = 1 / e
  $
]

#hw([习题三 A27])[
  在半圆 $D = {(x,y): x^2 + y^2 <= 1, x > 0}$ 内随机投点 $A$，设 $A$ 点的坐标为 $(X,Y)$。

  *(1)* 求 $X$ 的边际密度函数 $f_X (x)$；

  *(2)* 求 $display(P{X < 1/2})$；

  *(3)* $X$ 与 $Y$ 相互独立吗？为什么？
][
  *(1)* 总面积为
  $
    1 / 2 pi r^2 = pi / 2,
  $
  故随机变量 $X,Y$ 的概率密度函数为：
  $
    f(x,y) = 2 / pi quad (x >0,x^2+y^2 <= 1)
  $
  故
  $
    f_X (x) = int_(-sqrt(1-x^2))^sqrt(1-x^2) 2 / pi dif y = 4 / pi sqrt(1-x^2) quad (x >0)
  $
  *(2)* 由已知，
  $
    P{X<1 / 2} &= int_(0)^(1 / 2) f_X (x) dif x
    = 4 / pi int_(0)^(1 / 2) sqrt(1-x^2) dif x \
    &= 4 / pi int_0^(pi / 6) cos theta dif (sin theta)
    = 4 / pi int_0^(pi / 6) cos^2 theta dif theta\
    &= 4 / pi int_0^(pi / 6) (cos 2 theta + 1) / 2 dif theta
    = 1 / pi int_0^(pi / 3) (cos t + 1) dif t\
    &= 1 / pi (sin t + t)|_(0)^(pi / 3)
    = 1 / pi (sqrt(3) / 2 + pi / 3)
    = sqrt(3) / (2 pi) + 1 / 3
  $
]

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
][
  *(1)* 根据概率密度函数的性质，
  $
    & int_(-oo)^(+oo) int_(-oo)^(+oo) f(x,y) dif x dif y
    = int_0^1 int_0^x c (y-x) dif y dif x\
    =& c int_0^1 lr((x y - x^2/2)|)_0^x dif y
    = c / 2 int_0^1 y^2 dif y
    = c / 6 = 1
  $
  故常数 $c=6$。

  *(2)* 由已知，
  $
    & P{X+Y <= 1} = int_(0)^(1) int_(0)^(1-x) f(x,y) dif y dif x \
    =& int_0^(1 / 2) int_(x)^(1-x) 6 (y-x) dif y dif x
    = 6 int_0^(1 / 2) lr((y^2/2  - x y)|)_(x)^(1-x) dif x\
    =& 6 int_0^(1 / 2) ((1-x)^2 / 2 - x (1-x) - x^2 / 2 + x^2) dif x\
    =& 6 int_0^(1 / 2) (1 / 2 - 2x + 2x^2) dif x
    = 6 (1 / 4 - 1 / 4 + 1 / 12) = 1 / 2
  $

  *(3)* 由已知，
  $
    & P{X<1 / 2}
    = int_0^(1 / 2) int_0^(1-x) 6 (y-x) dif y dif x\
    =& 6 int_0^(1 / 2) lr((y^2/2 - x y)|)_0^(1-x) dif x 
    = 6 int_0^(1 / 2) (3 / 2 x^2 - 2x + 1 / 2) dif x\
    =& 7 / 8
  $
]
