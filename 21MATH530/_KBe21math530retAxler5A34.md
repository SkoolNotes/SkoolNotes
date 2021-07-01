---
author: Albert Huang
title: Axler 5.A 34
---

# Problem

> Suppose $T \in \mathcal L (V)$. Prove that $T / (\onull T)$ is
> injective if and only if $ (\onull T) \cap (\orange T) = \{ 0 \} $

# Proof

## Condition Manipulation

First, we will rewrite the problem as logical statements for easier
manipulation.

### Left Condition

The left-hand side \"$T / (\onull T)$ is injective\" is equivalent to:

$$\begin{aligned}
    \left( T/U \left( v+U\right) = 0 \right)  &\implies \left(  v+U = 0 \right) &&\text{(alternate definition of injective)}\\
    Tv + U = \onull T &\implies v + U = \onull T &&\text{(\(T/U(v+U)\) is defined as \(Tv + U\))}\\
    Tv + \left( \onull T \right) = \onull T &\implies v + \left( \onull T \right) = \onull T  &&\text{(}U=\onull T\text)\\
    Tv \in \onull T &\implies v \in \onull T\\
    T^2v = 0 &\implies v \in \onull T
    \end{aligned}$$

### Right Condition

We can also rewrite the right-hand condition for easier manipulation.
The intersection of the null space and the range being $0$ is the same
as (assuming $w \neq 0$) \"if $w \in \onull T$ then
$w \notin \orange T$\" and \"if $w \in \orange T$ then
$w \notin \onull T$\". Note that these are contrapositives of eachother,
so we just need to work with the second statement.

Thus, assuming $w \neq 0$, these statements are equivalent:

$$\begin{aligned}
    \left( \exists v : Tv = w \right) &\implies  \left( Tw \neq  0 \right)     &&\text{(definitions of null space and range)}\\
    v \notin \onull T &\implies T^2 v \neq 0                                   &&\text{(}w \neq 0\text{)}\\
    T^2 v = 0 &\implies v \in \onull T                                         &&\text{(contrapositive)}
    \end{aligned}$$

## Proof

The statements are equivalent. $\hfill\blacksquare$
