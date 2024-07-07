\version "2.24.3"
\language "english"

\paper {
  #(set-paper-size "letter")
}

\header {
  dedication = #f % "Header"
  title      = "Exaudiat te Dominus"
  subtitle   = "Grand motet ~ LWV 77/15 ~ interprété par Les Epopées"
  composer   = "J. B. Lully"
  opus       = #f % unused due to placement
  instrument = "Dessus de violon, imaginée pour flûte"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column {
    "Engraving © 2024 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

trill    = #prallprall
dashPlus = #trill

ac  = #acciaccatura  % short port-de-voix
ag  = #afterGrace    % chûte
ap  = #appoggiatura  % port-de-voix
at  = #lineprall     % tremblement appuyé
br  = #breathe
ca  = #caesura
fe  = #fermata
ga  = #startGroup
gr  = #grace
gz  = #stopGroup
m   = #mordent       % pincé
nl  = #break
p   = #parenthesize
um  = #prall         % pincé en montant
tf  = \trill ^ \markup { \tiny \flat }
tr  = #trill         % tremblement simple

am  = \markup { \italic "au mouvt." }
ce  = \markup { \italic "cédez" }
sim = \textMark \markup { \small \italic "sim." }
x   = \once \override HorizontalBracketText.text = "*"

\score {
  \relative c' {
    \override Score.SectionLabel.font-size           = 0.5
    \override Staff.TimeSignature.style              = #'single-digit
    \override Staff.NoteHead.style                   = #'baroque
    \override Staff.MultiMeasureRest.space-increment = 0 % multi-measure rests same width
    \compressEmptyMeasures                               % no empty measures after breve

    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

    \key c \major

    \once \revert Staff.TimeSignature.style
    \time 4/4

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Symphonie"

    \tempo "legerement"

    \partial 8 g'8 | 

           %1        %2          %3         %4         |
    \ac b8 c8.-- c16 c8-. d8-.   e8.-- e16  e8-.  e8-. | \sim
    \ac e8 d8.   d16 d8   g8     g8.   g16  g8    c8-. |
           a8.-+ a16 a8   f8     d8.-+ d16  d8    g8-- |
           e4 -+     e8-- r8
           
           %3           %4          | %1         %2
           c8.     bf16 bf8.\um a16 | a4\um a8   r8
           d8.     d16  d4          | b4-+  e8-. e8-.
           fs8-. g8-.   a,4-+       | g4.        g8

           %3         %4      |        %1      %2
    \ac c8 d8.    d16 d8 e8-- |        f8. f16 f8-- e16 f16
           e8.-+  e16 e8 e8-- | \ac e8 f4  f8  r8

           %3            %4        | %1    %2
        \x d8.\ga d16\gz b8. b16   | gs4-+ gs8 r8
           e'8.   d16    c4        | a2-+          \ap { c32 d e }
           f8.    e16    d4        | b4-+  g'8 c,8
           d8   e8       d8.-+ c16 | c2

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Exaudiat"

    r2 | R1*10 |

           %1            %2                  %3       %4
           r4            r8 c8               g'8. g16 g8      e8 |
    \ac d8 c8.  c16      c8 c8               d8.  d16 d8      b8 |
    \ac d8 e8.  e16      e8 c8               a2-+                |
           f'8. e16      d8. c16             b2-+                |
           c8.  c16      c4           \ac e8 f2                  |

           d8-. d8-. \ac e8 d8( cs8-.)   \x  d4--\ga  d8-.\gz d8 |

    \ac c8 b8.  b16      b8  g8   \ac b8 c8.  c16  c8  f8       |
    \ac f8 e8.  e16      e8  e8          fs8. fs16 fs8 d8       |
           g8.  g16      g8  g8          d8.  d16  d8  d8       |
           bf2-+                        bf8. bf16 c8  bf16 c16 |
           d2                           d8.  d16  d4           |
           g4            ef8 d8          c8  bf8   a8.   \p g16 |
           g4            r4
           
    r2 | R1*4 | r2 r4 r8 c8 |

           c8. c16 c8 f8
    \ac f8 e8. e16 e8 e8 |
    \ac e8 f2
           d8. d16 d8 cs16 d16 |
           cs2-+
           r4 r8 d8 |
    \ac c8 b8. b16 b8 b8
    \ac d8 e8. e16 e8 e8 |
    \ac d8 c8. c16 c8 c8
    \ac c8 b8. b16 b8 b8 |
    \ac b8 c2
           a8 a8 a8 gs16 a16 |
           gs2-+
           e'8. d16 c4 |
           a4-+     f'8 e8
           d8 c8 b8.-+ \p a16 | a4 r4 r2 |

    R1
    g'8. g16 g4      c2\m                 |
    c,8. c16 c4      f8. e16 d4           |
    b4-+     g'8 c,8 d8 e8   d8.-+ \p c16 | c2

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Mittat tibi"

    r2 | R1*8 |

    R1*2 |    b4. b8   e4   e8 r8 | d8 d8        e8  c8     b4-+ r4 |
    R1   | r2 e4. f8 | d4-+ d8 r8   d8 d8 \ac e8 d8( cs8) | d4

    r4 r2 | r2   r4 e8 e8 | \ac d8 c4      c8 d8   e8. e16 e8 f8 | d2-+
       r2 | R1 | r4 d8 g8   \ac f8 e8. d16 c8 d8 | e8. e16 e8 a8   fs2-+ |

    g4. g8 \ac d8 c4 c8 r8 | c8_\ce c8 \ac d8 c8 b8 c2 \fe
    \pageBreak

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Symphonie"
    \key g \major
    \textMark \markup { \small \italic "au mouvt." }

    r2 r4
    \textMark \markup { \small "dvn." }
    g8   g8 | a4 a8 a8 b8 b8 b8-+( a16 g16) | d'4
    d8-. d8-. g8 g8 e8 e8 | \ac g8 a4 a8 r8  d,8 d8 cs8.-+( b32 cs32) | d4
     r8 d8      b8-+ b8 c8 d8 | e4 e8 r8  a,8 b8 a8.-+     g16       |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Memor"
    \textMark \markup { \small "dvn. 1" }

    g4 b8 b8 c4 d8 d8 | d8 d8 g8 g16 fs16 e4.-+ a8 | fs8 a8 d,8 c8 b8 d8 d8 cs8 |
    d4 d16 r16 d8 d8 d8 g8 f8 | e8-+ e16 fs?16 g8 a8 fs8 g8 fs8.-+( e32 fs32) |
    g4 r4 r2 | R1*4 | r2 r4 b,8 b8 |
    b4. d8 e8 e8 d8. d16 | d4. d8 g8 g8 g8 g8 | e4 e8 r8 cs8 d8 cs8.-+( b32 cs32) | 
    d4. d8 e8 fs8 g8. a16 | fs4-+ fs8 r8 a,8 b8 a8.-+ g16 |
    g4 r4 r2 | R1 | r4 r8 b8 e8\m e8 e8 fs8 | ds4-+ ds8 r8 fs,8 g8 fs8.-+ e16 |
    e4 r4 r2 | R1 | \time 2/2 R1 \fe | \ca

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Tribuat"
    \tempo "lentement"

    \key d \minor
    \once \revert Staff.TimeSignature.style
    \time 4/4

    \textMark \markup { \small "tous" }
    d'8.\m d16 d4 bf4-+ bf8 d8 | \after 4*16/25 \turn g4( g8) a8 fs4-+ fs8 a8 | % fs16 r16
    bf4 bf8 a8 \ap a16 g4-+ g8 f8 | e4-+ e8 d8 d4 cs8.-+( b32 cs32) |
    d4 \br d8 d16 d16 b4-+ b8 b8 | \ap b16 c4 c8 d8 \ap d16 ef4 ef8 d8 |
    \ap d16 g4 \ap af32 g8 f8 \ap f16 ef4 ef8\reverseturn d8 | c4-+ c8 bf8 bf4-+( a8.) g16 |

    g2 g4 g8 g8 | g4 a8 a8 fs4-+ fs8 fs8 | g4 g8 c8 f,4 bf8 a8 |
    bf4 bf8 bf8 \ap bf16 a4 a8 c8 | d4 \ap ef32 d8 ef8 \ap ef16 f4 f8 ef8 |
    d4 bf8 bf8 bf4 a8.-+( g32 a32) | bf4 \br f'8 d8 d4-+^\markup { \flat } d8 d8 |
    \ap d16 ef4 ef8 b8 \ap b16 c4 c8 d8 | cs4-+ e8 f8 \ap f16 g4 g8 f8 | e4-+ e8 d8 d4( cs8.\p-+) d16 |

    d4 \br d8 d16 16 b4-+ b8 b8 | c4 c8 d8 \ap d16 ef4\um ef8 d8 |
    g4 g8 f8 ef4-+ ef8 d8 | c4-+ c8 bf8 bf4( a8-+) g8 | % 8. 16

    g8. bf16 bf4 d4 d8 \ap c32 b8 | \ap b16 c4 c8 d8 d4 d8 d8 |
    d4 d8 d8 g,4 g8 g8 | a4 a8 g8 g4( fs8.-+) e32 fs32 \fe

    <<
      { \voiceOne r4. \ca r8 }
      \new Voice { \voiceTwo g2 }
    >>
    \oneVoice 

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Laetabimur"
    \key g \major

    r2 | R1*2 | r4 r8 fs'16 fs16 g8 g16 g16 d8 d8 | \ag e4( fs16) e8 e8 fs8 g8 fs8.-+ g16 | g4 \fe

    \tempo "vite"
    
     r4 r2 | R1*2 | r2 r4 r8 d8 |
      b16 a b c d c d b e8. e16 e8 g8 | fs8 e8 e8-+ ds8 e4. e16 e16 |
      cs8 cs16 cs16 cs8 cs8 d4. d8 | e8 fs8 e8.-+ d16 d4 r4 |
    R1*3 | r4 r8 b8 c8. c16 c8 e8 | \ac e8 d8. d16 d8 a8 b8 c8 d8 e8 |
    fs4 fs8 fs16 fs16 g8 g16 g16 d8 d8 | e4 e8 e8 fs8 g8 fs8.-+ g16 |
    g4 d8 e8 f8 f16 f16 f8 e16 f16 | e4.-+ d8 c8_\ce b8 a8.-+ g16 |
    \time 2/2 g1 \fe \ca

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Impleat"
    \key f \major
    \once \revert Staff.TimeSignature.style
    \time 4/4
    \tempo "gracieusement"

    d'8.\m d16 d4 \ap d16 g8. g16 g4 | e4-+ e8. a16 a8. g16 g8. a16 |
    fs4-+ fs4 r4\fe d8 d8 | b4-+ b8 r8 g'8 g16 g16 e8 a8 |
    fs8-+ d8 g8\m g16 g16 a8 bf8 a8.\lineprall g16 |

    g8. d16 d4 ef8. g16 g4 | g4 g8 g8 c8 bf8 \ag { \ap bf32 a8( } bf32) g8 |
    fs4-+ fs8 r8 g8.\m g16 g4 | c,8.-+ c16 \after 8 \turn d4( ef4) ef8 f8 |
    \ap f16 g8 g,8 c8 bf8 bf4 a8.-+( g32 a32) |

    bf4\fe d8\m d8 \ap d16 c4 c8 f8 | f4 f8 r8 bf8 bf16 bf16 \ap a32 \x g8\ga g8\gz |
    f8 e8-+ f8 f16 f16 cs8 d8 cs8.-+( b32 cs32) | d2 r4 \fe a8 d8 |
    d4-+^\markup { \flat } d8 r8 d8 d8 c8 c8 | a8-+ d8 d8 d16 e16 fs8\m g8 fs8.-+( e32 f32) | g2 r4 d8 d8 |
    b4-+ b8 r8 g'8 g16 g16 e8-+ a8 | fs8-+ d8 g8 g16 g16 a8 bf8 a8.\lineprall g16 |
    g8. g16 g4 f8. f16 f4 | f4 f8 f8 g8 a8\prallup bf8 g8 |
    \ap g16 a4 a8 r8 a,8. a16 a8 b8-+ | \ap b16 c8. c16 \ag g8( {a32 g32)} a8 \ap a16 bf4 bf8 bf8 |
    c8 bf8 bf8 c8 a4 \lineprall a4 | r4 \fe a8 d8 d4 d8 r8 |
    g,8 c16 c16 a8-+ a8 bf4 bf8 bf16 bf16 | c8 d8 \ac d8 c8 f8 d4-+^\markup { \tiny \flat } f8 f8 |
    f4 f8 r8 bf8\m bf16 bf16 g8-+ c8 | a8-+ a8 bf8 d,16 e16 fs8_\ce g8 fs8.-+( e32 fs32) |

    <<
      { \voiceOne g2 \fe }
      \new Voice { \voiceTwo r4. \ca r8_\am }
    >>
    \oneVoice

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Exaudiet illum"
    \key g \major

    r2 | R1*5 | r4 r8
    d8 d8. d16 g4 | fs4-+ fs8 d \ac c b b e b | \ac b c4~ c16

            e  e e g8.    g16 g g g   g  | e8-+ e16 e fs8-. fs-. ds e16 fs fs8.-+ e16 | e
    b b b e fs e d cs d e cs  fs8 e16 fs | d8   d16 d b8-.  b-.  g' g16 fs e8.-+  d16 | d4

    r4 r2 | R1*2 | r2 r4 r8
    d8 | b8.-+ b16 b8-. b-. \ac d e8. e16 e4 | \ag c4-+( b16) a8 a' a a g16 fs g8 | fs4~-+ fs16

    fs  fs fs g8. g16 g g g g | fs8-+ fs16 fs g8-. g-. c, c16 b a8.-+ g16 | g4 r r2 | R1 | r4 r16
    \textMark \markup { \italic "marq." }
    fs' fs fs g8.-^ g16 g g g g | fs8-+-^ fs16 fs g8-. g-. c,-. c16 b a8.-+ g16 | g4 \br

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Hi in curribus"
    \key c \major

    r4 r2 |

    c16 d  e f    g a  b g  \x c8\ga g\gz   g8.-+(  f32 g) | 
    a16 bf a g    f e  d c     b a   g a    b   c d e      |
    f8.      f16  f8.    e16   e8.-+   e16  a16 b a g      |
    fs  d  e fs   g fs g a     b8.     a16  a8.-+   g16^\markup { \small "dvn. 1" } |

    g d d c   b g c d  e g g f  e c f g |
    a c c bf  a g f e  d e f e  d c b a |
    g a b c   d e f d  g8 a d,8.-+ c16 |

    c b c d   e d  e f  d e d c  b c d b  |
    e f e f   g f  e d  c d c d  e d c b  |
    a g a b   c b  c d  e d e f  g f g e  |
    a g a bf  a bf a g  f g a g  f e d^\markup { \small "tous" } c  |

    b4 b8 g'  e e16 e  e8 e | f f f e d8. d16 d8 r | R1 | r2 r4 r8 f8 | 
    e4-+ e8 c a a16 a c8 c | f4. f8 d d16 d d8 d | g g f e e4 d8. c16 |

    c d c d  e f g e  a bf c bf  a g  f e |
    d c d e  f e f d  g f  g a   g a  g f |
    e f e f  g f g e  a g  a bf  a bf a g |
    f e f g  a g f e  d e  d c   d b  c d |
    b a b c  b c e b  c4         c8   c   |

    c8 c16 c c8 d b4-+ b8\ga b\gz |
    c8 c16 c c8 c a a c c  |
    f8. f16 f8 d b4-+ b8 b8 | 
    e8 e16 e c8 c a a a gs |
    a8. a16 a8 r8 r2 | R1 |
    r4 r8 c8 d4 d8 d8 |
    e8 e16 e e8 e^"*" fs fs fs fs | % a in manuscript
    g8. g16 g8 d g g16 g g8 e |
    c c d e e4 d8. c16 |
    \time 3/4 c2. \ca |

    % ---------------------------------------------------------------------------------------------
    \section
    \tweak X-offset 0.5
    \sectionLabel "Ipsi obligati"

    R2.*9 |

    \textMark "duo"
    <<
      {
        \voiceOne
        e4 e4 a8 a8 | a4 g4.-+ g8 | g2 g4 |
        a4 e8 e8 f8 g8 | \ac g16 a4 a8 g8 \ac g8 f8 e8 | d4.-+ d8 g8 f8 | e2-+
      }
      \new Voice {
        \voiceTwo
        c4 c4 c8 c8 | d8 c d e f d | \ap d16 e4. e8 e4 |
        cs4-+ cs8 cs8 d8 e8 | \ac e16 f4 f8 e d c | b2-+ b4 | c2
      }
    >>
    \oneVoice r4 |

    R2.*6 |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Nos autem"
    \once \revert Staff.TimeSignature.style
    \time 4/4

    r4 r8 \textMark "tous"
                    d8 g4   g8 c,8 | a16 g a b  a b c d   e f e f    g f e   d |
    c8-+ c16 c16 c8 c8 b4-+ b8 e8  | c16 b c d  e d e c   f8.   f16  f8  f16 f |
    d c  d   e   f8 d8 g4   g8 g8  |
                       e4-+ e8 c8    a16 g a b  c b c a | d8.   d16  d8  d16 d
    b a  b   c   d8 e8 |

    c4-+ c8 c16 c16 d8 e8 d8.-+_\ce c16 | \time 2/2 c1 \fe \ca |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Domine salvum fac Regem"
    \key g \minor

    \once \revert Staff.TimeSignature.style
    \time 4/4

    ef8. ef16 ef4   c8.-+  c16 c4 |         g'8. g16  g4  c,4 c8  d8 | ef2
    ef8. ef16 ef4 | c8.\tf c16 c4   \ap e16 d8.  d16 d4 | ef4 ef8 ef8
    ef4( d8. c32 d32 ) | ef2 r2 |

    R1*2 | R1*8 | r2 r4 ef8 ef8 |

    c8. bf16 bf8 bf8 g4\tf g'4 | r8 f8 f8. f16 d8 ef8 d8.\p-+ c16 |
    c4 c8 c8 f8. f16 f8 f8 | d8-+ d8 d4. c8 c8 c8 | a8 bf8 a8.-+ g16 g2 |
    c8. c16 c4 d8.-+ d16 d4 | \ap d16 ef8. ef16 ef4 e4-+ e8 e8 | \ap e16 f4 f4 g8.\tf   g16 g4 | \ap g16 c,4 c8 d8 ef4 r4 |
    R1*2 | r2 g8.\m g16 g4 | r8 d8 d8 e8 \ap e16 f2 |
    \ap f16 ef8. ef16 ef4 r8 c8 c8 c8 | a8-+ a8 d8 a8 bf4 d8 d8 | g8. g16 g8 g8 c,2 |
    f8 f8 \ac ef8 d8. d16 \ac c8 b8 c8 c8( b8-+) | c4 r4 r2 | R1 | r2 r4 ef8 \ap { ef32 f32 } g8 |
    \ap g16 c,8. c16 c8 c8 a2-+ | f'8 f8 f8. f16 f8 ef8 d8.-+_\ce c16 |

    \overrideTimeSignatureSettings 3/4 3/4 1 #'()
    \time 3/4

    c2.

    % ---------------------------------------------------------------------------------------------
    \pageBreak
    \autoPageBreaksOff

    \section
    \sectionLabel "Gloria"
    \key c \major

    e4.  e8 e4 | \ac e8 d4. d8 d4 | c4    c4    d4      | b4. -+ c8  c4  |
    g'4. f8 e4 | \ac e8 d4. d8 d4 | e8 d8 e8 f8 e8. f16 | d2  -+     c4  |
    b4.  b8 b4 | \ac b8 a4. a8 a4 | g4    g4    a4      | fs4.-+ g8  g4  |

    g'8 a8 g8 f8 e4 | d8 c8 d8 e8 d4 | g8 a8 g8 f8 e4 |

    d4.  d8 d4 | \ac d8 e4. e8 e4 |                  | f4 f4 e4 | d4. -+ c8  c4  | R2.
    d4.  d8 e4 | \ac e8 f4. f8 f4 |                  | d4 d4 e4 | cs4.-+ cs8 cs4 | R2.
    f4.  f8 f4 | \ac e8 d4. d8 d4 | \ac d8 e4. e8 e4 | c4 c4 d4 | b4. -+ b8  b4  | R2. | R2.*8 |
    g'4. f8 e4 | \ac e8 d4. d8 d4 | \ac d8 e4. e8 e4 | f4 f4 e4 | d4. -+ d8  d4  | 

    g8.[ g16] f8[ f16 e16] d8.\p\m[ c16] |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Sicut erat"
    \time 2/2

    c2 r2 | R1*4

    g'4 g8 g8 g4 g4 | e4 f4 d4.-+ c8 | c2

    c8 d e f | g f g a g a g f | e f e f g4. f16 e16 | d2.-+

    d4 | d2~ d4. d8 | d1 | d2. d4 | d1~ | d2 d2 | d1 |

    d4 g8 g g a g f | e d e f g4. f16 e16 | d2-+

    e4 e4 | d4-+ d4 d4 b4 | e4. e8 e4 d4 | c4 c4 c2 | b2-+ d4 d4 | e4 e8 e8 d4. d8 | g4 \ap f8 e4 d4.-+ c8 |

    c8 e16( f16 g8) g g a g f | e8 e16( f16 g8) g g a g f | e2-+

    c2~ | c4 c4 c2~ | c4. c8 c2 | c1~ | c4 c4 c2~ | c2 c2 | c1 |
    
    \x
    a4\ga   f'8 g8 a4  a4  a8 bf a   g   f g f e |
    d4-+ g8  g8 g4  g4  g8 f  g   a   g^"*" a g f | % > note is a bf in manuscript
    e d  e f e f e f g4    f8 g8 a g f e\gz |

    d2-+ d4 d4 | b4-+ b4    e4 e4 | d4. d8 d4  e4   | f4 f4 f4.-+ e8 |
    d2   d4 d4 | b4-+ b8 b8 c4 c4 | d4 e4  d4.-+ c8 | c2 r2 |

    R1*3 | r2 \tempo "majestueusement" g'4\f g4 | e4.-+ e8 e2 | d2. d4 |
    e4 e8 f8 e8 f8 g8 a8 | g4._\ce g8 g4~ g16 f16 e16 f16 | e1-+ \fe \fine
  }
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket.direction = #UP
    }
  }
}
