\version "2.22.1"
\language "english"

\header {
  dedication = "Glückwunschkantate zum Jahrestage der Königswahl Augusts III."
  title      = "Preise dein Glücke, gesegnetes Sachsen"
  subtitle   = "Dramma per musica"
  composer   = "J. S. Bach"
  opus       = "BWV 215"
  instrument = "Flauto traverso II"
  piece      = "9. Coro"
  copyright  = "© 2022 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
  tagline    = "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
}

dashPlus = "trill"

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
