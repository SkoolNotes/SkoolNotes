---
title: Axler 7.A exercise 3
---

```{=org}
#+CONTEXT: Math530
```
```{=org}
#+ignore_tags: noexport
```
> Suppose $T \in  \mathcal{L}(V)$ and $U$ is a subspace of $V$. Prove
> that $U$ is invariant under $T$ iff $U^\bot$ is invariant under $T^*$.

For all pairs $u \in  U$ and $w \in  U^\perp$,

$$\begin{aligned}
 \langle Tu, w \rangle = 0\\
 \langle u, T^*w \rangle = 0
\end{aligned}$$

This implies that the range of $T^*\BigR|_{U^\perp} \subseteq U^\perp$,
aka that $T^*$ is invariant under $U^\perp$

This implies both directions, since $U = U^{\perp ^\perp }$ and
$T = (T^*)^*$.
