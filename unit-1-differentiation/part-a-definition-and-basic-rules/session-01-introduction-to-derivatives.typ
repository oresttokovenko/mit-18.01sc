#import "/templates/session-notes.typ": *
#import cetz.draw: *

#show: session.with(
  session: 1,
  title: "Introduction to Derivatives",
)

=== Lecture Notes

==== What is a dervative? 

Fundamentally it's the measuring how something changes. For example, if you hold a bond and interest rates go up a little, the bond's price drops. But by how much does it drop? That sensitivity - how fast the bond's price changes as interest rates change, is a derivative.

==== Geometric Interpretation

Find the tangent line at $y = f(x)$ at $P = (X_o, Y_o)$ (The tangent line is the red line)

#cetz.canvas({
    // axes
    line((-3, 0), (4, 0), mark: (end: ">"))
    line((0, -2), (0, 4), mark: (end: ">"))
    content((4, -0.3), $x$)
    content((-0.3, 4), $y$)

    // f(x)
    line(
      ..for t in range(-25, 36) {
        let x = t / 10
        ((x, 0.15 * calc.pow(x, 3) - 0.2 * x + 1),)
      },
      smooth: true,
    )

    // point P at X_o = 1.5
    let x0 = 1.5
    let y0 = 0.15 * calc.pow(x0, 3) - 0.2 * x0 + 1
    circle((x0, y0), radius: 0.06, fill: black)
    content((x0 + 0.3, y0 + 0.4), $P$)

    // x_0 tick mark on axis
    line((x0, -0.1), (x0, 0.1))
    content((x0, -0.4), $x_0$)

    // y_0 tick mark on axis
    line((-0.1, y0), (0.1, y0))
    content((-0.4, y0), $y_0$)

    // tangent line through P
    let slope = 0.45 * calc.pow(x0, 2) - 0.2
    line(
      (x0 - 1.5, y0 - 1.5 * slope),
      (x0 + 1.5, y0 + 1.5 * slope),
      stroke: red,
    )
  })

#definition[
  A tangent line is a line that approximates the direction of a curve at a specific point.
]

#note[
  Slope-intercept form: $y = m x + b$

  Point-slope form: $y - y_0 = m (x - x_0)$
]

This is saying, if we know the point $P$ and we know the slope $m$, we can write
  the equation of the tangent line. The point we have. The missing piece is $m$.


#definition[
  $f'(x_0)$, the derivative of $f$ at $x_0$:
  - *Geometrically:* the slope of the tangent line to $y = f(x)$ at $P$
  - *Conceptually:* the rate of change of $f$ at $x_0$
]

To summarize:
+ We have a curve $y = f(x)$
+ We pick a point $P = (x_0, y_0)$ on it
+ We want the tangent line at $P$
+ We have the formula for a line (point-slope form)
+ We know the slope $m = f'(x_0)$

#note[
  Slope is a number that measures steepness: rise over run $ m = (Delta y) / (Delta x) $. A parabola is a shape (e.g. $y = x^2$). A parabola has a different slope at every point along it.
]

==== Secant Lines and Limits

(The secant line is the orange line)

#cetz.canvas({
    // axes
    line((-3, 0), (4, 0), mark: (end: ">"))
    line((0, -2), (0, 4), mark: (end: ">"))
    content((4, -0.3), $x$)
    content((-0.3, 4), $y$)

    // f(x)
    line(
      ..for t in range(-25, 36) {
        let x = t / 10
        ((x, 0.15 * calc.pow(x, 3) - 0.2 * x + 1),)
      },
      smooth: true,
    )

    // point P at x_0 = 1.5
    let x0 = 1.5
    let y0 = 0.15 * calc.pow(x0, 3) - 0.2 * x0 + 1
    circle((x0, y0), radius: 0.06, fill: black)
    content((x0 + 0.3, y0 + 0.4), $P$)

    // x_0 tick mark on axis
    line((x0, -0.1), (x0, 0.1))
    content((x0, -0.4), $x_0$)

    // y_0 tick mark on axis
    line((-0.1, y0), (0.1, y0))
    content((-0.4, y0), $y_0$)

    // point Q further along the curve
    let x1 = 2.8
    let y1 = 0.15 * calc.pow(x1, 3) - 0.2 * x1 + 1
    circle((x1, y1), radius: 0.06, fill: black)
    content((x1 + 0.3, y1 + 0.3), $Q$)

    // secant line through P and Q
    let sec-slope = (y1 - y0) / (x1 - x0)
    line(
      (x0 - 0.5, y0 - 0.5 * sec-slope),
      (x1 + 0.5, y1 + 0.5 * sec-slope),
      stroke: orange,
    )

    // tangent line through P
    let slope = 0.45 * calc.pow(x0, 2) - 0.2
    line(
      (x0 - 1.5, y0 - 1.5 * slope),
      (x0 + 1.5, y0 + 1.5 * slope),
      stroke: red,
    )
  })

#definition[
  A secant line is a straight line that connects two points on a curve. Its slope gives the average rate of change between those two points.
]

#note[
  The tangent line is the limit of secant lines. As $Q$ approaches $P$, the secant line becomes the tangent line, and the average rate of change becomes the instantaneous rate of change.
]

==== Computing Slope

The slope of the secant line (average rate of change) is:

$ (Delta f) / (Delta x) $

As $Delta x -> 0$, the secant line becomes the tangent line:

$ m = lim_(Delta x -> 0) (Delta f) / (Delta x) $

This limit is the derivative $f'(x_0)$

==== Putting it together, the definition of the derivative
\
$ f'(x_0) = lim_(Delta x -> 0) (f(x_0 + Delta x) - f(x_0)) / (Delta x) $


=== Worked Examples


=== Questions

