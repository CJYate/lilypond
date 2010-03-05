%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "chords"

%% Translation of GIT committish: 341940d3830b59f93a80131471d622c2818afddb
  texidoces = "
Las alteraciones y los signos «más» pueden aparecer antes o
después de los números, según el valor de las propiedades
@code{figuredBassAlterationDirection} y
@code{figuredBassPlusDirection}.

"
  doctitlees = "Cambiar las posiciones de las alteraciones del bajo cifrado"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Versetzungszeichen und Pluszeichen können vor oder nach den Ziffern erscheinen,
je nach den Einstellungen der @code{figuredBassAlterationDirection} und
@code{figuredBassPlusDirection}-Eigenschaften.

"
  doctitlede = "Positionen von Generalbass-Alterationszeichen verändern"

  texidoc = "
Accidentals and plus signs can appear before or after the numbers,
depending on the @code{figuredBassAlterationDirection} and
@code{figuredBassPlusDirection} properties.

"
  doctitle = "Changing the positions of figured bass alterations"
} % begin verbatim

\figures {
  <6\+> <5+> <6 4-> r
  \set figuredBassAlterationDirection = #RIGHT
  <6\+> <5+> <6 4-> r
  \set figuredBassPlusDirection = #RIGHT
  <6\+> <5+> <6 4-> r
  \set figuredBassAlterationDirection = #LEFT
  <6\+> <5+> <6 4-> r
}

