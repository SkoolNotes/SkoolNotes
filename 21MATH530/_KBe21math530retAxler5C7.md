---
author: Yoav, Albert
title: Axler 5.C exercise 7
---

# Export

<https://www.overleaf.com/project/606b2fa8be363f9005d8ce03>

# Exercise 7

> Suppose $T \in  \mathcal{L} (V)$ has a diagonal matrix $A$ with
> respect to some basis of $V$ and that $\lambda \in \mathbb{F}$. Prove
> that $\lambda$ appears on the diagonal of $A$ precisely
> $\odim E(\lambda, T)$ times.

# Proof

We will show that for each eigenvalue $\lambda$, there are at least
$E(\lambda, T)$ occurrences of that eigenvalue and at most
$E(\lambda, T)$ occurrences.

Suppose first that $\dim E(\lambda , T) = m$ and $v_1, \ldots, v_m$ is a
basis of $E(\lambda , T)$. In the diagonal matrix, the column
corresponding to each of the $m$ eigenvectors is comprised of the
coefficients of $$\begin{aligned}
  Tv_j = \lambda v_j
  \end{aligned}$$ The coefficients of an eigenvector linear combination
are just the eigenvalue, so the associated eigenvalue ($\lambda$)
appears once for each eigenvector. Thus, $\lambda$ appears on the
diagonal at least $m$ times.

Suppose then that $\lambda$ is on the diagonal $m$ times. Each of those
occurrences corresponds to where the diagonal matrix sends a (linearly
independent) basis eigenvector, which implies that the basis of $V$ has
at least $m$ eigenvectors corresponding to $\lambda$. These $m$
eigenvectors can be extended to a basis of $E(\lambda, T)$, implying
that $\dim E(\lambda, T) \geq m$.
