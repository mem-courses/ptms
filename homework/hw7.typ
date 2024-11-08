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
  date: "October 31, 2024",
)


#hw("习题三 A32")[
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
  由已知，$Z,M,N$ 的概率分布律如下：
  #{
    set align(center)
    table(
      columns: 6,
      $Z$, $1$, $2$, $3$, $4$, $5$,
      $p$, $0.04$, $0.14$, $0.3$, $0.32$, $0.2$,
    )
    grid(
      columns: (1fr, 1fr),
      table(
        columns: 4,
        $N$, $1$, $2$, $3$,
        $p$, $0.1$, $0.5$, $0.4$,
      ),
      table(
        columns: 4,
        $M$, $0$, $1$, $2$,
        $p$, $0.2$, $0.4$, $0.4$,
      ),
    )
  }
]

#hw("习题三 A38")[
  设随机变量 $X ~ U(0,1)$，$Y$ 的密度函数为

  $
    f_Y (y) = cases(
      2y \,quad &0 < y < 1\,,
      0 \,quad &"其他".
    )
  $

  且 $X$ 与 $Y$ 相互独立。记 $M = max{X,Y}$，$N = min{X,Y}$，分别求 $M$，$N$ 的密度函数。
][
  由于 $X ~ U(0,1)$，故 $X$ 的概率分布函数为：
  $
    F_X (x) = cases(
      0\, quad& x  < 0 \,,
      x\, quad & 0 <= x < 1\,,
      1\, quad& x >= 1.,
    )
  $
  另由已知，当 $0<y<1$ 时，$Y$ 的分布函数为：
  $
    F_Y (y) = int_0^y 2y dif y = y^2
  $
  故 $Y$ 的概率分布函数为：
  $
    F_Y (y) = cases(
      0\, quad& y < 0\,,
      y^2\, quad& 0 <= y < 1\,,
      1\, quad& y >= 1.,
    )
  $
  则 $M,N$ 的概率分布函数分别为：
  $
    F_M (z) &= F_X (z) F_Y (z)
    = cases(
      0\, quad& z<0\,,
      z^3\, quad& 0<= z < 1\,,
      1\, quad& z > 1.,
    )
  $
  $
    F_N (z) &= 1-(1 - F_X (z))(1 - F_Y (z)) \
    &= cases(
      0\, quad& z<0\,,
      z+z^2-z^3\, quad& 0<=z<1\,,
      1\, quad& z>=1.,
    )
  $
  故 $M,N$ 的概率密度函数分别为：
  $
    f_M (z) &= cases(
      3 z^2\, quad& 0<=z<=1\,,
      0\, quad& "其他".
    )\
    f_N (z) &= cases(
      1+2z-3z^2\, quad& 0<=z<=1\,,
      0\, quad& "其他".
    )
  $
]


#hw("习题三 B6")[
  在 A 地至 B 地（距离为 $m$ km）的公路上，事故发生地在离 A 地 $X$ km 处，事故处理车在离 A 地 $Y$ km 处。设 $X$ 与 $Y$ 均服从 $(0,m)$ 上的均匀分布，且 $X$ 与 $Y$ 相互独立，求事故车与处理车的距离 $Z$ 的密度函数。
][
  由题意知 $Z = abs(X-Y)$，则
  $
    f_Z (z) &= int_0^m 1 / m int_max(0,x-z)^min(m,x+z) 1 / m dif y dif x\
    &= 1 / m^2 int_0^z (min(m,x+z) - max(0,x-z)) dif x\
    &= (2(m-z) ) / m^2 quad (0<z<m)
  $
  故
  $
    f_Z (z) = cases(
      display((2 (m-z))/(m^2))\, quad& 0<z<m\,,
      0 \, quad & "其他".
    )
  $
]

#hw("习题三 B7")[
  设一系统由三个相互独立的、正常工作时间分别为 $X_1, X_2, X_3$ 的子系统组成（如图所示），且 $X_i (i = 1,2,3)$ 均服从参数为 $lambda$ 的指数分布，求该系统正常工作时间 $T$ 的分布函数 $F_T (t)$ 及密度函数 $f_T (t)$。
  #align(center, image("images/2024-11-07-13-32-03.png", width: 50%))
][
  由已知，$T=min(max(X_1,X_2), X_3)$，故：
  $
    F_T (x) &= 1 - (1 - F_(X_1) (x) F_(X_2) (x)) (1 - F_(X_3) (x))\
    &= 1 - (1 - (1 - e^(-x lambda))^2) e^(-x lambda) \
    &= 1 - 2 e^(-2 x lambda) + e^(-3 x lambda) quad (x > 0)
  $
  求导得：
  $
    f_T (x) = 4 lambda e^(-2 x lambda) - 3 lambda e^(-3 x lambda) quad (x > 0)
  $
  综上所述，
  $
    F_T (x) &= cases(
      1 - 2 e^(-2 x lambda) + e^(-3 x lambda)\, quad& x > 0\,,
      0\, quad & x <= 0\,
    )\
    f_T (
      x
    ) &= cases(
      4 lambda e^(-2 x lambda) - 3 lambda e^(-3 x lambda) \, quad & x > 0\,,
      0\, quad & x <=0 .,
    )
  $
]

#hw("习题三 B10")[
  设二维随机变量 $(X,Y)$ 的联合密度函数为
  $
    f(x,y) = cases(
      display((3-x-y)/3) \,quad &0 < x < 1\, 0 < y < 2\,,
      0 \,quad &"其他".
    )
  $
  记 $Z = X + Y$，求 $Z$ 的密度函数。
][
  由于 $Z=X+Y$，可知
  $
    f_Z (z) = int_(-oo)^(+oo) f(x,z-x) dif x
  $
  故：
  $
    f_Z (
      z
    ) &= cases(
      display(int_z^1 (3-x-(z-x))/3 dif x) \,quad& 0 <= z < 1\,,
      display(int_0^1 (3-x-(z-x))/3 dif x) \,quad& 1 <= z < 2\,,
      display(int_0^z (3-x-(z-x))/3 dif x) \,quad& 2 <= z < 3\,,
      0 \,quad& "其他"\,,
    ) \ &= cases(
      display((-t^2 + 3t)/3) \,quad& 0 <= z < 1\,,
      display((-t + 3)/3) \,quad& 1 <= z < 2\,,
      display((-t^2 + 6t - 9)/3) \,quad& 2 <= z < 3\,,
      0 \,quad& "其他".
    )
  $
]

#hw("习题三 B11")[
  已知市场上某种蔬菜的价格（单位：元/kg）$X ~ U(6,8)$（均匀分布），设某餐馆近期购买该种蔬菜的数量 $Y$ 为 8 kg 和 10 kg 的概率均为 0.5。

  *(1)* 求购买金额 $Z$ 不大于 60 元的概率 $p$；

  *(2)* 求购买金额 $Z$ 的分布函数 $F_Z (z)$。
][
  *(1)* 若购买数量为 $8$ kg，则单价满足 $X<=display(15/2)$ 即可，概率为 $display(3/4)$；若购买数量为 $10$ kg，则单价满足 $X<=6$ 才可以，概率为 $0$。综上可得，
  $
    p=1 / 2 times 3 / 4 + 1 / 2 times 0 = 3 / 8
  $

  *(2)* 设购买 8 kg 时花费的价格为 $Z_1$，购买 10 kg 时花费的价格为 $Z_2$，则两者的概率密度函数为：
  $
    f_(Z_1) (z) &= cases(
      display(1/16)\, quad& 48<= z <= 64\,,
      0 \, quad& "其他".
    ) \
    f_(Z_2) (z) &= cases(
      display(1/20)\, quad& 60 <= z <= 80\,,
      0 \, quad& "其他".
    )
  $
  两者分别乘以 $0.5$ 的系数并求和即可得到 $Z$ 的密度函数：
  $
    f_Z (
      z
    ) = cases(
      display(1/32) \, quad& 48 <= z < 60\,,
      display(9/160)\, quad& 60 <= z < 64\,,
      display(1/80) \, quad& 64 <= z < 80\,,
      0 \, quad& "其他".
    )
  $
  积分可得概率分布函数：
  $
    F_Z (
      z
    ) = cases(
      0 \,quad& z < 48\,,
      display(z/32 - 3/2) \,quad& 48<=z<60\,,
      display((9z)/160 - 3) \,quad& 60<=z<64\,,
      display(z/40 - 1) \,quad& 64<=z<80\,,
      1 \,quad& z >= 80.
    )
  $
]