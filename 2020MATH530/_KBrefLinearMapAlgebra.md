---
author: Exr0n
title: Algebraic operations on $\mathcal{L}(V, W)$
---

```{=org}
#+ TITLE: Algebraic Operations on Linear Maps
```
# Axler3.6 sum ($S+T$)

If $S, T \in \mathcal{L}(V, W)$ then the *sum* $S + T$ is defined by
$$ (S+T)(v) = Sv + Tv $$ $(S+T)$ is a linear map.

# Axler3.6 scalar product $\lambda T$

If $T \in \mathcal{L}(V, W)$ and $\lambda \in \mathbb{F}$ then the
*product* $(\lambda T)v = \lambda Tv$. $\lambda T$ is a linear map.

# Axler3.8 Product of Linear Maps

It\'s basically the composition of linear maps. Let $U, V, W$ be vector
spaces over $\mathbb F$ and $T, S$ be linear maps s.t.
$T \in \mathcal L(U, V)$ and $S \in \mathcal L(V, W)$. Then the
*product* $$ ST \in \mathcal L (U, W) : (ST)(u) = S(Tu) $$

\#aka $ST = S \circ T$

## careful

### Evaluate backwards

Like the composition of functions, remember to evaluate these guys
backwards. $(ST)(u) = S(Tu)$ meaning you evaluate $Tu$ first, then $S$
of that.

### $T$ maps into the domain of $S$

Otherwise it\'s not defined.

# Results

## Axler3.7 $\mathcal{L}(V, W)$ is a vector space over $\mathbb{F}$

## Axler3.9 Algebraic properties

### associativity

$$(T_1 T_2) T_3 = T_1 (T_2 T_3)$$ when it makes sense to multiply them.

1.  [DONE]{.done .DONE} \#question what about
    $(T_1 + T_2) + T_3 \stackrel{?}{=} T_1 + (T_2 + T_3)$?

    Yes, it\'s inhereted from vector space properties

### identity

$$TI = IT = T$$ where $T \in \mathcal L(U, V)$ and $I$ is the identity
of $U$ or $V$ respectively.

### distributive properties

$$(S_1 + S_2)T = S_1T + S_2T \text{  and  } T(S_1 + S_2) = TS_1 + TS_2$$
