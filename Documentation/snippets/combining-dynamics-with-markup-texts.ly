%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "expressive-marks, text"

%% Translation of GIT committish: 341940d3830b59f93a80131471d622c2818afddb
  texidoces = "
Ciertas indicaciones dinámicas pueden llevar textos (como @qq{più
forte} o @qq{piano subito}). Se pueden producir usando un bloque
@code{\\markup}.

"
  doctitlees = "Combinar indicaciones dinámicas con marcados textuales"

  texidoc = "
Some dynamics may involve text indications (such as @qq{più forte} or
@qq{piano subito}). These can be produced using a @code{\\markup}
block.

"
  doctitle = "Combining dynamics with markup texts"
} % begin verbatim

piuF = \markup { \italic più \dynamic f }
\layout { ragged-right = ##f }
\relative c'' {
  c2\f c-\piuF
}


