#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #2",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "September 19, 2024",
)


== 第一章例题

#hw("P77")[
  (配对问题) 一个小班有 $n$ 个同学，编号为 $1,2,dots.c,n$ 号，中秋节前每人准备一件礼物，相应编号为 $1,2,dots.c,n$。将所有礼物集中放在一起，然后每个同学随机取一件，求没有人拿到自己礼物的概率。
][
  设 $A_i$ 表示第 $i$ 个人拿到自己的礼物，$A$ 表示至少有一人拿到了自己的礼物，则
  $
    P(A)&=P(A_1 union A_2 union dots.c union A_n)\
    &= sum_(i=1)^n P(A_i) - sum_(i<j) P(A_i A_j) \
    &quad quad + space.thin (-1)^(n-1) P(A_1 A_2 dots.c A_n)\
    &= sum_(i=1)^n (-1)^(i-1) binom(n,i) (n-i)! / n!\
    &= sum_(i=1)^n (-1)^(i-1) 1 / i!
  $
  故
  $
    P(overline(A))&= 1-P(A)\
    &= 1-1+1 / 2!-1 / 3!+dots.c+(-1)^n 1 / n!\
    &= sum_(i=0)^n (-1)^n / i!approx e^(-1)
  $
]
