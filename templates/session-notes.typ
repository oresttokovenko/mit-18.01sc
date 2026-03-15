// Session notes template
// Usage: #import "/templates/session-notes.typ": *

// Re-export noteworthy environments so sessions can use them
#import "@preview/noteworthy:0.3.0": *
#import "@preview/physica:0.9.8": *

// Callout box for key formulas
#let formula(title: none, body) = block(
  width: 100%,
  inset: 12pt,
  radius: 4pt,
  stroke: 0.5pt + rgb("#6a5acd"),
  fill: rgb("#f5f3ff"),
  {
    if title != none {
      text(weight: "bold", fill: rgb("#6a5acd"))[#title]
      v(4pt)
    }
    body
  },
)

#let session(
  session: none,
  title: "",
  body,
) = {
  set heading(numbering: none)

  [== Session #session: #title]
  body
}
