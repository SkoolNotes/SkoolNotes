---
title: Fundamental Theorem of Calculus
---

# loose definition

$$\begin{aligned}
  \int \frac{d}{dx}f(x) dx = f(x)
  \end{aligned}$$

# formal definition

The theorem comes in two parts, apparently

## part 1

> If $f(x)$ is continuous over an interval $[a, b]$, and the function
> $F(x)$ is defined by $$\begin{aligned}
> F(x) = \int_{a}^{x} f(t) dt
> \end{aligned}$$ then $F'(x) = f(x)$ over $[a, b]$.

### intuition

Note that its $\int_{a}^{x} f(t) dt$ because $x$ is an argument to the
function and $t$ is just the iteration variable.

Note that the integral can start anywhere to the left (arbitrary $a$)
because that is removed as a constant when taking the derivative

Proof is by taking the limit form of a derivative of the integrals to
$x$ and $x+h$, and seeing that it collapses to the mean value. As the
range of the mean value expression goes to zero, the value converges to
itself.

### results

1.  any integrable function and any continuous function has an
    anti-derivative

## part 2: the evaluation theorem

> If $f(x)$ is continuous over the interval $[a, b]$ and $F(x)$ is any
> anti-derivative of $f(x)$, then $$\begin{aligned}
> \int_{a}^{b} f(x) dx = F(b) - F(a)
> \end{aligned}$$

### intuition

If you can find the anti-derivative, then the sum between the regions is
just the difference in the anti-derivative, which makes sense. Basically
contiguous areas add up.

# an example

Imagine a function that has the bound of an integral as an argument:
$$\begin{aligned}
  g(x) = \int_0^x t\ dt = \frac{x^2}{2}\\
  \frac{d}{dx}g(x) = \frac{d}{dx}\int_0^x t\ dt = \frac{d}{dx}\frac{x^2}{2} = x
  \end{aligned}$$
