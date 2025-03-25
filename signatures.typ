#let endDate = "03.03.2025"

#let signatures = doc => {

pagebreak()

heading("Geräteverzeichnis")
list(
[Keysight U1733C (LCR-Messgerät)],
[Keysight InfiniiVision DSO-X 3014T (Oszilloskop)],
[Keysight 33500B Series (Signalgenerator)],
[Keysight 1233A (Handmultimeter)],
[Keysight 34450A (Tischmultimeter)])

pagebreak()

heading("Unterschriften")

align(bottom)[
  #table(stroke: none, columns: (2fr, auto), 
  [#image("Bilder/Unterschrift_Autor1.png", width: 130%)], 
  [#align(right)[#image("Bilder/Unterschrift_Autor2.png", width: 60%)]],
  [Autor1], [#align(right)[Autor2]],
  [#endDate], [#align(right)[#endDate]]
  )]
}
