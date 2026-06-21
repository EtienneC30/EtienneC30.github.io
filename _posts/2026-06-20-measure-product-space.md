---
layout: post
title: Uniqueness of $\sigma$-finite measures over a product space
date: 2026-06-20
tags: measure-theory
# categories: sample-posts
related_posts: false
featured: true
---

$$
\newcommand{\ox}{\otimes}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\NN}{\mathbb{N}}
$$

Consider $$(X, \mathcal{A}, \mu)$$ and $$(Y, \mathcal{B}, \nu)$$ two sigma-finite measure spaces. It is well known that the product measure $$\mu \otimes \nu$$ is the only measure $$\xi$$ over the product space $$(X \times Y, \mathcal{A} \ox \mathcal{B})$$ satisfying

$$\forall E \in \mathcal{A}, F \in \mathcal{B}, \quad \xi(E \times F) = \mu(E) \nu(F).$$

Thus the product of two $$\sigma$$-finite measures is characterized by its value on what we will call _measurable rectangles_. This however is no longer true if $$\mu$$ and $$\nu$$ are only assumed to be $$s$$-finite, i.e. to be a countable sum of finite measures. Indeed, consider $$\mu = \nu := \infty \cdot \mathrm{Leb}_{[0,1]}$$, i.e. the measure which to a Lebesgue-measurable set associates $$\infty$$ if it has positive Lebesgue measure, and zero otherwise. Denote by $$\lambda$$ the Lebesgue measure on the diagonal of $$[0,1]^2$$. Then for any $$E, F \in \mathcal{L}([0,1])$$ (the Lebesgue $$\sigma$$-algebra), if either $$E$$ or $$F$$ has Lebesgue measure $$0$$, then

$$(\mu \ox \nu) (E \times F) = (\mu \ox \nu + \lambda) (E \times F) = 0.$$

Otherwise, both measures give infinite measure to $$E \times F$$, therefore the two measures $$\mu \ox \nu$$ and $$\mu \ox \nu + \lambda$$ coincide on measurable rectangles. However $$\mu \ox \nu$$ gives measure zero to the diagonal, while $$\mu \ox \nu + \lambda$$ gives it measure $$\sqrt{2}$$, so the two measures are different.

Consider now the more general case of a $$\sigma$$-finite measure $$\mu$$ defined over the product space $$(X \times Y, \mathcal{A} \ox \mathcal{B})$$. Is it characterized by its value on measurable rectangles? This is true if $$\mu$$ is assumed to be finite, as can be shown via the $$\pi$$-$$\lambda$$ theorem. It is also true if $$\mu$$ is the product of two $$\sigma$$-finite measures, as discussed above. However, it turns out that it is not true in general. The goal of this note is to provide a counter example. This counter example was presented to me by Sébastien Gouëzel, and is based on problem 14E in _Problems for Mathematicians, Young and Old_ by Paul R. Halmos.

We will build a function $$B : \RR^2 \to \RR_+$$ such that for any $$E, F \in \mathcal{L}(\RR)$$ with positive measure, $B$ has an infinite integral over $$E \times F$$ against the Lebesgue measure on $$\RR^2$$. Therefore, using the same trick as before, it will not be possible to distinguish the measure with density $$B$$ from the same measure to which we add the Lebesgue measure over the diagonal of $$\RR^2$$ by simply looking at their values over measurable rectangles. On the other hand, because $$B$$ is finite everywhere, the measure with density $$B$$ will be $$\sigma$$-finite (take $$X_n := \{x \| B(x) \leqslant n\} \cap [-n, n]^2$$ to get a sequence of spanning sets with finite measure). In what follows, if $$E \in \mathcal{L}(\RR)$$, we will denote by $$\|E\|$$ the Lebesgue measure of $E$.

To construct $$B$$, consider $$(r_n)_{n \in \NN}$$ a dense sequence in $$\RR$$, and let $$I_n$$ be the interval centered at $r_n$ and with length $$1/2^n$$. We set

$$
\begin{align*}
  A : \RR & \to \RR \\
  x  & \mapsto \sum_{n \geqslant 0} 4^n \mathbb{I}_{I_n}(x).
\end{align*}
$$

Because $$\sum_{n \geqslant 0} \|I_n\| < \infty$$, the Borel-Cantelli lemma implies that for $$\mathrm{Leb}$$-almost every $$x$$, the sum defining $$A(x)$$ contains only a finite number of non-zero terms, and is therefore finite. We redefine $$A$$ by setting it to $$0$$ on the zero-measure set where it is infinite.

We now set $$B(x, y) := A(x - y)$$. Let $$E, F \in \mathcal{L}(\RR)$$ with positive measure. Doing the change of variable $$u = x-y$$ and $$v = y$$, we have

$$
\begin{align*}
  \int_{E \times F} B(x, y) \mathrm dx \mathrm dy & = \int_{\RR^2} A(x-y) \mathbb{I}_{E \times F}(x, y) \mathrm dx \mathrm dy \\
  & = \int_{\RR^2} A(u) \mathbb{I}_{E \times F}(u+v, v) \mathrm du \mathrm dv \\
  & = \int_\RR A(u) \int_\RR \mathbb{I}_{E \times F} (u + v, v) \mathrm dv \mathrm du \\
  & = \int_\RR A(u) \int_\RR \mathbb{I}_{(E - u) \cap F}(v) \mathrm dv \mathrm du \\
  & = \int_\RR A(u) |(E - u) \cap F| \mathrm du.
\end{align*}
$$

We will now prove that, for some constant $$c > 0$$, there exist arbitrarily large $n$ such that for every $$u \in I_n, \|(E - u) \cap F\| \geqslant c$$. This will imply that

$$\int_{E \times F} B(x, y) \mathrm dx \mathrm dy \geqslant c \int_{I_n} A(x) \mathrm dx \geqslant c 4^n |I_n| = c 2^n,$$

which in turn implies that $$\int_{E \times F} B(x, y) \mathrm dx \mathrm dy = \infty$$. To do that, recall that because $$E$$ and $$F$$ both have positive measure, the Lebesgue's density theorem implies that there exist $$x \in E$$, $$y \in F$$ and $$\epsilon > 0$$ such that

$$|E \cap [x-\epsilon, x+\epsilon]| > (4 \epsilon)/3 \quad \text{and} \quad  |F \cap [y-\epsilon, y+\epsilon]| > (4 \epsilon)/3.$$

Let $$u \in [x - y - \epsilon/7, x - y + \epsilon/7]$$. Then

$$|(E - u) \cap [x - u - \epsilon, x - u + \epsilon]| = |E \cap [x - \epsilon, x + \epsilon]| \geqslant (4 \epsilon)/3.$$

Moreover, $$x - u \in [y - \epsilon/7, y + \epsilon/7]$$, which means that

$$
\begin{align*}
  |(E - u) \cap [y - \epsilon, y + \epsilon]| & \geqslant |(E - u) \cap [x - u - \epsilon, x - u + \epsilon] \cap [y - \epsilon, y + \epsilon]| \\
  & = |((E - u) \cap [x - u - \epsilon, x - u + \epsilon]) \backslash \\
  & \qquad ([y - \epsilon, y + \epsilon]^c \cap [x - u - \epsilon, x - u + \epsilon])| \\
  & \geqslant |(E - u) \cap [x - u - \epsilon, x - u + \epsilon]| - \\
  & \qquad |[y - \epsilon, y + \epsilon]^c \cap [x - u - \epsilon, x - u + \epsilon]| \\
  & \geqslant (4\epsilon)/3 - (2 \epsilon)/7 > \epsilon.
\end{align*}
$$

We also know that $$\|F \cap [y - \epsilon, y + \epsilon]\| > (4 \epsilon)/3$$. Because $$\|[y - \epsilon, y + \epsilon]\| = 2 \epsilon$$, we deduce that

$$
|(E - u) \cap F| \geqslant |(E - u) \cap F \cap [y - \epsilon, y + \epsilon]| > (7 \epsilon)/3 - 2\epsilon = \epsilon/3.
$$

Take $$c := \epsilon/3$$. To conclude, we notice that because the sequence $$(r_n)_{n \in \NN}$$ is dense, the interval $$[x - y - \epsilon/8, x - y + \epsilon/8]$$ contains infinitely many terms of the sequence, which implies that there exist arbitrarily large $$n$$ such that $$[x - y - \epsilon/7, x - y + \epsilon/7]$$ contains $$I_n$$. $$\square$$
