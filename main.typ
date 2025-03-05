#import "template.typ": *
#import "signatures.typ": *

#show: template.with(title: "Labor", subtitle: "Laborübung 1", names: "Paul Bichl, Leo Traußnigg", startDate: "02.03.2025")

= Operationsverstärker
== Einleitung
#lorem(60)

== Schaltplan

#figure(image("Bilder/schematics/ET2_LAB4_RLC.png", width: 75%), caption: [Das ist eine Schaltung])

== Berechnungen 
Diesmal keine Berechnungen, aber
$ integral_(t=0)^(t=1)(sqrt(a^2+b^2)) $
$ sum_(k=0)^n k $

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

#show: signatures