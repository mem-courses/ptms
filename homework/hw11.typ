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
    ==> overline(X) - X_1 sim N(0 - 0 , display(1/16 + 1)) = N(0, 17/16)
  $
]

#hw([习题六 B2])[
  设总体 $X sim N(mu, sigma^2)$，$X_1, X_2, dots.c, X_9$ 是来自总体 $X$ 的简单随机样本，$overline(X)$ 是样本均值，$S^2$ 是样本方差，写出下列抽样分布：

][]

#hw([习题六 B5])[][]

#hw([习题六 B7])[][]

#hw([习题六 B10])[][]

#hw([习题七 A3 (只算矩估计)])[][]
