%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "ancient-notation"

%% Translation of GIT committish: 341940d3830b59f93a80131471d622c2818afddb
  texidoces = "
Las indicaciones de compás también se pueden grabar en estilo antiguo.

"
  doctitlees = "Indicaciones de compás antiguas"

  texidoc = "
Time signatures may also be engraved in an old style.



"
  doctitle = "Ancient time signatures"
} % begin verbatim

{
  \override Staff.TimeSignature #'style = #'neomensural
  s1
}

