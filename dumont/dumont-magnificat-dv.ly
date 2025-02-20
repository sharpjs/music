\version "2.24.4"
\include "../common.ly"

\header {
  dedication = #f % "Header"
  title      = "Magnificat"
  subtitle   = "Grand motet ~ interprété par Les Epopées"
  composer   = "Henry Dumont"
  opus       = #f % unused due to placement
  instrument = "Dessus de violon, hautbois et flûtes"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column \small {
    "Engraving © 2025 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

\new Score <<
  \new ChoirStaff <<

    \new Staff \with {
      instrumentName = \markup \right-column { "1. dessus" "de violon" }
    }
    \relative c'' {
      \sectionLabel "Magnificat"
      \phraseLabel "Symphonie"
      \tempo "gracieusement"
      \time-c

      \after 2 _\expr f1~\mp | f2 g | \ap g4^> a1~ | a2
      g~ | g f~ | f \after 4 _\ce e | \after 4 \fe \after 2 ^\am f1
      g1 | a2 d, | r a'~ | a4 g \bar "!" \endPhrase f e |

      d1~ | d2 e | a,2. b4 | \ap b8 c2. bf4 | a1\tr |
      a | bf2. b4 | cs2 d2~ | d_\ce cs | d1\fe |

      \section
      \sectionLabel "Et exultavit"
      \tempo "rondement"

      R1*3 |
      r2 r8 f8\f \ac e d d | e8. e16 e4 c8. c16 c4 |
      r2 r8 e e e | \ac e f f e g \ac g c,4 c |
      r8 c f f \ag f4( e8) d4 | c8. c16 c4 c2 | c2 r2 |
      r2 r8 c f f | \ac f e4 e r f~ |
      f8 f f2 d4~ | d8 e16 f g4 c,2 |
      R1*2 |
      r4 r8 e f4 f8 d | \ac d c4 c r2 |
      r4 a a a8 c | bf4 bf bf4. bf8 | a4_\ce a' a2\tf | a2\fe

      \section
      \sectionLabel "Quia respexit"
      \phraseLabel "Ritournelle"
      \tempo "gracieusement"

      r8 d,\p d8. e16 | f8. f16 e8. g16 f2 | e2
      r8 e8 f g | a f c'8. c16 c4 f, | g a bf2 |
      r8 bf a g a a g8. f16 | e2 a | d,4 g4. e8 f4~ \endPhrase |
      f g a2 | R1*5 |

      \who "violons"
      r4 c,8. c16 c4 cs8. d16 | d4 fs8. fs16 fs4 fs8. g16 |
      g4 f4. f8 e8. f16 | f4 f r2 |
      R1*2 | r4 

      \tempo "rondement"
      \who "tous"
      e8\f e d cs d a | d d d4

      \tempo "gracieusement"
      cs2\tr | R1 | r2 r4

      \tempo "rondement"
      d8 d | c b c d g,4. a8 | b g b b c4 c | e8 d c a b b e e |
      cs cs cs cs d4 d | r g8 g e e c c | c4 f8 d e4
      e | d a8 a d d d d | g,4 g r c | d d d2 |
      r4 d8 d g g g g | c,4 d8 d cs4 d | e2

      r2 | r r8 a,8 a4 |
      c8. d16 e8 e e a, e'4 |
      cs8. cs16 d8 d d g e c |
      c f d g g f e4 |

      d4.\fe

      \section
      \sectionLabel "Et misericordia"
      \tempo "gracieusement"

      \who "violons"
      r8 r2 |
    }

    \new Staff \with {
      instrumentName = \markup \right-column { "2. dessus" "de violon" }
    }
    \relative c'' {
      \time-c

      \after 2 _\expr d1~\mp | d2 e | \ap e4^> f1~ | f2
      e4 d | c2\prallup d4 c | bf\tr a g c~_\ce | c c\fe
      \ap { a32-> bf } c2^\am~ | c e | d1 | cs2\prallup d4 e | \ap e16 f4 g a2\tr |

      \ag bf1( c16) | a2.\trill g4 | f1 | e1 | c1 |
      d1 | d2. e4 | e2 \ag a, \tuplet 6/4 { a32( bf c d e f) } |
      \ac g8 a2._\ce g4 | fs1\tr\fe |

      \section % Et exultavit

      R1*3 |

      r2 r4 r8 a8\f | a e g g \ac g8 a8. a16 a4 |
      \ag g2( f16) e8 e a a | \ac g a-- a g g f4\tr f |
      r a4. a8 g f | e8. e16 f8. f16 f4( e)\tr | f2\mf r2 |

      r8 g\f g e f f f d | \ac d8 e4 e a8. a16 a4 |
      f f f8. f16 f4 | g2 a\mf |

      R1*2 | r8 e\f \ac g a4 f4. f8 | \ac g a4 a r2 |
      r4 f e8\prall f16 g a4 | f2\tr g4 g | e_\ce d e2 | \ap e8 fs2\fe

      \section % Quia respexit

      r2 |
      r2 r8 a,\p a8. b16 |
      c8 c b8. d16 cs8 cs d8. e16 |
      f4 e f8 c d d |
      e4 fs g2 |
      r8 g f e f f e8. d16 |
      cs2 r8 d cs d |
      bf2 a4 a |

      d d2 cs4 | d2 r2 |
      R1*4 |

      % violons
      r4 a'8 a a4 g | fs a8. a16 a4 a8. bf16 |
      bf4 a g g8. a16 | a4 a r2 |
      R1*2 |

      % tous
                               %slower
      r4 e8\f e a g f e | d d f4 e2\tr |

      %slower
      R1 | r2 r4

      %fast
      d8 d | g f e d e f g f16 e | d8 d g f e e e e | e8. e16 e4 e2 |
      e4 e8 e a a a a | d,4 d8 g g4 g8 g | a4 f e a8 a | fs8 fs fs fs g4 g |
      r4 g a a~ | a g g fs | g2 r4 g | a2. f4 |
      e2 r | r r8 e f4 |
      e8. g16 g8 a gs a gs4 | a8. a16 fs8 fs g d e4 |
      f8. f16 f8 g e d e4 |
      d4.\fe

      \section 
      \sectionLabel "Et misericordia"

      r8 r2 | R1*7 | R1*26

      \section
      \sectionLabel "Fecit potentiam"
      \tempo "vivement"

      % now following v1 part
      r8\f f f e d8. d16 d8 d | e8. f16 g4 c,8 d16 e f8 e16 d | e4 e
      r8 f d e | a,8. a16 a8 a a8. a16 a4 | e'2 \ap d8 cs2 |
      R1*2
      r8 a' \ac bf8 c4 g8. a16 bf4 | f8. g16 a4 g8 g bf4 | a2\tr r
      r8 e \ac e8 f4 d8 g e4\tr | f2\m r |
      r2 r8 cs \ac cs8 d4 | d8 g \ag e4( d32) c8 c e4 | g8 d \ag f4( g32) e2\tr |
      R1*3
      r4 r8 e \ac e8 f4 e8. e16 | c4 d8 f \ac f8 e4 d8. d16 | d4 d r2 |
      r2 r4 r8 c\mp | \ac c8 d4 e8 e f4 f |
      r4 g4.\f f8 f4 | r4_\ce f e\tr a | fs1\tr\fe\ca |
                                    % back to v2 here

      \section
      \sectionLabel "Deposuit potentes"

      R1*12
      R1*9
      r2 r8 e \ac d8 e8. f16 | g8 g f8.\tr e16 d8 d e4 | f8 f g4 a8 a g4 | e2 r2 |
      R1
      r2 r8 a g8.\tr f16 | e4.\tr fs8 g4 fs~ | fs8 fs fs g a2 |
      R1
      r4 g_\ce f e\tr | fs1\fe\ca |

      \section
      \sectionLabel "Suscepit Israel"

      \time 3/4
      R2.*7
      \time-c
      r2_\ce r4\fe \tempo "TODO" r4 | R1*11

      \section
      \sectionLabel "Sicut locutus est"

      % following v1 now
      \time 3/4
      R2. | d4 d c | bf a4.\tr g8 | a4 a' g | f4.\tr f8 e d | cs2.\tr |
      R2. | a4 a b | c4. b8 c d | e4. g8 a e | f4. g8 a4 | a4. b8 gs4\tr | a2.
      R2.*4 | e4 e e | f4. f8 f4 | f f e | d2 d4 |
      R2.*2 | c4 c e | f4. f8 f4 | f d e | \ag e2( d8) cs4 |
      d4. d8 d4 | d4. d8 d4 | R2.*3
      c4. c8 c4 | f4. f8 d4 | e d4. d8 | d4 d d | a d4.\tr cs8 | cs2. |
      %v2
      fs4. fs8 fs4 | g4. g8 g4 | g a4. a8 | g4 a d, | g f4. g8 | f2 a4 |
      g4. g8 d4 | a' e f | f e4. fs8 | fs2
      d4 | b4. b8 e4 | cs2 d4 | d cs4. d8 | d4
      a'2~ | a4 g8 fs g4~ | g f8 e f4~ | f8 e8 e2 |

      \section
      \sectionLabel "Gloria"
      \tempo "très majestueusement"

      \time-c
      d2 \fe r2 | R1*5 |
      r2 a'~\f | a4 g4 f4.\tr f8 | e1 |
      f4 g a2~ | a4 g8 f e4.\tr e8 | f1 | d\> | d |
      r2\mp a'2~ | a g4\prall f | e2\tr f | \after 4 _\ce g2. g4 | f2~\fe f\>^\am | g1\p |
      a2\mp g~ | g4 f8\prall e f2~ | f4 f e\prall d | 
      f2\< e~ | e d~ | d_\ce cs\ff | 

      \section
      \sectionLabel "Sicut erat"
      \tempo "vite"

      \time 3/4
      R2.*19 |

      r4 d\f e | f2 f4 | e2\tr f4 | f4. f8 g4 | c, c e | f2 g4 | \ac g8 a2. | r4 \ac f8 g2 | 
      r4 d e | \ac e8 f2. | e2 r4 | R2. | R2. |
      r4 g g | g2 g4 | e2 e4 | e4. e8 e4 | e a, a' | gs2\tr a4-. \br |

      a2 g4 | g2. | c,4. \ag d8( c16) b4 | b4.\m b8 cs4 | d4. d8 c b | a4. e'8 e8. d16 |
      \ac d8 cs4 a' a | g4. g8 g4 | r f f | e2 e4 |
      r4 fs g | g4. g8 a4 | r d, d | a'2 fs4 |

      a g f | e2 f4 | g f e | d2 e4 | f2 g4 | a2. | 
      a4 g f | e d c | d e f | d g2 | f2. |
      R2.*3 |
      r4 a a | g4.\tr g8 g4 | r f f | e2 e4 |
      r fs g | g4. g8 a4 | r d, d | a'2 a4 |
      g e2 | \ap e8 fs2.\fe |

      \tempo lentement
      \time-c

      r8 d e fs g2~ | g4 fs\prall e fs \fe |

      \fine
    }

  >> % ChoirStaff

  \new Staff \with {
    instrumentName = \markup \right-column { "Haut-contre" "de violon" }
  }
  \relative c'' {
    \time-c

    a2\mp d4_\expr c | bf1\tr | a | d2 g, | a d~ | d \ag e4( d16) c4_\ce |
    \after 4 \fe \after 2 ^\am c1 |
    c | a2 \ag bf4( a16) g4 | a1 | a2 a~ | a g |
    f4 d a' e | f g a2~ | a g2 | a1 % | r2 d | d2. g,4~ | g f8 e f4 a | a1_\ce | a \fe |
    %\section
  }

>> % Score
