---
title: Revolving Shapes
---

# an example: semicircle revolved around the x-axis to create a sphere

We can make cuts perpendicular to the axis of rotation. In this case,
you end up with a bunch of circular disks, where the height of each
slice is your semicircle function.

Thus, the volume of the disk is $$\begin{aligned}
   \pi f^2(x_i) \Delta x = (a^2-x^2) \pi \Delta x
  \end{aligned}$$

This is kinda like a Riemann Sum, but with more stuff added on. We can
take the limit of the sum

$$\begin{aligned}
   \lim_{n \to \infty} \sum_{k=1}^{n} \pi (a^2 - x_i^2) \Delta x
  \end{aligned}$$

Where $\Delta x = \frac{1}{n}$ and $x_i = -a + \frac{2ak}{n}$

Expressed as an integral:

$$\begin{aligned}
   \int_{-a}^{a} \pi (a^2-x^2) dx &\to  \int \pi a^2 dx - \int \pi x^2 dx \\
   &= \pi a^2 x - \pi \frac{1}{3}x^3\\
   &\to \pi a^3 - \pi \frac{1}{3} a^3 + \pi a^3 + \pi \frac{1}{3} (-a)^3\\
   &= 2\pi a^3 - \pi \frac{2}{3} a^3\\
   &= \frac{4}{3} \pi a^3
  \end{aligned}$$

# now lets try a cone

Rotate $$\begin{aligned}
  y = -ax +b
  \end{aligned}$$ Around the y-axis. Then, each circle (which is layed
out flat) has thickness $dy$ and radius $x$ or $\frac{y-b}{-a}$

The volume of the disk is then $$\begin{aligned}
  \pi  \left(\frac{y-b}{-a}\right)  ^2 dy
  \end{aligned}$$

Or using $r, h$ as the radius and height of the cone,

$$\begin{aligned}
   \pi  \left(r-\frac{r}{h}y \right)  ^2 dy
  \end{aligned}$$

And we can take the integral of that from $0$ to $h$

$$\begin{aligned}
  \int_{0}^{h}  \pi  \left(r-\frac{r}{h}y \right)  ^2 dy &\to \pi  \int \left(r - \frac{r}{h}y \right)  ^2 dx \\
  \text{Let } u = r-\frac{r}{h}y, du = -\frac{r}{h} dx\\
  &= \pi -\frac{h}{r} \int u ^2 du\\
  &= -\pi \frac{h}{r} \frac{1}{3}u^3\\
  \end{aligned}$$
