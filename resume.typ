#import "@preview/fontawesome:0.5.0": *

#let theme = (
  "primary": rgb("#242933"),
  // "secondary": rgb(),
  "accentColor": rgb("#5e81ac"),
  "textPrimary": rgb("#2e3440"),
  "textSecondary": rgb("#3b4252"),
  "item": rgb("#a9b1bf"),
  // "textTertiary": rgb(),
  "typst": rgb("#239dae"),
  "background": rgb("#f8f9fb"),
)

#let config = (
  "size": 8.5pt,
  "footer": (
    "size": 0.61em,
    "transparentize": 25%,
  ),
)

// #show link: underline
// #set underline(offset: 0.2em)
#set par(justify: true)

#set text(
  font: "DejaVu Sans",
  fill: theme.primary,
  size: config.size
)

#show heading: smallcaps
#show heading.where(level: 1): set text(fill: theme.accentColor, size: 16pt, weight: "medium", font:"NotoSans NF")
#show heading: it => [#it #v(-1.1em) #line(length: 100%, stroke: theme.accentColor) ]

#show "Made with": text(
  fill: theme.textPrimary.transparentize(config.footer.transparentize),
  size: config.footer.size,
)[Made with]
#show "typst": text(
  fill: theme.typst.transparentize(config.footer.transparentize),
  font: "NotoSerif NF",
  size: config.footer.size,
)[typst]

#set page(
  paper: "a4",
  margin: (x: .8cm, y: 1.5cm),
  fill: theme.background,
  header: [
    #smallcaps[
      #text(
        font: "UbuntuSans NF",
        weight: "bold",
        size: 22pt,
        "Mateus M. Furquim Mendonça",
      )
    ]
  ],
  footer: align(right + horizon, "Made with typst"),
)

#place(top + left, float: true, scope: "parent", clearance: 0.65em)[
  #par(justify: false)[
    #text(
      font: "UbuntuSans NF",
      weight: "bold",
      size: 12pt,
      fill: theme.accentColor,
      "Machine Learning and Software Engineer",
    )
  ]
]

#place(top + left, float: true, scope: "parent", clearance: 2em)[
  #par(justify: false)[
    #set text(size: 8pt, weight: "medium")
    #[
      #show link: emph
      #fa-icon("at", size: 7pt, fill: theme.accentColor, solid: true)
      #h(-0.2em)
      #link("mailto:mfurquimdev@gmail.com")
      #h(1fr)
    ]
    #fa-icon("git", fill: theme.accentColor, solid: true)
    #h(-0.1em)
    #text("mfurquimdev")
    #h(1fr)
    #fa-icon("linkedin", fill: theme.accentColor, solid: true)
    #h(-0.1em)
    #text("in/mfurquimdev")
    #h(1fr)
    #fa-icon("link", fill: theme.accentColor, solid: true)
    #h(-0.2em)
    #text("mfurquim.dev")
    #h(5fr)
    #fa-icon("location-dot", fill: theme.accentColor, solid: true)
    #text("Brazil")
  ]
]

#show link: set text(weight: "semibold", fill: theme.textSecondary)
// #show link: set text(font: "MonaspiceAr NFP")
// font: "MonaspiceAr NFP", // Mono Sans
// font: "MonaspiceRn NFP", // Mono Script

= Professional Summary

#[
  #set par(first-line-indent: (amount: 2em, all: true))

  Highly skilled software engineer with over 9 years of experience and a diverse background.
  Committed to team growth and innovation through effective mentoring and collaboration.
  Strong problem-solving skills with a passion for delivering high-quality software solutions.
]


= Work Experience

#text(size: 10pt, weight: "semibold")[Back-end Developer]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Jan 2021 -- Present]
]
#v(-0.4em)
#link("https://devgrid.co.uk/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[DevGrid]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[United Kingdom (Remote)]
]

Managed several microservices that employ machine learning algorithms to estimate house appliances' energy consumption.

#[

  #set text(size: 8pt)

  #set list(marker: [#fa-icon("angle-right", fill: theme.item, solid: true)])

  - Achieved up to 59% improvement in #link("https://www.python.org/")[Python] write operations on #link("https://cassandra.apache.org/")[Cassandra] through the safe utilization of unlogged batches.
  - Iteratively improved domain models following #link("https://books.google.com.br/books/about/Domain_Driven_Design.html")[Domain Driven Design] approach, increasing efficiency in delivering new features.
]

#v(0.6em)
#text(size: 10pt, weight: "semibold")[Embedded Software Developer]

// #set terms(separator: [#fa-icon("chevron-right")  #h(0.5em)])
/ Ligature: A merged glyph.
/ Kerning: A spacing adjustment
  between two adjacent letters.

In this report, we will explore the
various factors that influence fluid
dynamics in glaciers and how they
contribute to the formation and
behaviour of these natural structures.



#grid(
  columns: (8fr, 0.5fr, 5fr),
  align(center)[
    #lorem(20)
  ],
  align(center)[
  ],
  align(center)[
    #lorem(20)
  ],
)

== Sub Heading

+ The climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

The equation $Q = rho A v + C$
defines the glacial flow rate.


The flow rate of a glacier is
defined by the following equation:

$ Q = rho A v + C $

The flow rate of a glacier is given
by the following equation:

$ Q = rho A v + "time offset" $

Total displaced soil by glacial flow:

$
  7.32 beta +
  sum_(i=0)^nabla Q_i / 2
$

Total displaced soil by glacial flow:

$
  7.32 beta +
  sum_(i=0)^nabla
  (Q_i (a_i - epsilon)) / 2
$

$ v := vec(x_1, x_2, x_3) $


$ a arrow.squiggly b $


Number: #(1 + 2)

$-x$ is the opposite of $x$

let name = [*Typst!*]


parbreak()

*strong*
_emphasis_
`print(1)`
https://typst.app/
<intro>
= Heading
- item
+ item
/ Term: description
$x^2$
\
'single' or "double"
~, ---
#rect(width: 1cm)
Tweet at us \#ad
/* block */, // line

$x^2$
$ x^2 $
$x_1$
$x^2$
$1 + (a+b) / 5$
$x \ y$
