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

  *(2)* $abs(X)$ 是由 $X$ 所确定的，当 $X$ 取不同的值时，$abs(X)$ 的分布范围都不一样，分布显然不一样。所以 $X$ 与 $abs(X)$ 显然不是相互独立的。
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
    E(X) = 0, quad D(X) = 1,\
    E(xi) = 0, quad D(xi) = 1,\
  $
  $
    E(X xi) &= E(X^2 Y) = p E(X^2) +(1-p) E(-X^2) \
    &= 2p - 1,\
  $
  故相关系数为：
  $
    rho_(X xi) = ("Cov"(X, xi)) / (sqrt(D(X) D(xi))) = 2p - 1.
  $
  故当 $p=1/2$ 时，$X$ 与 $xi$ 不相关；当 $p>1/2$ 时，$X$ 与 $xi$ 正相关；当 $p<1/2$ 时，$X$ 与 $xi$ 负相关。

  而由于 $xi = X cdot Y$ 且 $0<p<1$，显然 $X$ 与 $xi$ 是不独立的。

  #text_red[
    要求：不独立要具体说明。
  ]

  订正：这里因为 $X$ 与 $Y$ 相互独立，所以当 $X$ 取不同的值时，$xi$ 的概率分布会不一样，比如 $X=0$ 时，$xi$ 恒为 0，而当 $X=1$ 时，$xi$ 的概率分布同 $Y$ 的概率分布。所以 $X$ 与 $xi$ 不独立。
]

#hw([习题四 B33])[
  已知三维正态变量 $bold(X) = (X_1, X_2, X_3)^upright(T) sim N(bold(a), bold(B))$，其中
  $
    bold(a) = mat(0,0,1)^T, quad bold(B) = mat(
      1,2,-1;
      2,16,0;
      -1,0,4
    )
  $
  *(1)* 写出 $bold(X)$ 的每个分量的分布；

  *(2)* 判别 $X_1, X_2, X_3$ 的相关性与独立性；

  *(3)* 若 $Y_1 = X_1 - X_2,space Y_2 = X_3 - X_1$，求 $bold(Y) = (Y_1, Y_2)^upright(T)$ 的分布。
][
  *(1)* 根据多元正态分布的性质：
  $
    bold(B) = mat(
      sigma_1^2, sigma_1 sigma_2, sigma_1 sigma_3;
      sigma_2 sigma_1, sigma_2^2, sigma_2 sigma_3;
      sigma_3 sigma_1, sigma_3 sigma_2, sigma_3^2
    ).
  $
  所以 $X_1 sim N(0, 1)$，$X_2 sim N(0, 16)$，$X_3 sim N(1, 4)$。

  *(2)* $X_1$ 与 $X_2$ 相关且不独立；$X_1$ 与 $X_3$ 相关且不独立；$X_2$ 与 $X_3$ 不相关且独立。

  *(3)* 设 $bold(Y) = bold(C) bold(X)$，可知：
  $
    bold(C) = mat(
      1, -1, 0;
      -1, 0, 1;
    ).
  $
  根据多元正态分布的性质知：$bold(Y) sim N(bold(C) bold(a), bold(C) bold(B) bold(C)^upright(T))$。故，只需计算：
  $
    bold(a)' = bold(C) bold(a) = mat(0, 1)^upright(T)\
    bold(B)' = bold(C) bold(B) bold(C)^upright(T) = mat(
      13, 0;
      0, 7
    )
  $
]

#hw([习题四 B34])[
  设某一煤矿一天的产煤量 $X$ (以 $10^4$ t 计) 服从正态分布 $N(1.5, 0.1^2)$。设每天产量相互独立，一个月按 30 天计，求一个月总产量超过 $46 times 10^4$ t 的概率。
][
  30 天产煤量的和 $S$ 服从正态分布 $N(1.5 times 30, 0.1^2 times 30)$，即 $S sim N(45, 0.3)$，则：
  $
    P{S>46} = 1 - Phi(sqrt(1/0.3)) = 1 - Phi(sqrt(10/3))
  $
]

#hw([习题五 B3])[
  设随机变量 $X_i$ 的密度函数为
  $
    f_i ( x ) = cases(
    display((i abs(x)^(i-1))/2)\,& quad |x| <= 1\,,
    0\,& quad "其他"\,,
  ) quad i = 1,2,dots,n.
  $
  且 $X_1, X_2, dots, X_n$ 相互独立。令 $Y_n = X_1 X_2 dots X_n$，用切比雪夫不等式求使 $display(P{|Y_n| >= 1/2} <= 1/9)$ 成立的最小的 $n$。
][
  根据切比雪夫不等式（原点矩的形式而不是方差的形式），有
  $
    P{|Y_n| >= 1 / 2} <= 4 E(|Y_n|^2) = 4 E(Y_n^2)
  $
  考虑先求 $E(Y_n^2)$，有：
  $
    E(X_i^2) &= int_(-1)^1 x^2 (i abs(x)^(i-1)) / 2 dif x
    = int_(-1)^1 (i abs(x)^(i+1)) / 2 dif x\
    &= int_(-1)^0 (i (-x)^(i+1)) / 2 (- dif(-x)) + int_0^1 (i x^(i+1)) / 2 dif x \
    &= 2 int_0^1 (i x^(i+1)) / 2 dif x
    = int_0^1 i x^(i+1) dif x \
    &= lr(((i x^(i+2))/(i+2))|)_0^1 = i / (i+2)
  $
  $
    ==> E(Y_n^2) = product_(i=1)^n i / (i+2) = 2 / ((n+1)(n+2))
  $

  要满足题意，则有
  $
    4 cdot 2 / ((n+1)(n+2)) <= 1 / 9 ==> (n+1)(n+2) >= 72 = 8 times 9
  $
  解得 $n>= 7$，即使得原不等式成立的最小的 $n$ 为 $n=7$。

  #text_red[
    本题的要求可能是使用
    $
      P(|Y-E(Y)| < epsilon) >= 1 - D(Y) / epsilon^2
    $
    这一切比雪夫不等式，而不是马尔科夫不等式在 $k=2$ 时的特殊情况，不过这题可以证明 $E(Y)=0$，所以两者在形式上应该是一样的。
  ]
]

#hw([习题五 B4])[
  设随机变量序列 ${X_n, space n>=1}$ 独立同分布，都服从 $U(0,a)$，其中 $a>0$。令 $X_((n)) = display(max_(1<=i<=n) X_i)$，证明：$X_((n)) arrow.long^(P) a$，$n arrow +infinity$。
][
  对于其中的单个变量，有
  $
    P{X_i<=x} = cases(
      1\, quad x<0,
      display(x/a)\, quad 0<=x<=a,
      0\, quad x>a
    )
  $
  考察：若令 $X_((n)) <= x$，即对于每个 $i = 1,2,cdots,n$ 都满足 $X_i <= x$，而由于这些随机变量是独立同分布的。故，当 $0<=x<=a$ 时，有：
  $
    P{X_((n)) <= x} = (P{X_i <= x})^n = (x / a)^n
  $
  当 $x=a$ 时，$P{X_((n)) <= x} = 1$ 无论 $n$ 取何值，而对于 $0<=x<a$：
  $
    lim_(n->+oo) P{X_((n)) <= x} = lim_(n->+oo) (x / a)^n = 0
  $
  故可以认为 $X_((n)) arrow.long^(P) a$。

  #text_red[
    最好是根据定义证明，即：
    $
      X_((n)) arrow.long^(P) a <==> lim_(n->+oo) P{abs(X_((n)) - a)>epsilon} = 0
    $
    其中 $P{X_((n)) > a + epsilon} = 0$ 显然，而另一半
    $
      lim_(n->+oo) P{X_((n)) < a - epsilon} = 0)
    $ 
    就如同上面的过程可以证得，这样证明更严谨一些。
  ]
]
