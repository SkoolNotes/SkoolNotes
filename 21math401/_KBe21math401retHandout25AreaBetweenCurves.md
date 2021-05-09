---
title: Handout 25 Additional Answers
---

```{=latex}
\setcounter{section}{10}
```
# cubic and a line

## show tangency

$$\begin{aligned}
   \frac{dy}{dx} = \frac{d}{dx}(4 x ^2 - x ^3) = 8 x - 3 x^2&\Bigr|_3\\
   &= 24 - 27 = -3\\
   \frac{dy}{dx} = \frac{d}{dx}(18 - 3 x) = -3 \\
   \end{aligned}$$

## area between curves

$$\begin{aligned}
    \int_{3}^{6} 18-3x - 4x^2 + x^3 dx &\to \frac{1}{4}x^4 - \frac{1}{3}4x^3 - \frac{1}{2} 3x^2 + 18 x +C\\
    &= \frac{1}{4}(6)^4 - \frac{1}{3}4(6)^3 - \frac{1}{2} 3(6)^2 + 18 (6)  - \frac{1}{4}(3)^4 + \frac{1}{3}4(3)^3 + \frac{1}{2} 3(3)^2 - 18 (3)\\
    &= \boxed{\frac{261}{4}}
   \end{aligned}$$

# estimate area

Right handed Riemann Sum: $$\begin{aligned}
  0.5 + 4 + 10 + 13 + 10 + 0 = 37.5
  \end{aligned}$$

# estimate area again

$$\begin{aligned}
  4(200 + 2700 + 1100 + 4000 + 200) = 32800
  \end{aligned}$$

# area between curves

$$\begin{aligned}
  \int_{0}^{10} 2200e^{0.024t} dx - \int_0^{10} 1360e^{0.018t} dx &= \frac{1}{0.024} 2200e^{0.024t} - \frac{1}{0.018} 1360e^{0.018t}\\
  \implies &\quad \ \frac{1}{0.024} 2200e^{0.24} - \frac{1}{0.018} 1360e^{0.18} - \frac{1}{0.024} 2200 + \frac{1}{0.018} 1360
  &\approx  9964
  \end{aligned}$$

# meaning of area

The shaded region represents the profit made between producing 50 units
and 100 units.

# [TODO]{.todo .TODO} slicing pizza into three using parallel cuts {#slicing-pizza-into-three-using-parallel-cuts}

The problem of placing slices is the same if we only worry about the top
half of the pizza. Thus, we can choose some $x$ for the first slice s.t.

$$\begin{aligned}
  2\int_{-7}^{x} \sqrt{7^2 - t^2} dt &= \int_{x}^{7} \sqrt{7^2 - t^2} dt\\
  2\int_{-7}^{x} \sqrt{7^2 - t^2} dt &- \int_{x}^{7} \sqrt{7^2 - t^2} dt = 0\\
  2\int_{-7}^{x} \sqrt{7^2 - t^2} dt &+ \int_{7}^{x} \sqrt{7^2 - t^2} dt = 0\\
  2\left( \int_{0}^{x} \sqrt{7^2 - t^2} dt - \int_{0}^{-7} \sqrt{7^2 - t^2} dt \right)  &+\left( \int_{0}^{x} \sqrt{7^2 - t^2} dt - \int_{0}^{7} \sqrt{7^2 - t^2} dt \right)  = 0\\
  2\left( \int_{0}^{x} \sqrt{7^2 - t^2} dt + \int_{-7}^{0} \sqrt{7^2 - t^2} dt \right)  &+\left( \int_{0}^{x} \sqrt{7^2 - t^2} dt - \int_{0}^{7} \sqrt{7^2 - t^2} dt \right)  = 0\\
  2\int_{0}^{x} \sqrt{7^2 - t^2} dt + 2\int_{-7}^{0} \sqrt{7^2 - t^2} dt  &+\int_{0}^{x} \sqrt{7^2 - t^2} dt - \int_{0}^{7} \sqrt{7^2 - t^2} dt = 0\\
  3\int_{0}^{x} \sqrt{7^2 - t^2} dt + 2\int_{-7}^{0} \sqrt{7^2 - t^2} dt  &- \int_{0}^{7} \sqrt{7^2 - t^2} dt = 0\\
  3\int_{0}^{x} \sqrt{7^2 - t^2} dt + \int_{-7}^{0} \sqrt{7^2 - t^2} dt &= 0\\
  3\int_{0}^{x} \sqrt{7^2 - t^2} dt + \frac{49\pi}{4}  &= 0\\
  \text{Now, we need to use trigonometric substitution, apparently.}\\
  x = a \sin \theta, dx = a \cos  \theta d \theta
  \end{aligned}$$

Or, you could use David\'s method, which is just better (cut
horizontally instead of vertically) $$\begin{aligned}
  \int_{-7}^{7} \sqrt{49-x^2} - a dx = \frac{49\pi }{3}\\
  \int_{-7}^{7} \sqrt{49-x^2} dx -\int_{-7}^{7}  a dx = \frac{49\pi }{3}\\
  \frac{49\pi }{2} -\int_{-7}^{7}  a dx = \frac{49\pi }{3}\\
  \frac{49\pi }{2} -\left( 7a - -7a \right)  = \frac{49\pi }{3}\\
  \frac{49\pi }{6} = 14a\\
  a = \frac{49\pi }{84} = \frac{7\pi }{12}
  \end{aligned}$$ Since $a$ is the upper half of the center portion, the
width of each slice is $2a = \frac{7 \pi}{6}$

# [TODO]{.todo .TODO} tractrix {#tractrix}

At any moment, if the boat is at $(x, y)$ and the puller is at $(0, h)$,
then the velocity of the boat is in the direction $$\begin{aligned}
  \frac{\Delta y}{\Delta x}
  \end{aligned}$$

# [TODO]{.todo .TODO} water displacement {#water-displacement}

Plan: find a function $f(r)$ which represents the amount of water
displaced for any radius, then take the derivative and find roots.
