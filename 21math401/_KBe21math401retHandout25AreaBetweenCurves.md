---
title: Handout 25 Additional Answers
---

```{=latex}
\setcounter{section}{11}
```
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
  \end{aligned}$$