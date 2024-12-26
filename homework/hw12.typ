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
  
][]

#hw([习题七 A7])[][]

#hw([习题七 A8])[][]

#hw([习题七 A9])[][]

#hw([习题七 B3])[][]

#hw([习题七 B6])[][]
