#import "@preview/fontawesome:0.6.0": *

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
  font: "NotoSans NF",
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
        font: "NotoSans NF",
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
      font: "NotoSans NF",
      weight: "bold",
      size: 12pt,
      fill: theme.accentColor,
      "Engenheiro de Software e Machine Learning",
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

= Resumo Profissional

#[
  #set par(first-line-indent: (amount: 2em, all: true))

  Engenheiro de Software com mais de 10 anos de experiência, atuando em áreas como Engenharia de *Machine Learning*, Desenvolvimento *Back-end* e *DevOps*.
  Especialista em *Python*, mensageria *RabbitMQ* e banco de dados NoSQL (*Cassandra*).
  Comprometido com o crescimento da equipe e a inovação por meio de mentoria e colaboração.
]


= Experiência Profissional

#text(size: 10pt, weight: "semibold")[Engenheiro de Machine Learning]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Jul 2025 -- Dez 2025]
]
#v(-0.4em)
#link("https://amaris.com")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Amaris]]
#text(size: 8pt, weight: "semibold", fill: theme.item)[|]
#link("https://www.ab-inbev.com")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[AB InBev]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[Remoto - USA]
]

Desenvolvi e monitorei o desempenho em produção de microsserviços escaláveis para inferência de modelos IA em tempo real.

#[
  #set text(size: 8pt)
  #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)

- Implementei cache em memória com #link("https://redis.io")[Redis] para atender requisitos de baixa latência
- Garanti o desacoplamento da comunicação _publish-subscribe_ através de uma topologia de roteamento multicamadas no #link("https://www.rabbitmq.com")[RabbitMQ].
- Apliquei o #link("https://learn.microsoft.com/en-us/aspnet/mvc/overview/older-versions/getting-started-with-ef-5-using-mvc-4/implementing-the-repository-and-unit-of-work-patterns-in-an-asp-net-mvc-application")[Padrão Repository] para abstrair a lógica de acesso a dados, permitindo desenvolvimento paralelo entre equipes.

]

#v(0.6em)
#text(size: 10pt, weight: "semibold")[Desenvolvedor Back-end]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Jan 2021 -- Jul 2025]
]
#v(-0.4em)
#link("https://devgrid.co.uk/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[DevGrid]]
#text(size: 8pt, weight: "semibold", fill: theme.item)[|]
#link("https://voltaware.com")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Voltaware]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[Remoto - Londres]
]

Gerenciei microsserviços que empregam algoritmos de aprendizado de máquina para estimar o consumo de energia de eletrodomésticos.

#[
  #set text(size: 8pt)
  #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)


  - Liderei a equipe de desenvolvedores e cientistas, garantindo a qualidade dos modelos de ML e a estabilidade dos serviços em produção.

  - Alcancei uma melhoria de até 59% em operações de escrita em #link("https://www.python.org/")[Python] no #link("https://cassandra.apache.org/")[Cassandra] através da utilização segura de _unlogged batches_.

  - Melhorei os modelos de domínio seguindo a abordagem de #link("https://books.google.com.br/books/about/Domain_Driven_Design.html")[Domain Driven Design], aumentando a eficiência na entrega de novas funcionalidades.

]

#v(0.6em)
#text(size: 10pt, weight: "semibold")[Desenvolvedor de Software Embarcado]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("calendar", fill: theme.item, solid: false)
  #h(0.2em)
  #text(weight: "regular")[Nov 2019 -- Ago 2020]
]
#v(-0.4em)
#link("https://www.autotrac.com.br/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Autotrac]]
#h(1fr)
#[
  #set text(size: 7.5pt, weight: "regular")
  #fa-icon("location-dot", fill: theme.item, solid: false)
  #h(0.1em)
  #text(weight: "regular")[Brasília, DF - Brazil]
]

Mantive funcionalidades de segurança e logística de um sistema embarcado para um hardware e kernel Linux customizados.

#[
  #set text(size: 8pt)
  #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)

  - Empreguei injeção de dependência e outros #link("http://staff.cs.utu.fi/staff/jouni.smed/doos_06/material/DesignPrinciplesAndPatterns.pdf")[princípios SOLID] para melhorar a qualidade e a manutenibilidade do código em #link("https://www.cplusplus.com/")[C++].

  - Implementei soluções de #link("https://github.com/prometheus/node_exporter")[monitoramento] para coletar dados de desempenho em tempo real, garantindo eficiência e resposta ideais do sistema.

]

#v(0.6em)
#text(size: 10pt, weight: "semibold")[Consultor DevOps]
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
  #text(weight: "regular")[Brasília, DF - Brazil]
]

Colaborei com várias equipes para melhorar a observabilidade dos serviços de back-end de uma instituição bancária de grande porte.


#[
  #set text(size: 8pt)
  #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)

  - Contribuí para a funcionalidade de auto-descoberta de serviços usando o banco #link("https://etcd.io/")[etcd], #link("https://en.wikipedia.org/wiki/Consistent_hashing")[hashing consistente] e uma #link("https://prometheus.io/docs/prometheus/latest/federation/#federation")[federação de Prometheus].

  - Utilizei #link("https://prometheus.io/docs/prometheus/latest/querying/basics/")[PromQL] para desenvolver alertas que detectavam baixo desempenho de novas implantações e possíveis ataques DDoS.
]

#v(0.6em)
#grid(
  columns: (8fr, 0.5fr, 5fr),
  align(left)[
    = Experiência de Estágio
    #text(size: 10pt, weight: "semibold")[Pesquisador em Software de Segurança]
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
      #text(weight: "regular")[Brasília, DF - Brazil]
    ]
    
    Aprimorei um Sistema de Detecção de Intrusões com aprendizado de máquina não supervisionado para fortalecer as medidas de segurança do Exército Brasileiro.
    
    #[
      #set text(size: 8pt)
      #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)

      - Configurei um servidor #link("https://www.debian.org/")[Debian] para capturar todos os pacotes de rede em modo promíscuo usando o #link("https://www.wireshark.org/")[Wireshark] e reproduzi-los em um ambiente controlado.

      - Detectei com sucesso pacotes de rede maliciosos mascarados usando o algoritmo de #link("https://en.wikipedia.org/wiki/K-means_clustering")[K-Means clustering] e processamento distribuído com #link("https://spark.apache.org/")[Spark] e #link("https://hadoop.apache.org/")[Hadoop].
    ]

    #v(0.6em)

    #text(size: 10pt, weight: "semibold")[Estagiário de Engenharia de Software]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Jan 2015 -- Apr 2015]
    ]
    #v(-0.4em)
    #link("https://web.archive.org/web/20150619063918/https://www.canassist.ca/EN/main/latest-news/2015-news-archive/canassist-welcomes-new-group-of-students.html")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[CanAssist]]
    #text(size: 8pt, weight: "semibold", fill: theme.accentColor)[at]
    #link("https://www.uvic.ca/")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[UVic]]
    #h(1fr)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("canadian-maple-leaf", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Victoria, BC - Canadá]
    ]
    
    Desenvolvi um sistema embarcado de cuidados para idosos que notifica parentes em caso de emergência.

    #[
      #set text(size: 8pt)
      #set list(marker: [#v(-0.3em)#fa-icon("angle-right", fill: theme.item, solid: true)], spacing: 0.8em)

      - Elaborei uma metodologia de #link("https://en.wikipedia.org/wiki/Regression_testing")[teste de regressão] automatizada baseada em dados, para melhorar a eficiência dos testes e garantir o alinhamento com os requisitos.

      - Garanti um baixo consumo de recursos do #link("https://www.raspberrypi.org/")[Raspberry Pi] através da rotação de logs usando as linguagens #link("https://www.cplusplus.com/")[C/C++] e o #link("https://www.qt.io/")[Qt]Framework.
    ]

  ],
  align(left)[
  ],
  align(left)[
    = Formação Acadêmica
    #text(size: 10pt, weight: "semibold")[Engenheiro DevOps de Machine Learning]
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

    #text(size: 10pt, weight: "semibold")[Engenharia de Software, Bacharelado]
    #v(-0.6em)
    #link("https://fga.unb.br/software")[#text(size: 8pt, weight: "semibold", fill: theme.accentColor)[Universidade de Brasilia (UnB)]]
    #v(-0.4em)
    #[
      #set text(size: 7.5pt, weight: "regular")
      #fa-icon("location-dot", fill: theme.item, solid: false)
      #h(0.1em)
      #text(weight: "regular")[Brasília, DF - Brazil]
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
      #text(weight: "regular")[Victoria, BC - Canadá]
      #fa-icon("canadian-maple-leaf", fill: theme.item, solid: false)
      #h(1fr)
      #fa-icon("calendar", fill: theme.item, solid: false)
      #h(0.2em)
      #text(weight: "regular")[Jan 2014 -- Apr 2015]
    ]
    = Linguagens
    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("comments", fill: theme.item, solid: true, size: 7pt)])
    
      - Portuguese #h(1fr) #text(fill: theme.accentColor)[Língua Materna]
      - English #h(1fr) #text(fill: theme.accentColor)[Fluente]
    ]
    
    #line(length: 100%, stroke: (paint: theme.divider, thickness: 1pt, dash: "dashed"))

    #[
      #set text(size: 8pt)
      #set list(marker: [#fa-icon("code", fill: theme.item, solid: true, size: 7pt)])
    
      - Python #h(1fr) #text(fill: theme.accentColor)[Avançado]
      - C/C++ #h(1fr) #text(fill: theme.accentColor)[Avançado]
      - Go #h(1fr) #text(fill: theme.accentColor)[Intermediário]
      - Rust #h(1fr) #text(fill: theme.accentColor)[Básico]
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
