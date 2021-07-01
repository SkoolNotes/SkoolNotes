---
author: Exr0n
title: Products of Vector Spaces (Axler3.E)
---

# product of vector spaces [[def]{.smallcaps}]{.tag tag-name="def"} {#product-of-vector-spaces}

> Suppose $V_1, \ldots, V_m$ are vector spaces over $\mathbb F$
>
> -   The *product*
>     $V_1 \times \cdots \times V_m = \left\{(v_1, \ldots, v_m) : v_1 \in V_1, \ldots, v_m \in V_m\right\}$
> -   Addition on $V_1 \times \cdots \times V_m$ is defined as
>     $$ (u_1, \ldots, u_m) + (v_1, \ldots, v_m) = (u_1+v_1, \ldots, u_m+v_m) $$
> -   Scalar multiplication on $V_1 \times \cdots \times V_m$ is defined
>     by
>     $$ \lambda (v_1, \ldots, v_m) = (\lambda v_1, \ldots, \lambda v_m) $$

## careful

### product of multiple vector spaces (not just two)

1.  similar to how sums/direct sums are not just sums of a pair but
    rather sums of a list

## properties

### addition has to be over applicable products

$v_i \in V_i + u_i \in U_i$ must exist for each $1 \le i \le m$ for the
sum $(V_i \times \cdots \times V_m) + (U_i \times \cdots \times U_m)$

## results

### Axler3.73 product of vector spaces is a vector space

If vector spaces in a product are over $\mathbb F$, then their product
is a vector space over $\mathbb F$.

1.  Proof [[proof]{.smallcaps}]{.tag tag-name="proof"}

    1.  commutativity, associativity inherited from $\mathbb F$

    2.  additive identity, additive inverse, multiplicative identity
        inherited separataely from each space (they don\'t interact)

    3.  distributive should be inherited?

### Axler3.76 Dimension of a product is the sum of dimensions

Because you can concatenate the bases from each and fill the others with
zero to form the basis of the product

# products of direct sums

## A map $\Gamma : U_1 \times \cdots \times U_m \to U_1 + \cdots + \U_m$ s.t. $\Gamma(u_1, \ldots, u_m) = u_1 + \cdots + u_m$ is surjective by definition, and injective/bijective iff U~1~ + ⋯ + U~m~ is a direct sum

Basically if it is a direct sum, then nothing can interact with
eachother and therefore the map will be injective. If it is injective,
then nothing interacts and it must be a direct sum.

# A sum is a direct sum iff the dimensions add up

## A sum $U_1 + \cdots + U_m$ is a direct sum iff $\text{dim} (U_1 + \cdots + U_m) == \text{dim} U_1 + \cdots + \text{dim} U_m$

## intuition

### if the dimensions didn\'t add up, then something was canceled somewhere. Since they do, everything contributed
