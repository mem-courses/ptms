#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #7",
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


== 习题三

#hw("A32")[
  设随机变量 $X,Y$ 相互独立，且分别具有概率分布律：

  #grid(
    columns: (1fr, 1fr),
    align: center,
    table(
      columns: (auto, auto, auto, auto),
      align: center,
      stroke: 0.5pt,
      [$X$], [0], [1], [2],
      [$p$], [0.2], [0.3], [0.5],
    ),
    table(
      columns: (auto, auto, auto, auto),
      align: center,
      stroke: 0.5pt,
      [$Y$], [1], [2], [3],
      [$p$], [0.2], [0.4], [0.4],
    ),
  )

  设 $Z = X + Y$，$M = max{X,Y}$，$N = min{X,Y}$，分别求 $Z$，$M$，$N$ 的概率分布律。
][

]

#hw("A38")[
  设随机变量 $X ~ U(0,1)$，$Y$ 的密度函数为

  $
    f_Y(y) = cases(
      2y \,quad &0 < y < 1\,,
      0 \,quad &"其他".
    )
  $

  且 $X$ 与 $Y$ 相互独立。记 $M = max{X,Y}$，$N = min{X,Y}$，分别求 $M$，$N$ 的密度函数。
][]

#hw("B6")[
  在 A 地至 B 地（距离为 $m$ km）的公路上，事故发生地在离 A 地 $X$ km 处，事故处理车在离 A 地 $Y$ km 处。设 $X$ 与 $Y$ 均服从 $(0,m)$ 上的均匀分布，且 $X$ 与 $Y$ 相互独立，求事故车与处理车的距离 $Z$ 的密度函数。
][]

#hw("B7")[
  设一系统由三个相互独立的、正常工作时间分别为 $X_1, X_2, X_3$ 的子系统组成（如图所示），且 $X_i (i = 1,2,3)$ 均服从参数为 $lambda$ 的指数分布，求该系统正常工作时间 $T$ 的分布函数 $F_T (t)$ 及密度函数 $f_T (t)$。
  #align(center, image("images/2024-11-07-13-32-03.png", width: 50%))
][]

#hw("B10")[
  设二维随机变量 $(X,Y)$ 的联合密度函数为

  $
    f(x,y) = cases(
  display((3-x-y)/3) \,quad &0 < x < 1\, 0 < y < 2\,,
  0 \,quad &"其他".
)
  $

  记 $Z = X + Y$，求 $Z$ 的密度函数。
][]

#hw("B11")[
  已知市场上某种蔬菜的价格（单位：元/kg）$X ~ U(6,8)$（均匀分布），设某餐馆近期购买该种蔬菜的数量 $Y$ 为 8 kg 和 10 kg 的概率均为 0.5。

  *(1)* 求购买金额 $Z$ 不大于 60 元的概率 $p$；

  *(2)* 求购买金额 $Z$ 的分布函数 $F_Z (z)$。
][]