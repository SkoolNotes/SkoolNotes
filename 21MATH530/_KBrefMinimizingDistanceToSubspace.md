---
title: Minimizing the Distance to a Subspace
---

```{=org}
#+CONTEXT: Linear Algebra
```
# Axler6.56 Minimizing the distance to a subspace

> Suppose $U$ is a finite-dimensional subspace of $V$, $v \in  V$, and
> $u \in  U$. Then, $$\begin{aligned}
> \lVert v - P_U v \rVert \leq  \lVert v - u \rVert
> \end{aligned}$$

Because we often end up having to find the minimal $v - u$ where
$u \in  U$, this result makes linear algebra applicable to numerous
real-world applications.

## Proof

$$\begin{aligned}
   \lVert v - P_U v \rVert ^2 &\leq  \lVert v - P_U v \rVert ^2 + \lVert P_U v - u \rVert ^2  &\quad& \text{ by } 0 \leq  \lVert P_U v - u \rVert ^2\\
   &= \lVert (v - P_U v) + (P_U v - u) \rVert ^2 &\quad& \text{ by the Pythagorean Theorem }\\
   &= \lVert v - u \rVert ^2
   \end{aligned}$$

Inequality is an equality only when $u = P_U v$.

## An example

First define an inner product that will be our cost function. In this
case, they use the integral of $f(x) g(x)$ on the range
$[ - \pi , \pi ]$. Then, orthonormalize a basis of the polynomials up to
degree 6 (using the Gram-Schmidt procedure) and take the orthonormal
projection using the same inner product. This ends up with roughly
$$\begin{aligned}
   u(x) = 0.987862x - 0.155271x^3 + 0.00564312x^5
   \end{aligned}$$ Which ends up being a better approximation for the
range than the corresponding 5-th degree Taylor polynomial.
