---
author: Exr0n
title: Length of spanning list is greater equal to length of linearly
  independent list
---

# Lemma

> The length of a linearly indpendent list is less than or equal to the
> length of a spanning list over some vector space $V$.

# Intermediate Result: Span of a linearly independent extension of a linearly independent list has more elements than the span of the original list.

## Lemma

Given a linearly independent list $v = v_1, \ldots, v_k$ where each
vector $v_1, \ldots, v_k \in V$ and another vector $v_{k+1}$ which is
linearly independent with $v$, show that
$$\text{span}\left(v_1, \ldots, v_k, v_{k+1}\right)$$ contains elements
that are not in $$\text{span}\left(v_1, \ldots, v_k\right)$$ TODO: This
needs to show that a longer list will have a larger span, not just an
extended one.

## Proof

Because $v_{k+1}$ is linearly independent with $v$, it cannot be written
as a linear combination of elements in $v$. Thus,
$$v_{k+1} \notin \text{span}\left(v_1, \ldots, v_k\right)$$ However,
$v_{k+1}$ must be in the span of the extended list, because we can write
$v_{k+1}$ as $$0v_1 + 0v_2 + \ldots + 0v_k + 1v_{k+1}$$ Thus, the
extended list contains atleast one element that the original did not.

# Proof

Given a spanning list $u = u_1, \ldots, u_j$ and a linearly independent
list $v = v_1, \ldots, v_k$, show that the $|u| \ge |v|$. The Linear
Dependence Lemma states that while $u$ is linearly dependent, it is
possible to remove some vector $u_i$ from $u$ such that the span stays
the same. Thus, there exists a linearly independent list $b$ that has
the same span as $u$, aka that also spans $V$. Because this list can be
obtained by removing elements from $u$, $|b| \le |u|$.

The linearly independent list $v$ must be shorter than or equal to $b$
in length, because otherwise, $\text{span }v$ would have more elements
than $\text{span }b$ by the intermediate result. Thus,
$|v| \le |b| \le |u|$.
