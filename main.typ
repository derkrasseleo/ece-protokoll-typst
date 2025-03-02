#import "layout.typ"
#import "@preview/unify:0.7.1": num,qty,numrange,qtyrange,unit
#import "@preview/hydra:0.6.0": hydra

#set text(lang: "de", region: "at")
#set page(paper: "a4", 
  margin: (bottom: 4cm, top: 2.5cm, left: 2.5cm, right: 2.5cm),
  header: context {
  if calc.odd(here().page()) {
    align(right, text(weight: "bold", hydra(1)))
  } else {
    align(right, text(weight: "bold", hydra(1)))
  }
})
#set text(font: ("Cambria", "Caladea"), size: 11pt)

#set heading(numbering: "1.")
#show heading.where(level: 1): it => pagebreak(weak: true) + it
#set par(justify: true)
#set block(above: 1.5em)

#let code(content) = block[
  set text(font: "Courier New")
  set background(fill: lightgray)
  set padding(4pt)
  content
]

#let title = "Analoge Signalverarbeitung"
#let subtitle = "Laborübung 1"
#let name = "Paul Bichl, Leo Traußnigg"
#let date = "02.03.2025"

#let logo = image("Bilder/logo_FHJ_ECE_white.eps.png", width: 3in, height: 1in)

#show figure.caption: it => [
    #text(weight: "bold")[
      #it.supplement #context it.counter.display(it.numbering):]
    #it.body 
]

#show figure.where(
  kind: table
): set figure.caption(position: top)

#show figure.caption.where(
  kind: table
): set align(left)

#align(right + top, logo)

#align(center + horizon, block[
#text(weight: "bold", size: 24pt)[#title]

#text(weight: "bold", size: 20pt)[#subtitle]
])

#align(left + bottom, block[
#text(size: 11pt)[#name]\
#text(size: 11pt)[#date]
])

#pagebreak()
#set heading(numbering: "1.")

#show outline.entry.where(
  level: 1
): set block(above: 1.2em)
#outline(title: "Inhalt")

#pagebreak()
#counter(page).update(1)
#set page(numbering: "1", number-align: right)

= Operationsverstärker
== Einleitung
Das ist ein "Test"
#lorem(60)

== Schaltplan

#figure(image("Bilder/schematics/ET2_LAB4_RLC.png", width: 75%), caption: [Das ist eine Schaltung])

== Berechnungen 
Diesmal keine Berechnungen, aber
=== Abildungen

#figure(
  table(
    columns: (auto, 1fr, 1fr),
  [], [*Berechnet*], [*Gemessen*],
  [L in mH], [$num("102.34e3")$], [1],
  [C in nF], [1], [1],
  [R in $Omega$], [1], [1],
  [$R_L$ in $unit("Ohm")$], [1], [1],
  [$R_F$ in $Omega$], [1], [1],
  ),
  caption: [Gemessene und berechnete Werte])


== Schluss
#lorem(600)

#pagebreak()

= Geräteverzeichnis
\
- Keysight U1733C (LCR-Messgerät)
- Keysight InfiniiVision DSO-X 3014T (Oszilloskop)
- Keysight 33500B Series (Signalgenerator)
- Keysight 1233A (Handmultimeter)
- Keysight 34450A (Tischmultimeter)

#pagebreak()

= Unterschriften

#align(bottom)[
  #table(stroke: none, columns: (2fr, auto), 
  [#image("Bilder/Unterschrift_Leo_Traussnigg.png", width: 130%)], 
  [#align(right)[#image("Bilder/Unterschrift_Paul_Bichl.png", width: 60%)]],
  [Leo Traußnigg], [#align(right)[Paul Bichl]],
  [#date], [#align(right)[#date]])]