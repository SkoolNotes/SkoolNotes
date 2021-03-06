---
title: Axler5.21 Complex vector spaces have eigenvalues
---

# Axler5.21 Complex Vector Spaces have atleast one eigenvalue

> Every operator on a finite-dimensional, nonzero, complex vector space
> has an eigenvalue.

# intuition

## by the fundamental theorem of algebra, the characteristic polynomial will have roots and thus there will be eigenvalues.

# proof

## by factoring, we turn the polynomial of maps into a composition of linear maps of the form $(T-\lambda I)$ and the input vector has to go to all of them. We choose a $v$ s.t. it should be equal to zero, which means that one of the maps needs to send the $v$ to zero (and that map will be injective and that lambda will be an eigenvalue).

## to formalize the \"one of the maps sends the input to zero,\" you can just use a prev proof \"if a chain of maps is not injective, then one of the maps is not injective\" or induct because there is a finite number of maps.
