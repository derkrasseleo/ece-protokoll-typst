#import "@preview/unify:0.7.1": num,qty,numrange,qtyrange,unit
#import "@preview/hydra:0.6.0": hydra

#let logo = image("Bilder/logo_FHJ_ECE_white.png", width: 3in, height: 1in)
// (body, title:"Title")
#let template(title:"Titel", subtitle:"Subtitel", names:"Max Mustermann", startDate:"01.01.2000", body) = {
    set text(lang: "de", region: "at")
set page(paper: "a4", 
  margin: (bottom: 4cm, top: 2.5cm, left: 2.5cm, right: 2.5cm),
  header: context {
  if calc.odd(here().page()) {
    align(right, text(weight: "bold", hydra(1)))
  } else {
    align(right, text(weight: "bold", hydra(1)))
  }
})
set text(font: ("Cambria", "Caladea"), size: 11pt)

// set heading(numbering: "1.")
// show heading.where(level: 1): it => pagebreak(weak: true) + it
set par(justify: true)
set block(above: 1.5em)

let code(content) = block[
  #set text(font: "Courier New")
  #set background(fill: lightgray)
  #set padding(4pt)
  content
]

show heading.where(
  level: 1
): it => text(
  size: 18pt,
  weight: "bold",
   it,
)

show figure.caption: it => [
    #text(weight: "bold")[
      #it.supplement #context it.counter.display(it.numbering):]
    #it.body 
]

show figure.where(
  kind: table
): set figure.caption(position: top)

show figure.caption.where(
  kind: table
): set align(left)

align(right + top, logo)

align(center + horizon, block[
#text(weight: "bold", size: 24pt, title)

#text(weight: "bold", size: 20pt, subtitle)
])

align(left + bottom, block[
#text(size: 11pt, names)\
#text(size: 11pt, startDate)
])

pagebreak()
set heading(numbering: "1.")

show outline.entry.where(
  level: 1
): set block(above: 1.2em)
outline(title: "Inhalt")

pagebreak()
counter(page).update(1)
set page(numbering: "1", number-align: right)
body
  //align(center, text(p_title, size: 2em))
//body
}