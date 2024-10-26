#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #4",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "October 17, 2024",
)

== 习题二

#hw("B23")[
  设某群体的 BMI (体重指数) 值 (单位: kg/m^2) $X ~ N(22.5, 2.5^2)$. 医学研究发现身体肥胖者患高血压的可能性增大: 当 $X <= 25$ 时, 患高血压的概率为 10%; 当 $25 < X <= 27.5$ 时, 患高血压的概率为 15%; 当 $X > 27.5$ 时, 患高血压的概率为 30%.

  *(1)* 从该群体中随机选出 1 人, 求他患高血压的概率;

  *(2)* 若他患有高血压, 求他的 BMI 值超过 25 的概率;

  *(3)* 随机独立地选出 3 人, 求至少有 1 人患高血压的概率.
][]

#hw("B33")[
  已知随机变量 $X$ 的密度函数为

  $
    f(x) = cases(
      c(4 - x^2) \,quad &-1 < x < 2,
      0	\, &"其他".
    )
  $

  *(1)* 求常数 $c$;

  *(2)* 设 $Y = 3X$, 求 $Y$ 的密度函数;

  *(3)* 设 $Z = abs(X)$, 求 $Z$ 的分布函数及密度函数.
][]

#hw("B39")[
  设随机变量 $X ~ N(0, 1)$, 记 $Y = e^X, Z = ln |X|$.

  *(1)* 求 $Y$ 的密度函数;

  *(2)* 求 $Z$ 的密度函数.
][]

== 习题三

#hw("A5")[
  设二维离散型随机变量 $(X,Y)$ 的联合分布律为

  #align(
    center,
    table(
      columns: 3,
      inset: 5pt,
      align: center + horizon,
      [$X backslash Y$], [0], [1],
      [0], [0.3], [$a$],
      [1], [$b$], [0.2],
    ),
  )

  且已知事件 ${X = 0}$ 与事件 ${X + Y = 1}$ 相互独立，求常数 $a, b$ 的值。
][]

#hw("A8")[
  设随机变量 $X, Y$ 的概率分布律分别为

  #align(
    center,
    table(
      columns: 4,
      inset: 5pt,
      align: center + horizon,
      [$X$], [0], [1], [],
      [$p$], [0.4], [0.6], [],
    ),
  )

  #align(
    center,
    table(
      columns: 5,
      inset: 5pt,
      align: center + horizon,
      [$Y$], [0], [1], [2], [],
      [$p$], [0.2], [0.5], [0.3], [],
    ),
  )

  且已知 $P{X = 0, Y = 0} = P{X = 1, Y = 2} = 0.2$.

  *(1)* 写出 $(X,Y)$ 的联合分布律：

  *(2)* 写出给定 ${X = 0}$ 的条件下 $Y$ 的条件分布律：
][]

#hw("A9")[
  将一枚均匀的骰子掷 2 次，记 $X$ 为第 1 次出现的点数，$Y$ 为 2 次点数的最大值。

  *(1)* 求 $(X,Y)$ 的联合分布律及边际分布律：

  *(2)* 写出给定 ${Y = 6}$ 的条件下 $X$ 的条件分布律：
][]