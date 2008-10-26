%% Do not edit this file; it is auto-generated from input/new
%% This file is in the public domain.
\version "2.11.62"

\header {
  texidoces = "
Se pueden establecer las propiedades de los diagramas de
posiciones de acordes por medio de @code{'fret-diagram-details}.
Para los diagramas de posiciones de FretBoard, se aplican los
overrides (sobreescrituras) al objeto @code{FretBoards.FretBoard}.
Como @code{Voice}, @code{FretBoards} es un contexto del nivel
inferior, y por tanto se puede omitir su nombre en la
sobreescritura de propiedades.

"
  doctitlees = "Personalizar los diagramas de posiciones"

  lsrtags = "fretted-strings,tweaks-and-overrides"

  texidoc = "Fret diagram properties can be set through
@code{'fret-diagram-details}.  For FretBoard fret diagrams,
overrides are applied to the @code{FretBoards.FretBoard} object.
Like @code{Voice}, @code{FretBoards} is a bottom level context,
therefore can be omitted in property overrides.

"
  doctitle = "Customizing fretboard fret diagrams"
} % begin verbatim

\include "predefined-guitar-fretboards.ly"
\storePredefinedDiagram \chordmode { c' }
                        #guitar-tuning
                        #"x;1-1-(;3-2;3-3;3-4;1-1-);"
<<
  \new ChordNames {
    \chordmode { c1 c c d }
  }
  \new FretBoards {
    % Set global properties of fret diagram
    \override FretBoards.FretBoard #'size = #'1.2
    \override FretBoard #'fret-diagram-details
                                  #'finger-code = #'in-dot
    \override FretBoard #'fret-diagram-details
                                  #'dot-color = #'white
    \chordmode {
      c
      \once \override FretBoard #'size = #'1.0
      \once \override FretBoard #'fret-diagram-details
              #'barre-type = #'straight
      \once \override FretBoard #'fret-diagram-details
              #'dot-color = #'black
      \once \override FretBoard #'fret-diagram-details
              #'finger-code = #'below-string
      c'
      \once \override FretBoard #'fret-diagram-details
              #'barre-type = #'none
      \once \override FretBoard #'fret-diagram-details
              #'number-type = #'arabic
      \once \override FretBoard #'fret-diagram-details
              #'orientation = #'landscape
      \once \override FretBoard #'fret-diagram-details
              #'mute-string = #"M"
      \once \override FretBoard #'fret-diagram-details
              #'label-dir = #-1
      \once \override FretBoard #'fret-diagram-details
              #'dot-color = #'black
      c'
      \once \override FretBoard #'fret-diagram-details
              #'finger-code = #'below-string
      \once \override FretBoard #'fret-diagram-details
              #'dot-radius = #0.35
      \once \override FretBoard #'fret-diagram-details
              #'dot-position = #0.5
      \once \override FretBoard #'fret-diagram-details
              #'fret-count = #3
      d
    }
  }
  \new Voice {
    c'1 c' c' d'
  }
>>
