\version "2.24.3"
\language "english"

\paper {
  #(set-paper-size "letter")
}

\header {
  dedication = #f % "Header"
  title      = "9. Ô France!"
  subtitle   = "du III. Livre d'airs à quatre parties, sur la Paix & le mariage du Roy"
  composer   = "Nicolas Metru"
  instrument = "Dessus & haut-contre"
  opus       = #f % unused due to placement
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column {
    "Engraving © 2024 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

trill = #prallprall
dashPlus = \trill

\score {
  \new StaffGroup <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBar

    \new Staff \with { instrumentName = "Dessus" } \relative c' {
      \override Staff.TimeSignature.style              = #'single-digit % French baroque time signature
      \override Staff.NoteHead.style                   = #'baroque      % baroque style breve
      \override Staff.MultiMeasureRest.space-increment = 0              % multi-measure rests same width
      \compressEmptyMeasures                                            % no empty measures after breve

      \key c \major
      \repeat volta 2 {
        \time 3/2 e'1. \breathe |
        \once \override Staff.TimeSignature.style = #'default
        \time 4/4 f1 | e2 d2 \breathe |
        \time 2/2 g4. g8 f4. g8 | e2 c2 \breathe |
        c4 d4 e4-+ e4 | fs4 g4 fs2-+ | g2 \breathe r4 f4 |
        e4 e4 f4. e8 | d4 d4 e2 \breathe |
        d2 cs4 cs4 | d2. a4 | b2 c2 | \afterGrace c2( { b16 a16) } b2\upmordent | c1 |
      }
      \break
      \repeat volta 2 {
        \time 3/2 c1.-^ | e1-^ g2 | f2 e2 d2 | d2. \breathe e4 f2 |
        e2.-+ d4 cs2 | d2 d2 e2 \afterGrace c2( d8) b2~-+ b2 | a\breve \fermata
      }
      \fine
    }

    \new Staff \with { instrumentName = "Haute-contre" }  \relative c' {
      \override Staff.TimeSignature.style              = #'single-digit % French baroque time signature
      \override Staff.NoteHead.style                   = #'baroque      % baroque style breve
      \override Staff.MultiMeasureRest.space-increment = 0              % multi-measure rests same width
      \compressEmptyMeasures                                            % no empty measures after breve

      \key c \major
      \repeat volta 2 {
        \time 3/2 a'1. \breathe |
        \once \override Staff.TimeSignature.style = #'default
        \time 4/4 a1 | g4.( a8) b2 \breathe |
        \time 2/2 b4 b4 b4 b4 | g2 a2 \breathe |
        e4 a4 g4. g8 | a8( b16 c16 b4) a2 | g2 \breathe e2 |
        g4 g4 a4 a4 | d,4 g4 g2 \breathe |
        g2 g4 a4 | fs4.( g8) a2 | g2 g2 | g1 | e1 |
      }
      \break
      \repeat volta 2 {
        \time 3/2 a1.-^ | c1-^ c2 | f,2 g2 g2 | g2. \breathe g4 a2 |
        a2 e2 g2 | a2 g4.( a8) b2 | a2. a4( gs2 \mordent) | a\breve \fermata
      }
      \fine
    }
  >>

  \layout {
    indent = 3.0\cm
  }
}
