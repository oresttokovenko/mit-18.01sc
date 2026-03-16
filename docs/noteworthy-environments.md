# Noteworthy Environments

Reference for the mathematical environments available via the [noteworthy](https://github.com/tarunjana/noteworthy) package (powered by [theoretic](https://github.com/nleanba/typst-theoretic)).

## Algorithm

```typst
#algorithm[
  Step-by-step procedure to compute the shortest path
  in a weighted graph.
]
```

## Axiom

```typst
#axiom[
  Through any two distinct points, there exists exactly
  one straight line.
]
```

## Claim

```typst
#claim[
  This statement follows directly from the previous lemma.
]
```

## Corollary

```typst
#corollary[
  Every continuous function on a closed interval
  attains a maximum.
]
```

## Counter-Example

```typst
#counter-example[
  This function is differentiable but not continuously differentiable.
]
```

## Definition

```typst
#definition[
  A prime number is a natural number greater than 1
  that has no positive divisors other than 1 and itself.
]
```

## Example

```typst
#example[
  The number 7 is a prime number.
]
```

## Exercise

Supports an optional `solution` parameter.

```typst
#exercise(
  solution: [
    Substitute the given values and simplify the equation
    to obtain the final result.
  ]
)[
  Solve the equation $2x + 5 = 17$.
]
```

## Lemma

```typst
#lemma[
  The sum of two even integers is always even.
]
```

## Note

```typst
#note[
  Remember to check boundary conditions when applying
  this theorem.
]
```

## Proof

```typst
#proof[
  Assume the opposite and derive a contradiction
  to complete the proof.
]
```

## Proposition

```typst
#proposition[
  The product of two rational numbers is rational.
]
```

## Remark

```typst
#remark[
  This result can be extended to higher dimensions.
]
```

## Theorem

Supports an optional `title` parameter.

```typst
#theorem(title: "Pythagoras Theorem")[
  For a right-angled triangle:
  $a^2 + b^2 = c^2$
]
```
