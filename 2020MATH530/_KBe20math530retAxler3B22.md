---
author: Exr0n
title: Axler 3.B Exercise 22
---

# Problem

> Suppose $U$ and $V$ are finite-dimensional vector spaces and
> $S \in \mathcal L(V ,w)$ and $T \in \mathcal L(U, V)$. Prove that
> $$\text{dim null }ST \leq \text{dim null }S + \text{dim null }T.$$

# Proof

All vectors $v \in \text{null }ST$ must have been nulled by $T$ or $S$,
and therefore either it must be in $\text{null T}$ or $Tv$ in
$\text{range }T \cap \text{null }S$. Notationally,
$$\text{null }ST = \text{null }T \cup \{v : Tv \in \left(\text{range }T \cap \text{null }S\right)\}$$
Note that because this union is equal to $\text{null }ST$, it is a
vector space. Because no vector can be in both $\text{null }T$ and
$\{v : Tv \in \left(\text{range }T \cap \text{null }S\right)\}$, the
dimension of the union is
$$\text{dim null }ST = \text{dim null }T + \text{dim }\left(\{v : Tv \in \left(\text{range }T \cap \text{null }S\right)\}\right)$$
Every value of $w$ that satisfies
$w \in \left(\text{range }T \cap \text{null }S\right)$ will the output
of $Tv$ for some $v$, because the range is defined as all the outputs of
$Tv$.
$$\text{dim null }ST = \text{dim null }T + \text{dim }\left(\text{range }T \cap \text{null }S\right)$$
An intersection can only make the dimension of a set smaller, so
$\text{dim }\left(\text{range }T \cap \text{null }S\right) \leq \text{dim null }S$
and $$\text{dim range }ST \leq \text{dim null }S, \text{dim null }T$$
