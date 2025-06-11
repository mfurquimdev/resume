#import "@preview/fontawesome:0.5.0": *

#let theme = (
  "primary": rgb("#242933"),
  // "secondary": rgb(),
  "accentColor": rgb("#5e81ac"),
  "textPrimary": rgb("#2e3440"),
  "textSecondary": rgb("#3b4252"),
  "item": rgb("#a9b1bf"),
  "divider": rgb("#d8dee9"),
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
    mfurquimdev
    #h(1fr)
    #fa-icon("linkedin", fill: theme.accentColor, solid: true)
    #h(-0.1em)
    in/mfurquimdev
    #h(1fr)
    #fa-icon("link", fill: theme.accentColor, solid: true)
    #h(-0.2em)
    mfurquim.dev
    #h(8fr)
    #fa-icon("location-dot", fill: theme.accentColor, solid: true)
    Brazil
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
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Nov 2019 -- Aug 2020]
]
#v(-0.4em)
#link("https://www.autotrac.com.br/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Autotrac]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[Brasilia, DF - Brazil]
]

Maintained security and logistic features of an embedded system for a customized hardware and Linux kernel.

#[
  #set text(size: 8pt)
  #set list(marker: [#fa-icon("angle-right", fill: theme.item, solid: true)])

  - Employed dependency injection and other #link("http://staff.cs.utu.fi/staff/jouni.smed/doos_06/material/DesignPrinciplesAndPatterns.pdf")[SOLID principles] to enhance #link("https://www.cplusplus.com/")[C++] code quality and maintainability.
  - Implemented #link("https://github.com/prometheus/node_exporter")[monitoring] solutions to gather real-time performance data, ensuring optimal system efficiency and responsiveness.
]

#v(0.6em)
#text(size: 10pt, weight: "semibold")[DevOps Consultant]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Jan 2019 -- Nov 2019]
]
#v(-0.4em)
#link("https://www.ibm.com/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[IBM]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[Brasilia, DF - Brazil]
]

Collaborated with multiple teams to improve observability of the back-end services of a prominent banking institution.

#[
  #set text(size: 8pt)
  #set list(marker: [#fa-icon("angle-right", fill: theme.item, solid: true)])

  - Contributed to self-discovering services feature using #link("https://etcd.io/")[etcd] key-value store, #link("https://en.wikipedia.org/wiki/Consistent_hashing")[consistent hashing] and a #link("https://prometheus.io/docs/prometheus/latest/federation/#federation")[federation of Prometheus].
  - Employed #link("https://prometheus.io/docs/prometheus/latest/querying/basics/")[PromQL] to develop alerts that detected low performance of new deployments and potential DDoS attacks.
]

#v(0.6em)
#grid(
  columns: (8fr, 0.5fr, 5fr),
  align(left)[
    = Intern Experience
    #text(size: 10pt, weight: "semibold")[Security Software Researcher]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Nov 2015 -- Jul 2016]
    ]
    #v(-0.4em)
    #link("https://fga.unb.br/lades/projetos")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[LADES]]
    #text(size: 8pt, weight: "semibold", fill: theme.accentColor)[at]
    #link("https://fga.unb.br/software")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[UnB]]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Brasilia, DF - Brazil]
    ]
    
    Enhanced an Intrusion Detection System with unsupervised machine learning to strengthen the security measures of the Brazilian Army.
    
    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("angle-right", fill: theme.item, solid: true)])

      - Configured a #link("https://www.debian.org/")[Debian] server to capture all network packets in promiscuous mode using #link("https://www.wireshark.org/")[Wireshark] and replay them in a controlled environment.
      - Successfully detected masked malicious network packets using #link("https://en.wikipedia.org/wiki/K-means_clustering")[K-Means clustering] algorithm and distributed processing with #link("https://spark.apache.org/")[Spark] and #link("https://hadoop.apache.org/")[Hadoop].
    ]

    #v(0.6em)

    #text(size: 10pt, weight: "semibold")[Software Engineer Intern]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Nov 2015 -- Jul 2016]
    ]
    #v(-0.4em)
    #link("https://web.archive.org/web/20150619063918/https://www.canassist.ca/EN/main/latest-news/2015-news-archive/canassist-welcomes-new-group-of-students.html")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[CanAssist]]
    #text(size: 8pt, weight: "semibold", fill: theme.accentColor)[at]
    #link("https://www.uvic.ca/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[UVic]]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Brasilia, DF - Brazil]
    ]
    
    Enhanced an Intrusion Detection System with unsupervised machine learning to strengthen the security measures of the Brazilian Army.
    
    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("angle-right", fill: theme.item, solid: true)])

      - Devised an automated data-driven #link("https://en.wikipedia.org/wiki/Regression_testing")[regression testing] methodology, improving the efficiency of the testing cycle and ensuring alignment with requirements.
      - Accomplished a low resource consumption of #link("https://www.raspberrypi.org/")[Raspberry Pi] by rotating log using the #link("https://www.cplusplus.com/")[C/C++] language and the #link("https://www.qt.io/")[Qt] Framework.
    ]

  ],
  align(left)[
  ],
  align(left)[
    = Education
    #text(size: 10pt, weight: "semibold")[Machine Learning DevOps Engineer]
    #v(-0.6em)
    #link("https://confirm.udacity.com/VWERCDCT")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Udacity]]
    #v(-0.4em)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Online]
      #h(1fr)
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Nov 2021 -- Dez 2022]
    ]

    #text(size: 10pt, weight: "semibold")[BEng. Software Engineering]
    #v(-0.6em)
    #link("https://fga.unb.br/software")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Universidade de Brasilia (UnB)]]
    #v(-0.4em)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Brasilia, DF - Brazil]
      #h(1fr)
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Mar 2011 -- Jul 2017]
    ]

    #link("https://www.uvic.ca/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[University of Victoria (UVic)]]
    #v(-0.4em)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Victoria, BC - Canada]
      #fa-icon("canadian-maple-leaf", fill: theme.item, solid: false)
      #h(1fr)
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Jan 2014 -- Apr 2015]
    ]
    = Languages
    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("comments", fill: theme.item, solid: true, size: 7pt)])
    
      - Portuguese #h(1fr) #text(fill: theme.accentColor)[Mother Tongue]
      - English #h(1fr) #text(fill: theme.accentColor)[Fluent]
    ]
    
    #line(length: 100%, stroke: (paint: theme.divider, thickness: 1pt, dash: "dashed"))

    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("code", fill: theme.item, solid: true, size: 7pt)])
    
      - Python #h(1fr) #text(fill: theme.accentColor)[Working Knowledge]
      - C/C++ #h(1fr) #text(fill: theme.accentColor)[Working Knowledge]
      - Go #h(1fr) #text(fill: theme.accentColor)[Intermediate Knowledge]
      - Rust #h(1fr) #text(fill: theme.accentColor)[Basic Knowledge]
    ]
  ],
)

#v(1fr)

#fa-icon("linux", fill: theme.item, solid: false) #h(0.1em) #link("https://nixos.org")[#text(weight: "regular")[Linux]]
#h(1fr)
#fa-icon("terminal", fill: theme.item, solid: false) #h(0.1em) #link("https://www.gnu.org/software/bash/")[#text(weight: "regular")[Bash]]
#h(1fr)
#fa-icon("asterisk", fill: theme.item, solid: false) #h(0.1em) #link("https://regex101.com/")[#text(weight: "regular")[Regex]]
#h(1fr)
#fa-icon("code-branch", fill: theme.item, solid: false) #h(0.1em) #link("https://docs.github.com/en/get-started/quickstart/github-flow")[#text(weight: "regular")[GitFlow]]
#h(1fr)
#fa-icon("cogs", fill: theme.item, solid: false) #h(0.1em) #link("https://about.gitlab.com/topics/ci-cd/")[#text(weight: "regular")[CI/CD]]
#h(1fr)
#fa-icon("docker", fill: theme.item, solid: false) #h(0.1em) #link("https://www.docker.com/")[#text(weight: "regular")[Docker]]
#h(1fr)
#fa-icon("python", fill: theme.item, solid: false) #h(0.1em) #link("https://fastapi.tiangolo.com/")[#text(weight: "regular")[RESTful]]
#h(1fr)
#fa-icon("database", fill: theme.item, solid: false) #h(0.1em)
#link("https://www.postgresql.org")[#text(weight: "regular")[SQL]]
#text(fill: theme.accentColor)[/]
#link("https://cassandra.apache.org/")[#text(weight: "regular")[NoSQL]]
