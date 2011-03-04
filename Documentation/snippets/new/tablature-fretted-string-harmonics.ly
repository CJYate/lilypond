\version "2.13.49"

\header {
  lsrtags = "fretted-strings"
  texidoc = "
Fretted-string harmonics:
"
  doctitle = "Fretted-string harmonics in tablature"
}

pinchedHarmonics = {
   \textSpannerDown
   \override TextSpanner #'bound-details #'left #'text =
      \markup {\halign #-0.5 \teeny "PH" }
      \override TextSpanner #'style =
         #'dashed-line
   \override TextSpanner #'dash-period = #0.6
   \override TextSpanner #'bound-details #'right #'attach-dir = #1
   \override TextSpanner #'bound-details #'right #'text =
      \markup { \draw-line #'(0 . 1) }
   \override TextSpanner #'bound-details #'right #'padding = #-0.5
}

harmonics = {
  %artificial harmonics (AH)
  \textLengthOn
  <\parenthesize b b''\harmonic>4_\markup{ \teeny "AH 16" }
  <\parenthesize g g''\harmonic>4_\markup{ \teeny "AH 17" }
  <\parenthesize d' d'''\harmonic>2_\markup{ \teeny "AH 19" }
  %pinched harmonics (PH)
  \pinchedHarmonics
  <a'\harmonic>2\startTextSpan
  <g'\harmonic>4
  <e'\harmonic>4\stopTextSpan
  %tapped harmonics (TH)
  <\parenthesize g\4 g'\harmonic>4_\markup{ \teeny "TH 17" }
  <\parenthesize a\4 a'\harmonic>4_\markup{ \teeny "TH 19" }
  <\parenthesize c'\3 c''\harmonic>2_\markup{ \teeny "TH 17" }
  %touch harmonics (TCH)
  a4( <e''\harmonic>2. )_\markup{ \teeny "TCH" }
}

frettedStrings = {
  %artificial harmonics (AH)
  \harmonicByFret #4 g4\3
  \harmonicByFret #5 d4\4
  \harmonicByFret #7 g2\3
  %pinched harmonics (PH)
  \harmonicByFret #7 d2\4
  \harmonicByFret #5 d4\4
  \harmonicByFret #7 a4\5
  %tapped harmonics (TH)
  \harmonicByFret #5 d4\4
  \harmonicByFret #5 d4\4
  \harmonicByFret #4 g2\3
  %touch harmonics (TCH)
  a4 \harmonicByFret #9 g2.\3
}

\score {
  <<
    \new Staff {
      \new Voice {
        \clef "treble_8"
        \harmonics
      }
    }
    \new TabStaff {
      \new TabVoice {
        \frettedStrings
      }
    }
  >>
}
