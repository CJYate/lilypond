%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "editorial-annotations, chords, keyboards, fretted-strings"

%% Translation of GIT committish: 341940d3830b59f93a80131471d622c2818afddb
  texidoces = "
Se puede controlar con precisión la colocación de los números de
digitación.  Para que se tenga en cuenta la orientación de las
digitaciones, se debe utilizar una construcción de acorde <> aunque
sea una sola nota.


"
  doctitlees = "Controlar la colocación de las digitaciones de acordes"


%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Die Position von Fingersatzzahlen kann exakt kontrolliert werden.

"
  doctitlede = "Position von Fingersatz in Akkorden kontrollieren"
%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
Le positionnement des doigtés peut être contrôlé de manière très précise.

"
  doctitlefr = "Conrôle du positionnement des doigtés"


  texidoc = "
The placement of fingering numbers can be controlled precisely. For
fingering orientation to apply, you must use a chord construct <> even
if it is a single note.

"
  doctitle = "Controlling the placement of chord fingerings"
} % begin verbatim

\relative c' {
  \set fingeringOrientations = #'(left)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down right up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(left)
  <c-1>2
  \set fingeringOrientations = #'(down)
  <e-3>2
}


