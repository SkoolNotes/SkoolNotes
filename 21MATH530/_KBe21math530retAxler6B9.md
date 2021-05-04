---
author: Exr0n
title: "Axler6.B \\#9"
---

# Problem

> What happens if the Gram--Schmidt Procedure is applied to a list of
> vectors that is not linearly independent?

# Answer

Suppose the list $v_1, \ldots, v_n$ is linearly dependent. Then, there
exists some $v_j$ s.t. $v_1, \ldots, v_{j-1}$ is linearly independant
while $v_1, \ldots, v_j$ is not. Then,
$v_j \in \text{span}(v_1, \ldots, v_{j-1})$

Because the Gram-Schmidt procedure preserves prefix spans,
$$ v_j \in \text{span}(e_1, \ldots, e_{j-1}) $$

Thus, the denominator in the $j$-th step of the procedure is equivalent
to $$
  \lVert v - v \rVert = \lVert 0 \rVert = 0
  $$ and a division by zero occurs.
