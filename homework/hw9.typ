#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #9",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "November 14, 2024",
)

#hw([习题四 B24])[
  （接第 B20 题）

  *(1)* 求 $X$ 与 $abs(X)$ 的相关系数，并判断两者是否相关；

  *(2)* 判断 $X$ 与 $abs(X)$ 是否相互独立。
][
  *(1)* 由 B20 得：
  $
    E(X) &= 0\
    E(abs(X)) &= 1
  $
  先计算协方差：
  $
    E(X abs(X)) = int_(-oo)^(oo) x abs(x) cdot 1 / 2 e^(-abs(x)) dif x=0\
    "Cov"(X, abs(X)) = E(X abs(X)) - E(X) E(abs(X)) = 0
  $
  说明相关系数为：
  $
    rho_(X abs(X)) = ("Cov"(X, abs(X))) / (sqrt(D(X)cdot D(abs(X)))) = 0.
  $
  说明 $X$ 与 $abs(X)$ 不相关。

  *(2)* $X$ 与 $abs(X)$ 显然不是相互独立的。
]

#hw([习题四 B28])[
  设随机变量 $X_1, X_2, dots, X_n$ 均服从标准正态分布并且相互独立。记 $display(S_k = sum_(i=1)^k X_i)$，$display(T_k = sum_(j=n_0+1)^(n_0+k) X_j)$，其中 $1 <= n_0 < k < n_0 + k <= n$，求 $S_k$ 与 $T_k$ 的相关系数。
][
  对于单个随机变量有 $E(X_i) = 0$，$D(X_i) = 1$，故
  $
    E(X_i^2) = D(X_i) + E^2(X_i) = 1.
  $
  考虑：
  $
    E(S_k) &= E(sum_(i=1)^k X_i) = sum_(i=1)^k E(X_i) = 0,\
    E(T_k) &= E(sum_(j=n_0+1)^(n_0+k) X_j) = sum_(j=n_0+1)^(n_0+k) E(X_j) = 0,\
  $
  $
    E(S_k T_k) &= E((sum_(i=1)^k X_i) (sum_(j=n_0 + 1)^(n_0 + k) X_j))\
    &= sum_(i=n_0+1)^k E(X_i^2) + sum_(i=1)^k sum_(j=max{n_0,k}+1)^(n_0+k) E(X_i X_j) \
    &= k - n_0;
  $
  再考察：
  $
    E(S_k^2) = sum_(i=1)^k E(X_i^2) + sum_(i=1)^k sum_(j=1\ i!=j)^k E(X_i X_j) = k,
  $
  同理可得
  $
    E(T_k^2) = k,
  $
  故他们的方差为：
  $
    D(S_k) = D(T_k) = k.
  $
  接下来，计算协方差
  $
    "Cov"(S_k, T_k) = E(S_k T_k) - E(S_k) E(T_k) = k - n_0
  $
  可得相关系数为：
  $
    rho_(S_k T_k) = ("Cov"(S_k, T_k)) / (sqrt(D(S_k) D(T_k))) = (k - n_0) / sqrt(k^2) = (k - n_0) / k.
  $
]

#hw([习题四 B29])[
  设 $X sim N(0,1)$，$Y$ 的可能取值为 $pm 1$，且 $P{Y=1} = p space (0 < p < 1)$。设 $X$ 与 $Y$ 相互独立，记 $xi = X cdot Y$。

  *(1)* 证明：$xi sim N(0,1)$；

  *(2)* 计算 $rho_(X xi)$，并判断 $X$ 与 $xi$ 的相关性和独立性。
][
  *(1)* 设 $X$ 的概率分布函数为 $F(X)$，考虑到 $X$ 服从标准正态分布，根据函数图像可以得到：
  $
    F(X) = F(-X).
  $
  根据概率分布函数的性质，有：
  $
    F(xi) = p F(X cdot 1) + (1-p) F(X cdot (-1)) = F(X).
  $
  故 $X$ 和 $xi$ 同分布，即 $xi sim N(0,1)$。

  *(2)* 先考察其相关性：
  $
    E(X) = 0, quad D(X) = 1,
    E(xi)
  $
]

#hw([习题四 B33])[
  已知三维正态变量 $bold(X) = (X_1, X_2, X_3)^upright(T) sim N(bold(a), bold(B))$，其中
  $
    a = (0,0,1)^T, quad bold(B) = mat(
      1,2,-1;
      2,16,0;
      -1,0,4
    )
  $
  *(1)* 写出 $bold(X)$ 的每个分量的分布；

  *(2)* 判别 $X_1, X_2, X_3$ 的相关性与独立性；

  *(3)* 若 $Y_1 = X_1 - X_2,space Y_2 = X_3 - X_1$，求 $bold(Y) = (Y_1, Y_2)^upright(T)$ 的分布。
][]

#hw([习题四 B34])[
  设某一煤矿一天的产煤量 $X$ (以 $10^4$ t 计) 服从正态分布 $N(1.5, 0.1^2)$。设每天产量相互独立，一个月按 30 天计，求一个月总产量超过 $46 times 10^4$ t 的概率。
][]

#hw([习题五 B3])[
  设随机变量 $X_i$ 的密度函数为
  $
    f_i (
      x
    ) = cases(
    display((i abs(x)^(i-1))/2)\,& quad |x| <= 1\,,
    0\,& quad "其他"\,,
  ) quad i = 1,2,dots,n.
  $
  且 $X_1, X_2, dots, X_n$ 相互独立。令 $Y_n = X_1 X_2 dots X_n$，用切比雪夫不等式求使 $display(P{|Y_n| >= 1/2} <= 1/9)$ 成立的最小的 $n$。
][]

#hw([习题五 B4])[
  设随机变量序列 ${X_n, space n>=1}$ 独立同分布，都服从 $U(0,a)$，其中 $a>0$。令 $X_((n)) = display(max_(1<=i<=n) X_i)$，证明：$X_((n)) arrow.long^(P) a$，$n arrow +infinity$。
][]
