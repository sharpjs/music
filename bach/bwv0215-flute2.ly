\version "2.22.1"
\language "english"

\header {
  dedication = "Glückwunschkantate zum Jahrestage der Königswahl Augusts III."
  title      = "Preise dein Glücke, gesegnetes Sachsen"
  subtitle   = "Dramma per musica   BWV 215"
  composer   = "J. S. Bach"
  opus       = #f % unused due to placement
  instrument = "Flauto traverso II"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column {
    "© 2022 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

dashPlus = "trill"

% Time reference: https://www.youtube.com/watch?v=8da0KuW3SE0

\score {
  \header {
    piece = "1. Coro"
  }
  \relative c'' {
    \key d \major
    \time 3/8
    \compressEmptyMeasures
    \override Staff.MultiMeasureRest.space-increment = 0

    \repeat volta 2 {
      % [1] 0:37
      r8 r d32( e fs g |

      % [2] 0:38 "Theme"
      a8) a a | d a16 fs g e |
      fs8 fs fs | a fs16 d e cs |
      d8 d d | d16 fs e cs d e | fs a g e fs d | a8 r e' |

      d r cs | d r a | e' r d | cs r d32( e fs g |
      a8) a a | d a16 fs g e | fs8 fs fs | c' b16 g a fs |
      g8 e e | e' d16 cs? d b | cs8 a, a | \break a' g16 fs g e |

      fs e fs g a fs | d cs d e fs d | b8 b' a | g16 fs e4~ |
      e16 d e fs g e | cs b cs d e cs | a8 a' g | \break fs16 e d8 c~ |
      c16 b e cs d b | cs a fs' d e cs | d8 e cs | d4 r8 | \bar "||"

      % [34] 1:10
      R4. | r8 a'16 fs g e | d8 a16 d cs e | d e fs8 cs |
      a fs cs' | a16 g' fs e d fs | e d cs b cs a | fs' g a8 cs, | d cs16 b a g | fs8 d r |
      R4. | r8 a'16( b32 cs d e fs g | a8) g fs | e4 r8 | \break

      % [48] 1:26
      r8 a a | a r r | R4. |
      r8 g b | a r r | R4. |
      r8 d, as | fs r r | r r d' |

      % [57] 1:35
      a' a a | d a16 fs g e | fs e fs g a8~ |
      a16 b a g a e | fs g a g fs e | d e cs d e cs | d cs d e fs8~ |
      fs16 g fs e fs cs | d cs b cs d fs | e g fs e fs a | g a b c d8~ |
      d d,16 c d8~ | d16 e fs g a fs | g e c'8 ds, | e16 d? e fs g e |

      % [72] 1:51
      a8 e e | e r r | R4. |
      r8 d fs | e r r | R4. |
      r8 a es | cs r r | \break r r a32( b cs d |

      % [81] 2:01
      e8) e16 e e e | a8 e16 cs d b | cs b cs d e8~ |
      e16 fs e d e b | cs d e d cs b | a b gs a b gs | a gs a b cs8~ | \break
      cs16 d cs a b gs | a gs fs gs a cs | b d cs b cs e | d e fs g a8~ |
      a a,16 gs a8~ | a16 b cs d e cs | d b g'8 cs, | b fs r |

      % [96] 2:16
      r8 b16 g a fs | g8 r r | r8 e'16 cs d b | cs8 r r |
      r8 a16 fs g e | fs8 r r | r8 d'16 b c a | b8 r r |
      r8 g16 e fs d | e8 r r | r8 cs'16 as b gs | as8 r r |
      r8 fs'16 d e cs | d8 r r | r8 b16 gs a fs | gs8 r16 e' d e |

      % [112] 2:34
      cs b a cs b d | cs b cs d b cs |
      d8 a16 d cs e | \break d8 r a | e' r d | cs r a32( b64 cs d e fs g |

      % [118] 2:40
      a8) a a | d a16 fs g e | fs8 fs fs | c' b16 g a fs |
      g8 e e | e' d16 cs? d b | cs8 a, a | \break a' g16 fs g e |

      % [126] 2:49
      fs e fs g a fs | d cs d e fs d | b8 b' a | g16 fs e4~ |
      e16 d e fs g e | cs b cs d e cs | a8 a' g | \break fs16 e d8 c~ |
      c16 b e cs d b | cs a fs' d e cs | d8 e cs | d4 r8 | \bar "||"

      % [138] 3:01
      R4.*3 | r8 r d |
      e16 d cs b cs a | fs' g a8 cs, | \break d cs16 b a g | fs8 d r |
      R4. | r8 r a'' | fs d cs | d4 \breathe d32( e fs g | \bar "||"

      % [150] 3:14 "Theme"
      a8) a a | d a16 fs g e |
      fs8 fs fs | a fs16 d e cs |
      d8 d d | \break d16 fs e cs d e | fs a g e fs d | a8 r e' |

      d r cs | d r a | e' r d | cs r d32( e fs g |
      a8) a a | \break d a16 fs g e | fs8 fs fs | c' b16 g a fs |
      g8 e e | e' d16 cs? d b | cs8 a, a | a' g16 fs g e |

      fs e fs g a fs | d cs d e fs d | b8 b' a | \break g16 fs e4~ |
      e16 d e fs g e | cs b cs d e cs | a8 a' g | fs16 e d8 c~ |
      c16 b e cs d b | cs a fs' d e cs | d8 e cs | d4 \fermata r8 | \bar "||"

      % [182] 3:48 "Interlude"
      R4.*7 \break | r8 fs16 d e cs | a8 r r |
      R4.*6 | r8 r cs'8~ | cs b16 a gs a | es8 r r |
      R4. | r8 r a,~ | a gs16 a b gs | a fs gs8 r |
      R4. | r8 fs'16 b as cs | b8 fs b~ | b a16 fs gs es | fs8 gs es | fs cs16 fs es gs | fs8 r r |

      R4.*2 | r8 cs16 a b gs | e8 r r |
      R4.*3 | b'8 e d~ | d cs16 d e8 | a, d16( b) cs( fs) |
      b, a b cs gs b | e, gs a cs b e | cs b a gs a cs | fs8 gs-+ a | gs fs16 e r8 |
      r r a,~ | a16 cs d fs e8 | R4. | r8 r e~ | e d16 cs d8 | d16 b cs a b gs |
      a b cs d e fs | \slurDashed g( fs) fs( e) e( fs) \slurSolid |
      fs e d cs d b | a gs fs e e'8 | a, cs16 b a gs | a4. |
    }
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    }
  }
}

\pageBreak
\score {
  \header {
    piece = "9. Coro"
  }
  \relative c'' {
    \key d \major
    \time 6/8

    \repeat volta 2 {
      fs8. g16 fs8 fs a16 g fs e | d8 g a b4 a8 | g8. a16 g8 g a16 g fs e | fs8 a gs a4. |
    }
    \repeat volta 2 {
      e8. fs16 e8 \grace { e32( fs } g8) fs a~ | a g fs fs-+ e16 fs g e | a8. b16 cs8 d d, b' | a g16 fs e fs d4. |
    }

    fs8 g16 fs e d a'8 e8. d32 e | fs8 cs d \grace { d( } cs) \grace { b( } a) e'~ | e16 d e8 e~ e16 cs d b g'8 | fs e16 d cs b as8. as16 b cs |
    d8. e16 d8 d fs16 e d cs | b8 e fs g4 fs8 | e8 d16 cs e8~ e d16 cs fs8 | d b as b8. cs16 d e |

    \repeat volta 2 {
      fs8. g16 fs8 fs a16 g fs e | d8 g a b4 a8 | g8. a16 g8 g a16 g fs e | fs8 a gs a4. |
    }
    \repeat volta 2 {
      e8. fs16 e8 \grace { e32( fs } g8) fs a~ | a g fs fs-+ e16 fs g e | a8. b16 cs8 d d, b' | a g16 fs e fs d4. |
    }

    r4 r8 b cs16 b as cs | b8 e16 d cs e d8 fs b~ | b b b~ b a d | cs b16 a gs fs es4. |
    fs8. gs16 es8 fs fs fs | fs b, cs d4 cs8 | b16 cs d8 b gs'16 fs gs8 cs, | cs fs es fs4. |

    \repeat volta 2 {
      fs8. g16 fs8 fs a16 g fs e | d8 g a b4 a8 | g8. a16 g8 g a16 g fs e | fs8 a gs a4. |
    }
    \repeat volta 2 {
      e8. fs16 e8 \grace { e32( fs } g8) fs a~ | a g fs fs-+ e16 fs g e | a8. b16 cs8 d d, b' | a g16 fs e fs d4. |
    }
  }
}
