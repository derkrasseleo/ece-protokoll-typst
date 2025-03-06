# ece-protokoll-typst
Typst Laborrotokollvorlage für den Studiengang ECE
## Setup
- VSCode
  - Tinymist Plugin

## ToDo's
- [x] Generelle Formatierung (Schriftgröße, Zeilenabstände)
- [x] Kopf- und Fußzeile
- [x] Deckblatt
- [x] Inhaltsverzeichnis
- [x] Geräteverzeichnis
- [x] Unterschriften
- [ ] Fußnoten
- [ ] Quellenangaben
- [ ] Anhang
  - [ ] Matlab Skripten
  - [ ] Anderer Code (Arduino)
  - [ ] 
### Matlab Skript Integration
- WIP
- Workaround:
  - MATLAB als Markdown oder Jupyter Notebook exportieren (LaTeX funktioniert wegen fehlenden Packages nicht so gut)
  - Pandoc verwenden, um in typst zu konvertieren `pandoc --from ipynb --to typst --no-highlight matlab.ipynb -o matlab.typ`
  - oder [das Online Tool verwenden](https://pandoc.org/try/)
