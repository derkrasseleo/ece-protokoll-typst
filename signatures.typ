#let endDate = "03.03.2025"

#let signatures = doc => {

pagebreak()

heading("Geräteverzeichnis")

linebreak()

list(
[Keysight U1733C (LCR-Messgerät)],
[Keysight InfiniiVision DSO-X 3014T(Oszilloskop)],
[Keysight 33500B Series (Signalgenerator)],
[Keysight 1233A (Handmultimeter)],
[Keysight 34450A (Tischmultimeter))])

pagebreak()

heading("Unterschriften")

align(bottom)[
  #table(stroke: none, columns: (2fr, auto), 
  [#image("Bilder/Unterschrift_Leo_Traussnigg.png", width: 130%)], 
  [#align(right)[#image("Bilder/Unterschrift_Paul_Bichl.png", width: 60%)]],
  [Leo Traußnigg], [#align(right)[Paul Bichl]],
  [#endDate], [#align(right)[#endDate]]
  )]
}