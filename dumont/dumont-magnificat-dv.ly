% Copyright Jeffrey Sharp
% SPDX-License-Identifier: CC-BY-SA-4.0

\version "2.24.4"
\include "../common.ly"

\paper { 
  ragged-bottom = ##t
  %annotate-spacing = ##t
}

\header {
  dedication = #f % "Header"
  title      = "Magnificat"
  subtitle   = "Grand motet ~ interprété par Les Epopées"
  composer   = "Henry Dumont"
  opus       = #f % unused due to placement
  instrument = "Dessus de violon, hautbois et flûtes"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column \small {
    \concat {
      "Engraving © 2025 Jeffrey Sharp | "
      \with-url
        "https://github.com/sharpjs/music"
        "https://github.com/sharpjs/music"
      " | Not associated with Les Épopées"
    }
    \concat {
      "Licensed under CC BY-SA 4.0 | "
      \with-url
        "http://creativecommons.org/licenses/by-sa/4.0/"
        "http://creativecommons.org/licenses/by-sa/4.0/"
    }
  }
}

\new Score <<
  \new ChoirStaff <<

    \new Staff = "1dv" \with {
      instrumentName = \markup \right-column { "1. dessus" "de violon" }
    }
    \relative c'' {
      \sectionLabel "Magnificat"
      \phraseLabel "Symphonie"
      \tempo "gracieusement"
      \time 4/4

      \after 2 \expr f1~\mp | f2 g | \ap g4^> a1~ | a2
      g~ | g f~ | f \after 4\ce e | \after 4 \fe \after 2\am f1
      g1 | a2 d, | r a'~ | a4 g \bar "!" \endPhrase f e |

      d1~ | d2 e | a,2. b4 | \ap b8 c2. bf4 | a1\tr\uf |
      a | bf2. b4 | cs2\tru d2~ | d\ce cs | d1\fe | \nl

      \section
      \sectionLabel "Et exultavit"
      \tempo "rondement"

      R1*3 |
      r2 r8 f8\f \ac e d d | e8. e16 e4 c8. c16 c4 |
      r2 r8 e e e | \ac e f f e g \ac g c,4 c | \nl
      r8 c f f \aap f4 e8 d4 | c8. c16 c4 c2 | c2\mf r2 |

      r2 r8 c\f f f | \ac f e4 e r f~ |
      f8 f f2 d4~ | d8 e16 f g4 c,2 |

      R1*2 |
      r4 r8 e f4 f8 d | \ac d c4 c r2 |
      r4 a a a8 c | \ac c bf4 bf bf4. bf8 | a4\ce a' a2\tr\uf | a2\fe

      \pageBreak
      \section
      \sectionLabel "Quia respexit"
      \phraseLabel "Ritournelle"
      \tempo "gracieusement"

      \who "vln. seul"
      r8 d,\p d8. e16 | \ap e f8. f16 e8.\tr g16 f2\tr | e2
      r8 e8 f g | a f c'8. c16 c4 f, | \aap g a16 a4\tru\uf \ap a8 bf2 \pa\m | \nl
      r8 bf \ag a[( { bf32 a } g8)] a a \ag g8.[( { a64 g } f16)] | \ag e2\trr e8
      \ag a2 a16 | d,4 g4. e8 \ap e f4~ | f\> g \ap g8 a2 | <>\! r2 \endPhrase \bar "!"

      r | R1*4 | \nl r4 

      c,8.\p c16 c4 cs8.\tr d16 | d4
      fs8. fs16 fs4 fs8. g16 | g4
      f4. f8 e8.\tr f16 | f4\m f

      r2 | R1*2 | \nl r4 

      \tempo "rondement"
      \who "tous"
      e8\f e d cs d a | d d d4

      \tempo "gracieusement"
      cs2\tr | R1 | r2 r4

      \tempo "rondement"
      d8 d | c b c d g,4. a8 | b g b b c4 c \nl | e8 d c a b b e e |
      \ac d cs cs cs cs d4 d | r g8 g e e c c | c4 f8 d e4
      e | d a8\mp a \ac cs d d d d | g,4 g r c | d\< d \after 4 \! d2 |
      r4 d8\mf d g g g g | \ac g c,4 d8 d cs4\< d | \after 4 \! e2 r2 |

      \pageBreak 
      r r8 a,8\f a4 | \ag c8. s \noBeam
      d16 e8 e e a, e'4 | \ag cs8. s \noBeam
      cs16 d8 d d g e c | \ag c8. s \noBeam
      f16 d8 g g f \ap f16 e4\ce | d4.\fe \nl \noPageBreak

      \section
      \once \override Score.SectionLabel.extra-offset = #'(-1 . 0)
      \sectionLabel "Et misericordia"
      \tempo "gracieusement"

      \who "violons"
      f8\mp e\tr \ag a { a32( g) } f8 g | e\tr
      a d, \aap g d c8. b16 b4\tr | a8. \br
      e'16 \ap e f8 f d f e8.\tr f16 | f8. \br
      c16\doux f8 f \aap d[ { a'32 g } f8] e8.\tr f16 | \nl \noPageBreak f8 \br
      c\fort \ac b c8. d16 \ap d e8 \br
      e\doux e8.\tr fs16 | \ap fs g8 \br
      d\pa\fort d8. e16 \ap e f8 \br
      f\p e8.\tr\ce d16 | cs4\tr\fe

      \tempo "lentement"
      e d8.\tr cs16 d8.\ce e16 | cs1\tr\fe |

      \tempo "gravement"
      R1*9 | R1*8 \nl \noPageBreak | R1*9 |

      \section
      \sectionLabel "Fecit potentiam"
      \tempo "vivement"

      r8\f f f e d8. d16 d8 d | e8. f16 g4 c,8 d16 e f8 e16 d | e4 e
      r8 f d e | a,8. a16 a8 a a8. a16 a4 | e'2 \ap d8 cs2 |

      R1*2 \nl \noPageBreak | r8

      a' \ac bf8 c4 g8. a16 bf4 | f8. g16 a4 g8 g bf4 | a2\tr\uf
      r | r8 e \ac e8 f4 d8 g e4\tr | f2\m

      r | r2 r8

      cs \ac cs8 d4 | d8 g \ag e4( d32) c8 c e4 | g8 d \ag f4( g32) e2\tr | \nl \noPageBreak

      R1*3 | r4 r8

      e \ac e8 f4 e8. e16 | c4 d8 f \ac f8 e4 d8. d16 | d4 d

      r2 | r2 r4 r8
      c\mp | \ac c8 d4 \peu\< e8 e f4 f |
      r4\! g4.\f f8 f4 | e\ce d2 cs4\tr | d1\fe\ca |

      \pageBreak
      \section
      \sectionLabel "Deposuit potentes"
      \tempo "rondement"

      R1 |

      \who "violons"
      r8. a16\mp d8. e16 f8 f \ap f16 e8. d16 | cs8
      cs( d e a,) a' g8.\tr f16 | e8[ e( f g] g[ a f g] | a2) g(\tr | f8[)
      e( f g] a2~ | a4) g2( fs4 | g8) d( ef4 d2) | \nl

      g, r8 c d e | f a g8.\tr f16 e8 c e8. f16 |
      g4. g8 a4 a8. a16 | bf4 a2 g4 | a2

      r | R1*6 | R1*2 | \nl | R1*2 | r8

      \who "tous"
      f\f e8.\tr d16 c8 d \ap c16 bf4 | a2

      r | R1 | r8

      f'\mf e8.\tr d16 c4 r | r
      r8 c bf g c c | d4 c8\< bf \ap bf16 a4\f a | \nl

      R1 | \after 4 \ce r2 r8 a a4 | a1\fe |

      \section
      \sectionLabel "Suscepit Israel"
      \tempo "gracieusement"

      \time 3/4
      R2.*7
      \time 4/4
      r2\ce r4\fe r4\am | R1*5 | R1*5 |
      <> \tweak extra-offset #'(-5 . 0) \ce R1\fe\ca |

      \nl
      \section
      \sectionLabel "Sicut locutus est"
      \phraseLabel "Symphonie"

      \tempo "vivement"
      \time 3/4
      R2. | d4\f d c | bf a4.\tr g8 | a4 a' g | f4.\tr f8 e d | cs2.\tr |
      R2. | a4 a b | c4. b8 c d | \nl \noPageBreak e4. g8 a e | f4. g8 a4 | a4. b8 gs4\tr | a2.
      \endPhrase

      R2.*4 | e4 e e | f4.\m f8 f4 | f f e | d2 d4 |
      R2.*2 | c4 c e | f4. f8 f4 | f d e | \ag e2( d8) cs4 |

      d4. d8 d4 | d4. d8 d4 | R2.*3
      c4. c8 c4 | f4. f8 d4 | e d4. d8 | d4 d d | a d4.\tr cs8 | cs2. |

      d4. d8 d4 | d4. d8 d4 | c c4. f8 | d4 d c | bf g4.\tr a8 | a2
      c4 | g'4. g8 g4 | e2 a,4 | d e4.\tr d8 | d2

      \phraseLabel "Symphonie"
      a'4~ | a4 g4. g8 | g4. a8 f4 | e e2\tr | d4.
      a8 b c | d2. | cs2\tr d4~ | d4 cs2\tr | \time 4/4 d2\fe
      \endPhrase 

      \nl
      \section
      \sectionLabel "Gloria"
      \tempo "très majestueusement"

      r2 | R1*5 |
      d2.\f d4 | d1 | e |
      \ag a, bf8(\glissando | a'2.) g4( | f)\um e d2~ | d d | d1 \> <>\mp |
      R1 | d | c2. c4 | c2.\tr c4 | c2\fe\>
      c~\p | c e | d2.\tr d4 | d1 |
      R1 | a4\mf\< b c2~ | c d | \ap d8 \after 2 \ff e1\ce

      \pageBreak 
      \section
      \sectionLabel "Sicut erat"
      \tempo "vite"
      \time 3/4

      R2.*14 | R2.*5 |

      R2.*3 | r4 d\f d | c c c'~ | c bf4.\tr bf8 | a2. |
      R2. \nl R2. | a,4 a b | c2 c4 |
      R2.*2 |

      r4 e c | d2 b4 | r e e | e4. e8 e4 | e d c | \ac c8 b2 a4 \br | \nl

      c d e | e4. f8 g4 | g2. | d4.\m d8 e4 | f \ac e8 f4 g | a4. a8 g8. f16 |

      \ac f8 e4 e f | d4. d8 c4 | \nl r a a | e'2 e4 |
      r d d | c4. c8 c4 | r d d | cs2 d4 |

      R2.*4 | r4 a' g | f e d |
      c2 d4 | e2 fs4 | g2 f4 | f2 e4 | f2. |

      R2.*3 |

      r4 e f | d4. d8 c4 | \nl r a a | e'4. e8 e4 |
      r d d | c4. c8 c4 | r d d | \ac d8 cs2 d4 |
      d2\ce cs4 | d2.\fe |

      \tempo lentement
      \time 4/4

      \aap d1\ff e16 | d\breve\fe \skip 4*3 |

      \fine
    }

    \new Staff = "2dv" \with {
      instrumentName = \markup \right-column { "2. dessus" "de violon" }
    }
    \relative c'' {
      \time 4/4

      \after 2\expr d1~\mp | d2 e | \ap e4^> f1~ | f2
      e4 d | c2\tru d4 c | bf\tr a g c~\ce | c c\fe
      \ap { a32-> bf } c2\am~ | c e | d1 | cs2\tru d4 e | \ap e16 f4 g a2\tr\uf |

      \ag bf1( c16) | a2.\tr\uf g4 | f1 | e1 | c1 |
      d1 | d2. e4 | e2 \aap a, a8 \glissando |
      \ac g'8 a2.\ce g4 | fs1\trr\fe |

      \section
      \sectionLabel "Et exultavit"
      \tempo "rondement"

      R1*3 |
      r2 r4 r8 a8\f | a e g g \ac g8 a8. a16 a4 |
      \ag g2( f16) e8 e a a | \ac g a-- a g g f4\tr f |
      r a4. a8 g f | e8. e16 f8. f16 f4( e)\tr | f2\mf r2 |

      r8 g\f g e f f f d | \ac d8 e4 e a8. a16 a4 |
      f f f8. f16 f4 | g2 a\mf |

      R1*2 |
      r8 e\f \ac g a4 f4. f8 | \ac g a4 a r2 |
      r4 f e8\tr f16 g a4 | f2\tr g4 g | e\ce d e2 | \ap e8 fs2\fe

      \section
      \sectionLabel "Quia respexit"
      \tempo "gracieusement"

      r2 |
      \after 8. \who "vln. seul"
      r2 r8 a,\p a8.\m b16 | \ap b c8 c b8.\tr d16 cs8\tr
      cs d8.\m e16 | \ac e8 f4 e\tru f8 c d d | \aap e4 fs16 fs4\tru \ap fs8 g2\m |
      r8 g \ag f[( {g32 f} e8)] f f \ag e8.[( { f64 e } d16)] | cs2\trr
      r8 d cs d | bf2\trr a4 a | \ap a8 d4 d2 cs4 | d2\m \bar "!"

      r2 | R1*4 | r4

      a'8\p a a4\m \aap g { f32 e16 } | fs4\utr
      a8. a16 \after 8 \rta bf!8 a4\m a8.\tr\uf bf16 | bf4\m
      \after 8 \rta bf!8 a4 g\tr g8. a16 | a4\m a

      r2 | R1*2 | r4

      \tempo "rondement"
      \who "tous"
      e8\f e a g f e | d d f4
      
      \tempo "gracieusement"
      e2\tr | R1 | r2 r4

      \tempo "rondement"
      d8 d | g f e d e f g f16 e | d8 d g f e e e e | e8. e16 e4 e2 | e4
      e8 e \ac g a a a a | d,4 d8 g g4 g8 g | a4 f e
      a8\mp a | \ac g fs8 fs fs fs \ac fs g4 g | r4 g a a~ | a\< g g fs\! | g2
      r4 g\mf | \after 2 \< a2. f4 | \after 4 \! e2

      r | r r8 e <>\tweak extra-offset #'(-2 . 0)\f \ac e f4 | e8. \noBeam
      g16 g8 a gs a gs4 | a8. \noBeam
      a16 fs8 fs g d e4 | f8. \noBeam
      f16 f8 g e d \ap d16 e4\ce | d4.\fe

      \section 
      \sectionLabel "Et misericordia"
      \tempo "gracieusement"

      \who "violons"
      a16\mp b \ap b32 c8 c \ap c32 d8. e16 | cs8.\tr
      d16 b8 c a a' gs8.\tr a16 | a8. \br
      a16 a8 c bf a g8.\tr a16 | a8. \br
      a16\doux a8 c \aap bf[ { c32 bf } a8] g8.\tr a16 | a8 \br
      a8\fort g8.\tr f16 \ap f g8 \br
      g\doux g8.\tr a16 | \ap a bf8 \br
      bf8\pa\fort a8.\tr g16 \ap g a8 \br
      a\p g8.\tr\ce f16 | e4\tr\fe

      \tempo "lentement"
      r8 g f8.\tr e16 f4\ce | e1\tr\fe |

      \tempo "gravement"
      R1*9 | R1*8 | R1*9 |

      \section
      \sectionLabel "Fecit potentiam"
      \tempo "vivement"

      r8\f a d, e f8. f16 f8 a | a8. a16 g4 f2 | e2
      r8 a a g | f8. f16 e8 e f8. f16 f4 | e2 e |

      R1*2 r8

      f \ac g a4 e8 e g4 | d8 d f4 e8. f16 g4 | a2\tr\uf
      r | r4 r8 a bf4\m g8 g | a4\m a

      r2 | r r8

      a a4 | g8 g g4 f r | r8 g f8 d e2\tr |

      R1*3 | r4 r8

      a f4 g8. g16 | \ac g8 a4 a8 a a4 a8. a16 | g4 fs

      r a~\mp | a8 g g f f4\tr
      e8 e | \ac e8 f4 \peu\< g8 g a4 a |
      g4.\< g8\f a2 | r4\ce f e\tr a | fs1\tr\fe\ca |

      \section
      \sectionLabel "Deposuit potentes"
      \tempo "rondement"

      R1*2 | r8

      \who "violons"
      a\mp( g e f) f e8.\tr d16 | cs8[ cs( d d] e[ f d e] | f) c( f2 e4 | f8[)
      c( d e] f[ f e\tr f] | d4.) c8 c2 | b4( c2 b4) |

      c8 c' bf8.\tr c16 a2 | r8 c bf8.\tr a16 g2 |
      r8 g, \ac b c4. b8 d4~ | d cs d2 | cs2\tr

      r | R1*6 | R1*2 | r2 r8

      \who "tous"
      e\mf \ac d8 e8. f16 | g8 g f8.\tr e16 d8 d e4 | f8
      f\f g4 a8 a g4 | e2\tr

      r2 | R1 | r2 r8

      a\mf g8.\tr f16 | e4.\tr fs8 g4 f~ | f8 f\< f g a2\f |

      R1 | r4 g\ce f e\tr | fs1\fe\ca |

      \section
      \sectionLabel "Suscepit Israel"
      \tempo "gracieusement"

      \time 3/4
      R2.*7
      \time 4/4
      r2\ce r4\fe r4\am | R1*5 | R1*5 |
      <> \tweak extra-offset #'(-5 . 0) \ce R1\fe\ca |

      \section
      \sectionLabel "Sicut locutus est"
      \time 3/4

      R2.*2 | d4\f d e | f4.\m f8 g4 | a4. a8 g f | e2.\tr |
      a4 a g | f e4.\tr d8 | e2. | r4 e2~ | e4 d4. a8 | c4 b4.\tr d8 | cs2.\tr

      R2.*5 | a'4 a \aap a g8 | f4 d e | f2. |
      R2.*2 | g4 g g | a4. a8 a4 | f f e | e2 e4 |

      f4. f8 f4 | f4. f8 f4 | R2.*3
      f4. f8 f4 | f4. f8 f4 | e a4. a8 | d,4 d f | e g4. e8 | e2. |

      fs4. fs8 fs4 | g4. g8 g4 | g a4. a8 | g4 a d, | g f4.\tr g8 | f2
      a4 | g4. g8 d4 | \ac g8 a4-> e f | f e4.\tr fs8 | fs2

      %phraseLabel "Symphonie"
      \aap d4 c8 | b4. b8 e4 | cs2\tr d4 | d cs4.\tr d8 | d4
      a'2~ | a4 g8 fs g4~ | g f8 e f4~ | f8 e8 e2\tr | \time 4/4 d2\fe
      %endPhrase

      \section
      \sectionLabel "Gloria"
      \tempo "très majestueusement"
      
      r2 | R1*5 |
      r2 a'~\f | a4 g4 f4.\tr f8 | e1 |
      f4 g a2~ | a4 g8 f e4.\tr e8 | f1 | d | d\> <>\mp |
      r2 a'2~ | a g4\tr f | e2\tr f | g2. g4 | f2~\fe\>
      f\am\p | g1 | a2 g~ | g4 f8\tr e f2~ | f4
      f e\tr d | f2\< e~ | e d~ | d\ce cs\ff | 

      \section
      \sectionLabel "Sicut erat"
      \tempo "vite"
      \time 3/4

      R2.*14 | R2.*5 |

      r4 d\f e | f2 f4 | e2\tr f4 | f4. f8 g4 | c, c e | f2 g4 | \ac g8 a2. |
      r4 \ac f8 g2 | r4 d e | \ac e8 f2. | e2 r4 |
      R2.*2 |

      r4 g g | g2 g4 | e2 e4 | e4. e8 e4 | e a, a' | gs2\tr a4 \br |

      a2 g4 | g2. | c,4. \ag d8( c16) b4 | b4.\m b8 cs4 | d4. d8 c b | a4. e'8 e8. d16 |

      \ac d8 cs4 a' a | g4. g8 g4 | r f f | e2 e4 |
      r4 fs g | g4. g8 a4 | r d, d | a'2 fs4 \br |

      a g f | e2 f4 | g f e | d2 e4 | f2 g4 | a2. | 
      a4 g f | e d c | d e f | d g2 | f2. |

      R2.*3 |

      r4 a a | g4.\tr g8 g4 | r f f | e2 e4 |
      r fs g | g4. g8 a4 | r d, d | a'2 a4 |
      g\ce e2 | \ap e8 fs2.\fe |

      \tempo lentement
      \time 4/4

      r8 d\ff e fs g2~ | \cadenzaOn g4( fs\tr e \cadenzaOff fs\breve\utr\fe) |

      \fine
    }

  >> % ChoirStaff

  \new Staff = "hcv" \with {
    % This staff is a pseudo-ossia at the beginning
    instrumentName = \markup \right-column { "Haut-contre" "de violon" }
  }
  \relative c'' {
    \time 4/4

    a2\mp d4\expr c | bf1\tr | a |
    d2 g, | a d~ | d \ag e4( d16) c4\ce | \after 4 \fe \after 2\am c1 |
    c | a2 \ag bf4( a16) g4 | a1 | a2
    a~ | a g | f4 d a' e | f g a2~ | a g2 | a1 |
    r2 d | d2. g,4~ | g f8 e f4 a | a1\ce | a \fe |

    \section
  }

>> % Score
