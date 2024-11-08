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
][
  *(1)* $E(Z) = 0.1 + 0.3 times 2 + 0.2 times 4 = 1.5$

  *(2)* $E(Z) = (0.1 + 0.3) times 1 + 0.2 times 2 = 0.8$

  *(3)* $E(Z) = (0.2 + 0.1) times 1 + (0.3 + 0.2 + 0.2) times 2 = 1.7$
]

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
][
  *(1)* 依题意，
  $
    E(X) &= int_0^(+oo) int_0^x 2 / x e^(-2x) cdot x dif y dif x
    = int_0^(+oo) 2 x e^(-2x) dif x \
    &= lr((-e^(-2x) (x+1/2))|)_0^(+oo) = 1 / 2
  $
  *(2)* 根据概率的线性性，有
  $
    E(3X-1) = 3 E(X) - 1= 1 / 2
  $
  *(3)* 依题意得
  $
    E(X Y) &= int_0^(+oo) int_0^x 2 / x e^(-2x) cdot x y dif y dif x \
    &= int_0^(+oo) x^2 e^(-2x) dif x\
    &= lr((-(e^(-2x) (1/2 x^2 + 1/2 x + 1/4)))|)_0^(+oo) \
    &= 1 / 4
  $
]

#hw([习题四 B11])[
  某电子监视器的圆形屏幕半径为 $r (r > 0)$，若目标出现的位置点 A 服从均匀分布。以圆形屏幕的圆心为原点，设点 A 的平面直角坐标为 $(X,Y)$。

  *(1)* 求 $E(X)$ 与 $E(Y)$；

  *(2)* 求点 A 与屏幕中心位置 $(0,0)$ 的平均距离。
][
  *(1)* 由已知得 $(X,Y)$ 的联合密度函数为
  $
    f(x,y) = cases(
      display(1/(pi r^2))\, quad& x^2 + y^2 <= r^2\,,
      0\, quad & "其他".,
    )
  $
  故
  $
    E(X) &= int_(-oo)^(+oo) int_(-oo)^(+oo) f(x,y) x dif y dif x \
    &= int_(-r)^(r) int_(-sqrt(r^2 - x^2))^(+sqrt(r^2 - x^2)) 1 / (pi r^2) x dif y dif x \
    &= 2 / (pi r^2) int_(-r)^r x sqrt(r^2 - x^2) dif x \
    &= 0.
  $
  由轮换对称性可知：
  $
    E(Y) = E(X) = 0.
  $
  *(2)* 依题意得
  $
    E(R) &= E(sqrt(X^2 + Y^2)) \
    &= int_(-oo)^(+oo) int_(-oo)^(+oo) f(x,y) sqrt(x^2 + y^2) dif y dif x \
    &= int_(0)^(2pi) int_(0)^(r) 1 / (pi r^2) t cdot t dif t dif theta \
    &= 1 / (pi r^2) cdot 2 pi cdot int_0^r t^2 dif t\
    &= 2 / (r^2) cdot r^3 / 3
    = (2r) / 3
  $
]

#hw([习题四 B14])[
  有 $n$ 张各不相同的卡片，采用有放回抽样，每次取一张，共取 $n$ 次，则有些卡片会被取到，甚至被取到很多次，但有些卡片可能不曾被取到。设这 $n$ 张卡片中被取到的共有 $X$ 张，计算 $E(X)$，并计算当 $n arrow +oo$ 时，$display(E(X/n))$ 的极限。
][
  考虑每张牌被选中的概率为：
  $
    p = 1 - (n-1)^n / (n^n).
  $
  由于每张牌被选中的概率都是独立的，所以由期望的线性性有：
  $
    E(X) = n p = n - ((n-1)^n) / (n^(n-1)).
  $
  考虑当 $n->+oo$ 时，
  $
    lim_(n->+oo) E(X / n)
    &= lim_(n -> +oo) (n^n - (n-1)^n) / (n^(n))\
    &= 1 - lim_(n -> +oo) ((n-1) / n)^n \
    &= 1 - 1 / e
  $
  // 由二项式反演得，
  // $
  //   P{X=k} = sum_(i=1)^k binom(n,i) binom(k,i)(i^n) / (n^n) (-1)^(k-i)
  // $
  // 故期望为：
  // $
  //   E(X) &= sum_(k=1)^n P{X=k} cdot k \
  //   &= sum_(k=1)^n k sum_(i=1)^k binom(n,i) binom(k,i) i^n / n^n (-1)^(k-i) \
  //   &= 1 / n^n sum_(k=1)^n k (-1)^k sum_(i=1)^k binom(n,i) binom(k,i) i^n (-1)^i
  // $
]

#hw([习题四 B15])[
  在区间 $(0,1)$ 中随机取 $n (n >= 2)$ 个点，求相距最远的两个点的距离的数学期望。
][
  由期望的线性性，
  $
    E(d) &= E(max(X_1,X_2,cdots,X_n)) - E(min(X_1,X_2cdots,X_n))\
    &= (n) / (n+1) - 1 / (n+1) = (n-1) / (n+1).
  $
]

#hw([习题四 B20])[
  设随机变量 $X$ 服从拉普拉斯分布，密度函数为

  $
    f(x) = display(1/2) e^(-abs(x)), quad -oo < x < +oo,
  $

  计算 $X$ 与 $abs(X)$ 的方差。
][
  依题意得：
  $
    E(X) &= int_(-oo)^(+oo) x / 2 e^(-abs(x)) dif x = 0
  $
  $
    E(X^2) &= int_(-oo)^(+oo) x^2 / 2 e^(-abs(x)) dif x = 2 int_(0)^(+oo) x^2 e^(-x) dif x\
    &= lr((-(x^2 + 2x + 2) e^(-x))|)_0^(+oo) = 2
  $
  故
  $
    Var(X) = E(X^2) - E^2(X) = 2 - 0^2 = 2.
  $
  依题意又有：
  $
    E(abs(X)) &= int_(-oo)^(+oo) abs(x) e^(-abs(x)) dif x
    = 2 int_(0)^(+oo) x e^(-x) dif x\
    &= lr((-(x+1)e^(-x))|)_0^(+oo) = 1
  $
  $
    E(abs(X)^2) = E(X^2) = 2
  $
  故
  $
    Var(abs(X)) = E(abs(X)^2) - E^2(abs(X)) = 2 - 1^2 = 1.
  $
]