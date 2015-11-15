%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.32"

\header {
  lsrtags = "editorial-annotations, really-cool, text"

  texidoc = "
The @code{\\whiteout} command underlays a markup with a white box.
Since staff lines are in a lower layer than most other grobs, this
white box will not overlap any other grob.

"
  doctitle = "Blanking staff lines using the \\whiteout command"
} % begin verbatim

\layout {
  ragged-right = ##f
}

\relative c' {
  \override TextScript.extra-offset = #'(2 . 4)
  c2-\markup { \whiteout \pad-markup #0.5 "middle C" } c
}
