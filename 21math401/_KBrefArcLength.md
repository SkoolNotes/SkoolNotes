---
title: Arc Length
---

# Formula

$$\begin{aligned}
   \int_{a}^{b} \sqrt{1+ f'^2(x)} dx
  \end{aligned}$$

# Derivation

Let $S$ equal the total length of the curve.

Start with the pythagorean theorem: for any differentiable function,
$$ S = \sum_{a}^{b} dS $$ where $dS$ can be calculated using the
pythagorean theorem:

$$\begin{aligned}
  dS = \sqrt{\Delta y ^2 + \Delta x ^2 }
  \end{aligned}$$

We can simplify this by dividing $dS$ by $\Delta x$

$$\begin{aligned}
  \frac{dS}{\Delta x} &=  \lim_{\Delta x \to  0} \sqrt{\frac{\Delta y^2}{\Delta x^2} + \frac{\Delta x^2}{\Delta x^2}}\\
  &=  \lim_{\Delta x \to  0} \sqrt{\frac{\Delta y^2}{\Delta x^2} + 1}\\
  &= \sqrt{f'^2(x) + 1}
  \end{aligned}$$

Now, to find $dS$ again, we just have to multiply by $dx$

$$\begin{aligned}
  dS = \frac{dS}{\Delta x}dx = \sqrt{1+f'^2(x)}dx
  \end{aligned}$$
