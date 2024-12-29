#import "../template.typ": *

#show: project.with(
  course: "PT & MS",
  course_fullname: "Probability Theory & Mathematical Statistics",
  course_code: "MATH2432F",
  title: "Homework #13",
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      id: "3230104585",
    ),
  ),
  semester: "Autumn-Winter 2024",
  date: "December 12, 2024",
)

#hw([习题七 A11])[
  设螺杆直径 $X$ 服从正态分布 $N(mu, 0.3^2)$。

  *(1)* 从总体中抽取样本容量为 5 的样本，测得直径：22.3、21.5、21.8、21.4、22.1，试在 95% 的置信水平下求该机器所生产的螺杆平均直径 $mu$ 的置信区间。

  *(2)* 若要使螺杆的平均直径 $mu$ 的置信水平为 95% 的置信区间长度不超过 0.2，问样本容量 $n$ 至少应取多大？
][
  *(1)* 已知 $sigma = 0.3$，
  $
    overline(X) = 1 / 5(22.3 + 21.5 + 21.8 + 21.4 + 22.1) = 21.82;
  $
  要求 $1 - alpha = 0.95 ==> alpha = 0.05$，查表得：
  $
    Z_(alpha "/" 2) = 1.96\
    mu in [overline(X) - Z_(alpha "/" 2) cdot sigma / sqrt(n), overline(X) + Z_(alpha "/" 2) cdot sigma / sqrt(n)] = [21.557, 22.083].
  $
  *(2)* 置信区间长度为：
  $
    2 Z_(alpha "/" 2) cdot sigma / sqrt(n) <= 0.2
    ==> n >= 34.57;
  $
  故样本容量 $n$ 至少为 $35$。
]

#hw([习题七 A12])[
  某厂生产的灯泡寿命 $X$ (单位：h) 服从正态分布 $N(mu, sigma^2)$，$mu, sigma^2$ 未知，从已生产的一大批灯泡中采用无放回抽样方式抽取 15 只，测得其寿命如下：

  4040 2990 2964 3245 3026 3633 3387 4136 3595 3194 3714 2831 3845 3410 3004

  *(1)* 求 $mu$ 的置信水平为 95% 的置信区间；

  *(2)* 求 $mu$ 的置信水平为 95% 的单侧置信下限。
][
  *(1)* #v(-2 * par-margin)
  $
    overline(X) &= 1 / n sum_(i=1)^n X_i = 3400.9333\
    S &= sqrt(1/n sum_(i=1)^n (X_i - overline(X))^2) = 412.7951\
  $
  要求 $1-alpha = 0.95 ==> alpha = 0.05$，查表得：
  $
    t_(alpha"/"2, n-1) = 2.1448\
  $
  $
    ==> mu &in [overline(X) - t_(alpha "/" 2, n-1) S / sqrt(n), overline(X) + t_(alpha "/" 2, n-1) S / sqrt(n)]\
    &= [3172.3336, 3629.5330]
  $

  *(2)* 查表得：
  $
    t_(alpha, n-1) = 1.7613
  $
  故单侧置信下限为：
  $
    hat(theta)_L = overline(X) - t_(alpha,n-1) cdot S / sqrt(n) = 3213.2083
  $
]

#hw([习题七 A14])[
  为比较甲、乙两种肥料对产量的影响，研究者选择了 10 块田地，将每块田地分成大小相同的两块，随机选择一块用甲肥料，另一块用乙肥料，其他条件保持相同，得到的产量（单位：kg）数据如下：

  #table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: center,
    [甲], [109], [98], [97], [100], [104], [102], [94], [99], [103], [108],
    [乙], [107], [105], [110], [118], [109], [113], [111], [95], [112], [101],
  )

  假设甲、乙两种肥料的产量差服从正态分布，试在 95% 的置信水平下推断甲、乙两种肥料的平均产量差值的范围。
][
  $
    D &= {2, -7, -13, -18, -5, -11, -17, 4, -9, 7}\
    overline(D) &= -6.7 quad S = 8.6801
  $
  查表得：
  $
    t_(alpha,n-1) = 2.2622;
  $
  置信区间为：
  $
    mu_D &in [overline(X) - t_(alpha "/" 2, n-1) S / sqrt(n), overline(X) + t_(alpha "/" 2, n-1) S / sqrt(n)]\
    &= [-12.9095, -0.4905]
  $
]

#hw([习题七 A16])[
  已知某种电子管使用寿命（单位：h）服从正态分布 $N(mu, sigma^2)$，$mu, sigma^2$ 未知，从一批电子管中随机抽取 16 只，检测结果得样本标准差为 300 h。在置信水平 95% 下求：

  *(1)* $sigma$ 的置信区间；

  *(2)* $sigma$ 的单侧置信上限。
][
  *(1)* 查表得：
  $
    chi_(alpha "/" 2) = 6.262,quad
    chi_(1 - alpha "/" 2) = 27.488;
  $
  故：
  $
    sigma &in [sqrt(((n-1)S^2)/(chi^2_(1-alpha "/" 2))), sqrt(((n-1)S^2)/(chi^2_(alpha "/" 2)))]\
    &= [221.613, 464.312].\
  $

  *(2)* 查表得：
  $
    chi^2_(alpha) = 7.261;\
  $
  故：
  $
    hat(sigma)_U = sqrt(((n-1)S^2)/(chi_alpha^2))
    = 431.190.
  $
]

#hw([习题七 A18])[
  某厂的一台瓶装灌装机，每瓶的净重 $X$ 服从正态分布 $N(mu_1, sigma_1^2)$，从中随机抽出 16 瓶，称得其净重的平均值为 456.64 g，标准差为 12.8 g；现引进了一台新灌装机，其每瓶的净重 $Y$ 服从正态分布 $N(mu_2, sigma_2^2)$，从中随机抽出 12 瓶，称得其净重的平均值为 451.34 g，标准差为 11.3 g。

  *(1)* 假设 $sigma_1 = 13, sigma_2 = 12$，求 $mu_1 - mu_2$ 的置信水平为 95% 的置信区间；

  *(2)* 假设 $sigma_1 = sigma_2$ 未知，求 $mu_1 - mu_2$ 的置信水平为 95% 的置信区间；

  *(3)* 求 $display(sigma_1^2/sigma_2^2)$ 的置信水平为 95% 的置信区间。
][
  *(1)* 依题意，
  $
    overline(X_1) = 456.64, quad S_1 = 12.8,\
    overline(X_2) = 451.34, quad S_2 = 11.3;
  $
  要求 $1-alpha=  0.95 ==> alpha = 0.05$，查表得：
  $
    Z_(alpha "/" 2) = 1.96
  $
  $
    mu_1 - mu_2 &in [(overline(X_1) - overline(X_2)) - Z_(alpha "/" 2) sqrt(sigma_1^2/n_1 + sigma_2^2/n_2),\ &quad quad (overline(X_1) + overline(X_2)) + Z_(alpha "/" 2) sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)]\
    &= [-4.267, 14.867].
  $
  *(2)* 查表得：
  $
    t_(alpha "/" 2, n_1 + n_2 - 2) = 2.0585
  $
  解得：
  $
    mu_1 - mu_2 in [-4.267, 14.867]
  $
  *(3)* 查表得：
  $
    F_(1 - alpha"/"2 , n_1 - 1, n_2 - 1) = 3.3299,\
    F_(alpha"/"2 , n_1 - 1, n_2 - 1) = 0.3325;\
  $
  计算得：
  $
   sigma_1^2/sigma_2^2 
   &in [
    S_1^2/S_2^2 1/F_(1 - alpha"/"2 , n_1 - 1, n_2 - 1),
    S_1^2/S_2^2 F_(alpha"/"2 , n_1 - 1, n_2 - 1)
   ] \
   &= [0.3853, 3.8590].
  $
]
