%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "vocal-music, chords, template"

%% Translation of GIT committish: 341940d3830b59f93a80131471d622c2818afddb
  texidoces = "
Esta plantilla facilita la preparación de una canción con melodía,
letra y acordes.

"
  doctitlees = "Plantilla de pentagrama único con música letra y acordes"

%% Translation of GIT committish: 06d99c3c9ad1c3472277b4eafd7761c4aadb84ae
  texidocja = "
これは旋律、単語、コードを持つ歌曲の楽譜のためのテンプレートです。
"
%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Mit diesem Beispiel können Sie einen Song mit Melodie,
Text und Akkorden schreiben.
"

  doctitlede = "Vorlage für eine Notenzeile mit Noten Text und Akkorden"

%% Translation of GIT committish: 9ba35398048fdf1ca8c83679c7c144b1fd48e75b
  texidocfr = "
Ce cannevas comporte tous les éléments d'une chanson : la mélodie,
les paroles, les accords.

"
  doctitlefr = "Paroles musique et accords"

  texidoc = "
This template allows the preparation of a song with melody, words, and
chords.

"
  doctitle = "Single staff template with notes lyrics and chords"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

harmonies = \chordmode {
  a2 c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}

