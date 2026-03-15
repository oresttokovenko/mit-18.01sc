#import "@preview/noteworthy:0.3.0": *
#import "@preview/physica:0.9.8": *

#show: noteworthy.with(
  paper-size: "us-letter",
  title: "MIT 18.01SC Single Variable Calculus",
  header-title: "MIT 18.01SC",
  date: "",
  author: "Course Notes",
)

#include "unit-1-differentiation/unit-1.typ"

#pagebreak()

#include "unit-2-applications-of-differentiation/unit-2.typ"

#pagebreak()

#include "unit-3-definite-integral-and-applications/unit-3.typ"

#pagebreak()

#include "unit-4-techniques-of-integration/unit-4.typ"

#pagebreak()

#include "unit-5-exploring-the-infinite/unit-5.typ"

#pagebreak()

#include "final-exam/final-exam-review.typ"
