#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Chapter 1. Mathematical Preliminaries",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "September 12, 2024",
)

== 习题一

#hw("A4")[
  设 $A,B,C$ 为 $3$ 个随机事件，请用事件的关系运算式表示：

  *(1)* $A,B,C$ 至少有 $2$ 个发生；

  *(2)* $A,B,C$ 最多有 $1$ 个发生；

  *(3)* $A,B,C$ 恰有 $1$ 个不发生；

  *(4)* $A,B,C$ 至少有 $1$ 个不发生。
][
  *(1)* $A B union A C union B C$.

  *(2)* $overline(A B union A C union B C)$.

  *(3)* $(A B union A C union B C) sect overline(A B C)$.

  *(4)* $overline(overline(A) sect overline(B) sect overline(C))$.
]

#hw("A5")[
  设 $A,B$ 为两个随机事件，且 $A,B$ 中至少有一个发生的概率为 $0.9$。

  *(1)* 若 $B$ 发生的同时 $A$ 不发生的概率为 $0.4$，求 $P(A)$。

  *(2)* 若 $P(B)=0.6$，求 $A$ 发生的同时 $B$ 不发生的概率。
][
  *(1)* 由已知，
  $
    P(A overline(B)) + P(overline(A) B) + P(A B) &= 0.9\
    P(overline(A) B) &= 0.4.
  $
  故
  $
    P(A) = P(A B) + P(A overline(B)) = 0.9-0.4 = 0.5.
  $
  *(2)* 由已知，
  $
    P(A overline(B)) + P(overline(A) B) + P(A B) &= 0.9\
    P(B) = P(A B) + P(overline(A) B) &= 0.6.
  $
  故
  $
    P(A overline(B)) = 0.9 - 0.6 = 0.3.
  $
]

#hw("A12")[
  一袋中有 $10$ 个球，其中 8 个红球，每次摸一球，共摸 $2$ 次，在有放回抽样与无放回抽样两种抽样方式下分别求：

  *(1)* “两次均为红球”的概率；

  *(2)* “恰有1个红球”的概率；

  *(3)* “第2次是红球”的概率。
][
  *(1)* 在有放回抽样中，“两次均为红球”的概率为
  $
    8 / 10 times 8 / 10 = 16 / 25.
  $
  在无放回抽样中，“两次均为红球”的概率为
  $
    8 / 10 times 7 / 9 = 28 / 45.
  $

  *(2)* 在有放回抽样中，“恰有1个红球”的概率为
  $
    8 / 10 times 2 / 10 times 2 = 8 / 25.
  $
  在无放回抽样中，“恰有1个红球”的概率为
  $
    8 / 10 times 2 / 9 + 2 / 10 times 8 / 9 = 16 / 45.
  $

  *(3)* 在有放回抽样中，“第2次是红球”的概率为
  $
    (8 / 10 + 2 / 10) times 8 / 10 = 4 / 5.
  $
  在无放回抽样中，“第2次是红球”的概率为
  $
    8 / 10 times 7 / 9 + 2 / 10 times 8 / 9 = 4 / 5.
  $
]

#hw("A15")[
  编号为 $1, 2, dots, 9$ 的 $9$ 辆车，随机地将它们编号为 $1, 2, dots, 9$ 的 $9$ 个车位中。当车编号与车位编号相同时，该车称为配对，求：

  *(1)* 1号车配对的概率；

  *(2)* 1号车配对而9号车不配对的概率。
][
  *(1)* 1号车配对的概率为
  $
    P(A) = 1 / 9.
  $

  *(2)* 1号车配对而9号车不配对的概率为
  $
    P(A overline(B)) = 1/9 times (1-1/8) = 7/72
  $
]

#hw("A16")[
  依次将 $5$ 个不同的球随机放入 $3$ 个不同的盒子中，盒子容量不限，求 $3$ 号盒子中恰好有两个球的概率。
][
  恰好有两个球放入3号盒子，其他三个球可以随意放入剩下的两个盒子，故概率为：
  $
  P(A)=(binom(5,2) times 2^3)/(3^5) = 80/243.
  $
]