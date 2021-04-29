---
title: Evaluating definite integrals
---

# $\int_{1}^{2} \frac{e^{\frac{1}{x}}}{x^2} dx$

$$\begin{aligned}
  \int - e^{u} du &= - e^u +C\\
  &= -e^{\frac{1}{2}} + e^{\frac{1}{1}}\\
  &= e-e^{\frac{1}{2}}\\
  \end{aligned}$$

# $\int_{0}^{1} r e^{\frac{r}{2}} dr$

$$\begin{aligned}
  \int_{0}^{1} r e^{\frac{r}{2}} dx &\implies r 2e^{\frac{r}{2}} - \int 2e^{\frac{r}{2}}dr\\
  &=  2r e^{\frac{r}{2}} - \int 2 e^{\frac{r}{2}}dr\\
  &=  2r e^{\frac{r}{2}} - 4 e^{\frac{r}{2}}\\
  &= 2r e^{\frac{r}{2}} - 4 e^{\frac{r}{2}}\\
  &\implies 2e^{\frac{1}{2}} - 4e^{\frac{1}{2}} - (- 4)\\
  &= 4 - 2e^{\frac{1}{2}}
  \end{aligned}$$

# [TODO]{.todo .TODO} $\int_{4}^{9} \frac{ \ln  y}{\sqrt{y}} dy$ {#int_49-frac-ln-ysqrty-dy}

$$\begin{aligned}
  \int \frac{\ln y}{\sqrt{y}} dx &= 2 \ln y \sqrt{y}- \int 2 \frac{1}{y} \sqrt{y} dx
  2 \sqrt{y}(\ln  y - 2)
  \end{aligned}$$

# [TODO]{.todo .TODO} $\int_{0}^{\sqrt{\pi}} \cos \sqrt{x} dx$ {#int_0sqrtpi-cos-sqrtx-dx}

$$\begin{aligned}
  \int_{0}^{\sqrt{\pi}} \cos \sqrt{x} dx &= x \cos \sqrt{x} +\int x \frac{1}{2\sqrt{x}} \sin \sqrt{x} dx\\
  &= x \cos \sqrt{x} +\int \frac{\sqrt{x}}{2} \sin \sqrt{x} dx\\
  &= x \cos \sqrt{x} +\frac{\sqrt{x}}{2} \int \sin \sqrt{x} dx\\
  &= x \cos \sqrt{x} +\frac{\sqrt{x}}{2} \left( x \sin \sqrt{x} - \int \frac{\sqrt{x}}{2} \cos \sqrt{x} dx \right) \\
  &= x \cos \sqrt{x} +\frac{\sqrt{x}}{2} \left( x \sin \sqrt{x} - \frac{\sqrt{x}}{2} \int \cos \sqrt{x} dx \right) \\
  &= x \cos \sqrt{x} +\frac{\sqrt{x}}{2} x \sin \sqrt{x} - \frac{x}{4} \int \cos \sqrt{x} dx \\
  \frac{x+4}{4}\int \cos  \sqrt{x} dx &= x \cos  \sqrt{x} + \frac{\sqrt{x}}{2} x \sin  \sqrt{x}\\
  \int \cos  \sqrt{x} dx &= \frac{4x \cos  \sqrt{x} + 2x\sqrt{x} \sin  \sqrt{x}}{x+4}\\
  \end{aligned}$$

Let $u = \sqrt{x}$, $du = \frac{1}{2 \sqrt{x}} dx$, $dx = 2 u du$
$$\begin{aligned}
  \int_{0}^{\sqrt{\pi}} \cos \sqrt{x} dx &= 2\int u \cos u  du\\
  &= 2u \sin  u - 2\int \sin u du\\
  \end{aligned}$$

# $\int_{1}^{e} \sin  \ln  x dx$

$$\begin{aligned}
  \int_{1}^{e} \sin  \ln  x dx &= x \sin  \ln  x - \int x \frac{1}{x} \cos \ln x dx\\
  &= x \sin  \ln  x - \int \cos \ln  x dx\\
  &= x \sin  \ln  x -\left( x \cos  \ln  x + \int \cancel{x \frac{1}{x}} \sin  \ln  x dx\right)\\
  &= x \sin  \ln  x - x \cos  \ln  x -\int \sin \ln x dx\\
  2\int \sin  \ln  x dx  &= x \sin  \ln  x - x \cos  \ln  x\\
 \int \sin  \ln  x dx &= \frac{1}{2}x (\sin  \ln  x - \cos  \ln  x)\\
 \implies &\ \ \ \ \frac{1}{2}e (\sin 1 - \cos  1) - \frac{1}{2} ( \sin  0 - \cos  0)\\
 &= \frac{e}{2} ( \sin  1 - \cos  1 ) + \frac{1}{2}
  \end{aligned}$$