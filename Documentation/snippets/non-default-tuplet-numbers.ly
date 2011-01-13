% Do not edit this file; it is automatically
% generated from Documentation/snippets/new
% This file is in the public domain.
%% Note: this file works from version 2.13.36
\version "2.13.36"

\header {
%% Translation of GIT committish: a874fda3641c9e02f61be5c41b215b8304b8ed00
  texidoces = "
LilyPond también proporciona funciones de formato para imprimir
números de grupo especial diferentes a la propia fracción, así
como para añadir una figura al número o a la fracción de la
agrupación.

"

  doctitlees = "Números de agrupación especial distintos a los predeterminados"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
LilyPond stellt auch Formatierungsfunktionen zur Verfügung, mit denen
N-tolennummern gesetzt werden können, die sich von dem eigentlichen Bruch
unterscheiden.  Auch ein Notenwert kann zu Nenner oder Zähler des Bruchs
hinzugefügt werden.
"
  doctitlede = "Nicht-standard-N-tolennummern"


%% Translation of GIT committish: 015b8e65e5e9a74cea1618b597402b5b74f89b89
  texidocfr = "
LilyPond sait aussi gérer des nolets dont le chiffrage imprimé ne
correspond pas exactement à la fraction de mesure à laquelle ils se
réfèrent, tout comme ceux auxquels une valeur de note vient en complément
au chiffre.
"
  doctitlefr = "Nolets au chiffrage inhabituel"

  lsrtags = "rhythms"

  texidoc = "
LilyPond also provides formatting functions to print tuplet numbers different
than the actual fraction, as well as to append a note value to the tuplet
number or tuplet fraction.
"
  doctitle = "Non-default tuplet numbers"
} % begin verbatim


\relative c'' {
  \once \override TupletNumber #'text =
    #(tuplet-number::non-default-tuplet-denominator-text 7)
  \times 2/3  { c4. c4. c4. c4. }
  \once \override TupletNumber #'text =
    #(tuplet-number::non-default-tuplet-fraction-text 12 7)
  \times 2/3  { c4. c4. c4. c4. }
  \once \override TupletNumber #'text =
    #(tuplet-number::append-note-wrapper
      (tuplet-number::non-default-tuplet-fraction-text 12 7) "8")
  \times 2/3  { c4. c4. c4. c4. }

  \once \override TupletNumber #'text =
    #(tuplet-number::append-note-wrapper
      tuplet-number::calc-denominator-text "4")
  \times 2/3  { c8 c8 c8 c8 c8 c8 }
  \once \override TupletNumber #'text =
    #(tuplet-number::append-note-wrapper
      tuplet-number::calc-fraction-text "4")
  \times 2/3  { c8 c8 c8 c8 c8 c8 }

  \once \override TupletNumber #'text =
    #(tuplet-number::fraction-with-notes "4." "8")
  \times 2/3  { c4. c4. c4. c4. }
  \once \override TupletNumber #'text =
    #(tuplet-number::non-default-fraction-with-notes 12 "8" 4 "4")
  \times 2/3  { c4. c4. c4. c4. }
}
