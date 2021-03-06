---
author: Exr0n
---

# linear approximations

## cube root

### approximation

$$ (1+x)^{\frac{1}{3}} \to \frac{1}{3} (1+x)^{\frac{-2}{3}} $$ at
$x = 0$ is $$ \frac{1}{3} (1+0) ^ {\text{...}} = \frac{1}{3} $$ so the
linear approximation is $$ y \approx m(x-0)+f(0) = \frac{1}{3}x+1 $$

### estimations

  value   estimate
  ------- ----------
  0.05    1.016666
  -0.25   0.916666

These will be overestimates because the graph is concave down in this
reigon.

## sin(x)

### approximation

$$ y \approx \frac{d}{dx} \sin x \Bigr|_0 (x-0) + \sin 0 = x $$

### estimates

  value   estimate
  ------- ----------
  -0.1    -0.1
  0.1     0.1

The first estimate will be an underestimate because $\sin x$ is concave
up in that reigon. The opposite is true for the second estimate.

## unknown function (only some points known

### approximation

$$ y \approx \frac{d}{dx} f(x) \Bigr|_c (x-c) + f(c) $$ plugging in
$c = 1$, $$ y \approx 5(x-1)-4 $$

### estimations

  value   estimate
  ------- ----------
  1.2     -3

This will be an underestimate because the second derivative is positive
and the graph is thus concave up.

# differentials

For a function $y = f(x)$, $dy$ and $dx$ are diferentials and the
relationship is
$dy = f'(x) dx = \frac{L(a+\Delta a)-L(a)}{\cancel{dx}} \cancel{dx}$.

For a function written $f(x) = \text{(something)}$, the differentials
are $df$ and $dx$ and the relationship is the same: $df = f'(x) dx$.

## cube error

### differential

$$\begin{split}df &= f'(x) dx\\ &= 3x^2 dx\end{split}$$

### volume error

If I understand the use of differentials corretly, then $x$ is the
measured value ($2$) and $dx$ is the uncertainty (delta x), or
$0.2 \text{ft}$. Then, the change in the volume (change in fuction or
$df$) would be $3(2)^2 (0.2) = 2.4$

### max error for some $\epsilon$

$$
    \begin{aligned}
    df &\approx 3x^2 dx\\
    dx &\approx \frac{df}{3x^2}\\
       &\approx \frac{1}{3(2)^2}\\
       &\approx \frac{1}{12} \text{ ft} = 1 \text{in}
    \end{aligned}
    $$

## sphere measuring

$$
   \begin{aligned}
   f(r) &= \frac{4}{3}\pi r^3\\
   \frac{df}{dr} &= 4\pi r^2\\
   df &= 4\pi r^2 (dr)\\
   &= 4\pi 21^2 (0.05) = \pm88.4 \pi \text{ cm}^3
   \end{aligned}
   $$
