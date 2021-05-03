---
title: Gram-Schmidt Procedure
---

```{=org}
#+CONTEXT: Linear Algebra
```
# Axler6.31 Gram-Schmidt Procedure

The Gram-Schmidt Procedure is used to turn a list into an orthonormal
list with the same span. It\'s useful for finding [orthonormal
bases](KBrefOrthonormalBasis.org).

> Suppose $v_1, \ldots, v_m$ is a linearly independent list of vectors
> in $V$. Let $e_1 = v_1 / \lVert v_1 \rVert$. For $j = 2, \ldots, m$,
> define $e_j$ inductively by $$\begin{aligned}
> e_j = \frac{v_j - \langle  v_j, e_1 \rangle e_1 - \cdots - \langle v_j, e_{j-1} \rangle e_{j-1}}{ \lVert \text{<numerator>} \rVert  }
> \end{aligned}$$
>
> Then $e_1, \ldots, e_m$ is an orthonormal list of vectors in $V$ s.t.
> each prefix span is the same as in $v_1, \ldots, v_m$.

## intuition

Basically, for each vector, we divide out the components from the
previous vectors and then normalize the size to ensure the norm is one.

It\'s kind of like the orthogonal decomposition.

# results

## Axler6.34 orthonormal basis exists in finite dim vec spaces

since every finite dim vec space has a basis that can be Gram-schmidt-ed

## Axler6.35 orthonormal lists extend to orthonormal bases

just extend the orthonormal list into a basis, and then gram-schmidt-ify
the vectors you added

## Axler6.37 upper-triangular matrix wrt orthonormal basis

If an upper triangular matrix exists for some operator, then an
upper-triangular matrix exists for an orthonormal basis too.

Proof: prefix span invariance is a condition for an upper triangular
matrix, so the prefix span equality

An application of this is
