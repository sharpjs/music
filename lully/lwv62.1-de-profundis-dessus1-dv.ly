\version "2.24.3"
\language "english"

\paper {
  #(set-paper-size "letter")
}

\header {
  dedication = #f % "Header"
  title      = "Psalme 129 ou De profundis"
  subtitle   = "Grand motet   LWV 62"
  composer   = "J. B. Lully"
  opus       = #f % unused due to placement
  instrument = "Premier dessus de violon, hautbois et flûte"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column {
    "Engraving © 2024 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

% Time reference: https://www.youtube.com/watch?v=uMTnG3R0Psw

trill = #prallprall

ac = #acciaccatura  % short port-de-voix
ag = #afterGrace    % chûte
ap = #appoggiatura  % port-de-voix
at = #lineprall     % tremblement appuyé
br = #breathe
ca = #caesura
fe = #fermata
gr = #grace
m  = #mordent       % pincé
nl = #break
p  = #parenthesize
um = #prall         % pincé en montant
tr = #trill         % tremblement simple
t  = \markup { \bold "+" }

ne = \markup { \italic "notes égales" }
ni = \markup { \italic "notes inégales" }

am = \markup { \italic "au mouvt." }
ri = \markup { \italic "rit." }

dashPlus = \trill

\score {
  \relative c' {
    \override Score.SectionLabel.font-size           = 0.5
   %\override Staff.TimeSignature.style              = #'single-number % does not work as documented
    \override Staff.NoteHead.style                   = #'baroque % baroque style breve
    \override Staff.MultiMeasureRest.space-increment = 0         % multi-measure rests same width
    \compressEmptyMeasures                                       % no empty measures after breve

    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

    \key d \minor
    \time 2/2

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Simphonie"
    % [47:59]

    \tempo "lentement"
    d2.\p\m d4 | d2 d4 d | bf'\m bf bf bf | g4.-+ g8 g2 |
    a4.\m a8 a4 a | d4.\m c8 c4 d | \ag b2-+ b8 b2 | \nl
    cs4.-+ cs8 cs4 cs | d d d d | d2( cs4.-+ b16 cs) | d1 \br |

    g,2.\p\m g4 | g2 g4 g | \ac d'8 ef4 ef \ag ef( d8) c4 | a4.-+ a8 a2 | \nl
    f'4.\m f8 f4 f | \ap f8 g2 g4 g | c, c d ef | d2( c4.-+) bf8 | bf1 \br |

    f2.\m f4 | f2\m f4 f | c' c \ag c( {b32 c32)} b4 | \ap b8 c4. c8 c2 \br |
    fs,4.-+ fs8 fs4 fs | \ap fs8 \ag g2 g8 g4 g4 | % overlap section

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "De profundis"
    % [49:00]

    % basse solo
    a a g g | g2( fs4.-+ e16 fs) | g2. \br

    d'4 | \ap d8 ef4. ef8 ef4 ef | \ag c2-+ c8 c4 c | a2-+ a4 a | d,2 g4 g |
    g2 g4 a | f g a bf | e,2-+ a4. a8 | a1 \br |

    % taille solo (C3 clef / haute-contre in manuscript)
    bf2.\m bf8 c | \ap c8 d2 d4 d | d2 c4 c | c1
    bf2. bf4 | bf2. bf4 | bf4. a8 a4.-+( g16 a) | bf2
    bf4 bf | g2-+ c4 c | c2 c4 d | bf c d ef | a,4. a8 a4.-+ g8 | g1 \nl |

    % tous
    R1*2 | g2. g4 | g2 g4 g' | g g g g | c,4. c8 c2 |
    d4. d8 d4 d | \ag d2( ef8) d4 g | g g f f | f2 f \br |

    bf,4. bf8 bf4 ef | c2-+ c4 f | d-+ d d g | d2( c4.-+) bf8 | bf1 \br |

    d2.\m d4 | \ap d8 g,2 g4 \ap c16 ef4 | \ap ef8 d2 d4 g | f-+ f f f |
    d4.-+ d8 d2 | ef4. ef8 ef4 g | c, c c c | c2( b4.-+ a16 b) | c1 \br |

    a4. a8 a4 d | d2 c4 c | c c bf8 a bf4 | bf2( a4.-+) g8 | g2 c |
    r4 c bf bf | a2. a4 | a2-+ a4 a | d d d d | d2( cs4.-+) d8 | d1 \br \nl |

    d4. d8 d2 | e4. e8 e4 e | f f f f | f2 f4 f |
    fs-+ fs g g | g2( fs4.-+ e16 fs ) | g1 \br |

    \pageBreak

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Fiant aures tuae"
    % [51:41]

    % instrumental
    bf,4 bf b-+ b | \ap b16 c4 c d d | \ap d8 ef2 ef4 c |
    f\m ef d-+ c | bf af af8-+( g) af4 |

    % dessus solo
    g2-+ f | ef-+ g4 g | g2 g4 g | f2 f4 g | \ap g8 a2 a4 a | d,2.
    bf'4 | bf b-+ c g | c c bf bf | bf2( a4.-+ g16 a) |

    % taille solo (C3 clef / haute-contre in manuscript)
    bf2 f4 g | a a bf8 c d4 | c2 d | d cs4-+ d | a2 a4( g4)\um | \ap g8 a2.
    \ap d16 cs4 | d4 e \ap e16 f4 a, | bf f \ap f16 g4 g | f2 e4.-+ a8 | fs1-+ \br |

    % tous
    bf4 bf ef ef | d-+ d f g | f2-+ f \br |
    f4 f \ag ef( \p d8) ef4 | d-+ d d d | d2 d4 \p \br
    d | g f ef ef | ef4. ef8 d4 d | c1-+ \br |
    bf4 c d d | ef ef b-+ c | c c b4.-+( a16 b | c4) \br
    g c bf | \ap bf16 a4 a d4. d8 | bf2-+ bf | \ag bf( c8 \ag c2-+ d8) | d1 \br |
    r4 d g f | ef d c4.-+ c8 | c2 bf | a1-+ | g \br  |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Si iniquitates"
    % [53:32]

    % instrumental
    g4.\m g8 g4 bf | e,4.-+ e8 e4 e | \ac g8 a2 a4 a | fs4.-+ fs8 fs2 \br |
    d'4.\m d8 d2 | r4 g, g g |

    % dessus solo
    g2 f4 f | f2 f4 g | ef2-+ g4 g | f4. f8 f2 \br |
    a4. bf8 c2 | d4 d bf bf | bf2 a | bf r |
    g4. g8 g2 | r4 g a bf | a2-+ a \br |

    % basse solo
    a4 a a a | bf2 bf | a-+ a |
    d, g | g e | a f4 f | f2( e4.\p-+ d16 e) | f2

    % haute-contre solo
    a | \ap a8 g2 g4 a | a1 | a2 d |
    e cs-+ | d d4 d | d2( cs4.-+ b16 cs) | d2 r |
    d4.\m d8 d2 | bf-+ bf4 c | a2-+ a4 a |

    % basse solo
    \ap a8 bf2 bf4 bf | bf2 a | a2. a4 | a1 \br | 
    fs4.-+ fs8 fs2 | r4 fs g a | g fs g a | fs2-+ r |

    % tous
    d'4.\m d8 d4 f | a,2-+ a4 a | b2-+ b4 b | \ap b8 c4. c8 c2 |
    d4. d8 d4 ef | f f \ag f( ef16 ) d4 | \ap d8 ef2 ef4 ef | d4.-+ d8 d2 |
    c4. c8 c2 | \ag c2 c8 c4 d | bf bf ef2~ | ef d4 d |
    d2 c-+ | c bf8-+ a bf4 | a1-+ | g | R \ca | 

    \pageBreak

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Quia apud te"
    \key g \minor
    % [56:04]

    % instrumental
    \textMark "a 3"
    g'4 g         g  g  |     f4.  f8 f4 f   | ef4.        ef8 ef4.      f8 | d2.-+        \br g4 |
    ef  ef        ef af | \ag f2-+ f8 f2     | g4\m    g8  af  bf4 c        | f,4.-+ f8 f4 \br f  |
    ef  ef \ac d8 c4 c  | \ag a2-+ a8 a2 \br | bf4     bf8 bf  bf4\m   ef   |
                                             | a,4.\at     b8 \ap b8 c4. d8 | b2.-+ \br g'4 |

    g     g      g-+ g | \ap g8 af2\m    af \br    | \nl
    d,4   d8  d  d4  d |        d4.-+ d8 d2 \br    |
    ef4\m ef8 ef ef4 d |        ef2(     d4.-+) c8 |

    % dessus solo
    c2 r | R1*8 | R1*9 | R1*10 | \time 3/4 R2. \br | \nl

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Sustinuit anima" % et "Speravit anima"
    % [57:48]

    % basse solo
    g'2\m af4 | af2 g4 | g f4. f8 | f4 ef4. ef8 | ef4( d4.-+ c16 d) | ef4 ef8 f ef-+ d |
    \ap d8 c2 c4 | bf bf c | af4.-+ g8 af bf | g4-+ g' af | f-+ f d | \ap d8 ef2 ef4 |

    \ap ef8 f2 f4 | \ap f8 g4 g4. g8 | af8 g f4.-+ ef8 | d2-+ \br g4 |
    ef2-+ af4 | f2-+ f4 | f2 bf4 |
    g4. f8 g4 | ef2 ef4 | f4. g8 af4 | g2.-+ | f4 f4.-+ ef8 | ef4 \br bf ef8 d |

    c2-+ c4 | bf4 bf c | af4. g8 af bf | g4 g' af | \ap g16 f4 f d | \ap d8 ef2 \br ef4 |

    f2 f4 | g4. g8 g4 | af8 g f4.-+ ef8 | d2-+ \br g4 |
    ef2-+ af4 | f2-+ f4 | f2 bf4 |
    g f4. g8 | ef2 ef4 | f4. f8 af4 | g2.-+ | f4 f4.-+ ef8 | ef f g f g af |

    f4-+ f8 ef f g | \ap g8 af2 af4 | g8 f ef4 d8 g | fs4.-+ fs8 fs4 | g fs4.-+ g8 | g2 \br d4 |
    g2 g4 | c,2 c4 | \nl \ap {d16 ef} f2 f4 | d4.-+ d8 d4 | ef d4.-+ c8 |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "A custodia"
    % [59:22]

    \time 2/2 c2 r2 | R1 | \time 3/4 R2. |

    \tempo "vite"
    \textMark "tous"
    ef4. ef8 ef4 | \ap d16 c2 c4 |
    c4.  c8  b4  | \ap b16 c2 c4 | %{\nl%}
    c2 c4 | \ap ef16 d4. d8 d4 | ef c d | b4.-+ b8    b4    |
    c2 c4 | \ap c16  d4. d8 d4 | ef c d | ef( d4.-+_\ri) c8 |

    \tempo "au mouvt."
    \time 2/2 c2 r2 | R1*3 | \time 3/4 R2. |

    \tempo "vite"
    \textMark "tous"
            d4. d8 d4 | \ap d8 g,2  g4 |
    \ap c16 d4. d8 c4 |        b2-+ b4 |

    \ap {b16 c} d2  ef4 |              c4.   c8  c4  | \ag d(c8)  bf4        d       | c4.-+ c8  c4  |
                d2  d4  |              ef4.  ef8 ef4 |     ef \ag d4(c8) \ag bf4(a8) | a4.-+ a8  a4  |
    \ap {g16 a} bf2 bf4 | \ap {a16 bf} c4.   c8  c4  |     bf     bf         c       | a4.-+ g8  g4  |

    R2.*4 | R2.*4 | R2.*4 |

    \textMark "flûtes" g'2 af4 | f4.-+ f8 f4 | g  ef-+ f  | d4.-+ d8  d4     |
    \textMark "tous"   ef2 f4  | d4.-+ d8 d4 | ef c-+  ef | d4.-+ ef8 ef4    |
    R2.*4 \nl |        ef2 f4  | d4.-+ d8 d4 | ef c-+  d  | d4.-+ c8  c4 \ca |

    \tempo "au mouvt."
    \time 2/2
    c2 c4 r \ca | g'4 g g4. g8 | c,2 f4 f | f f ef8 d ef4 | %{\nl%} ef2_"rit."( d4.-+) c8 |

    \time 3/2
    c1 r2 | R1. \ca |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Ritournelle / Quia apud Dominum"
    \key g \major
    % [1:01:09]

    \tempo "gracieusement"
    R1.*2 | g'2\m g g4 a | fs2.-+ fs4 fs2 |
    e2 e2. fs4 | \ap fs g2.\m g4 g2 | f2.-+ f4 f2 | e1-+ e2 |
    d2 g1~ | g2 f1~-+ | f2 e1~-+ | e2 d1~-+ |
    d2 c1~-+ | c2 b1~-+ | b2 a2.-+ a4 | a2. a4 b\m c |
    \ap c d1 c2~ | c2. c4 b e | a,2 a2.-+ g4 |
    
    % % ---------------------------------------------------------------------------------------------
    % \section
    % \sectionLabel "Quia apud Dominum"
    % [1:01:56]

    g2 r1 | R1.*7 | R1.*8 |

    \tempo "rondement"
    \time 2/2
    R1   | r4 d' d d | g  g  g  e  | c2-+ c4 f | e2(  d4.-+) c8 | c4 r r2 |
    R1*3 | r4 e4 e e | fs fs fs fs | d2-+ d4 g | fs2( e4.-+) d8 | d4 r r2 |
    R1*3 |

    \tempo "gracieusement"
    \time 3/2
    d2\m d2       g2   |       g2 f2.-+ f4 | f2.\m e4 f g |       e1-+ e2 |
    e\m  e \ap e4 a2   |       a  g2.-+ g4 | g2.   g4 a e | \ap e f1\m f2 |
    f2\m f2       f4 g | \ap g a1     e2   | a   g-+  f   |

    \tempo "rondement"
    \time 2/2
    f2( e4.-+) d8 |

    d4 a  a  a  | d d b b | e  e  c  c  | c2   b4 b | b2( a4.-+)  b8 | b4 r r2 | R1*3 |
    r4 b  b  b  | e e e e | fs fs fs fs | d2-+ d4 d | d2( cs4.-+) d8 |
    d4 fs fs fs | g g d d |               b2-+ b4 c | b2( a4.-+)  g8 |
    g2    r2    |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Et ipse redimet"
    % [1:01:56]

    R1*12 |

    r4 d' d  d | b4.-+  b8  b2  | \ap d16  e4. e8 e4 e | ds4.-+ ds8 ds4 ds | e e e e8 e | e2( ds-+)         |
    e4 e  e  e | cs4.-+ cs8 cs2 | \ap cs16 d4. d8 d4 d | b4.-+  b8  b4  b  | c c c c8 c | c2  b4.-+( a16 b) |
    c4 r  r2   |

    R1*16 |

    r4 d    d  d | \ap d16 e4.  e8  e2  |          c4.-+ c8 c4 c | a4.-+ a8 a4 a | b c d d8 d | d2( cs4.-+ b16 cs)   |
    e4. f8  f4 f | c4.->        c8  c2  |          e4.-> e8 e4 e | b4.-> b8 b4 b | c c c c8 d | c2  b4.-+( a8)       |
    a4. e'8 e4 e | \ap e16 fs4. fs8 fs2 | \ap fs16 g4.-> g8 g4 d | b4.-+ b8 b4 c | c c b b8 c | b2( a4.-+_"rit.") g8 |
    g1 \ca       |

    \pageBreak
    
    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Simphonie"
    \key d \minor
    \tempo "lentement"

    r2 d'2\m~ | d4 d c-+ d | \ag bf1-+( {a16 bf)} | a2-+ a4 bf | g2.-+ a4 | \ap a8 bf4.\m a8 a2-+ |
    f'2.\m g4 | ef4-+ ef ef4. f8 | d2-+ g~\m | g4 g f f | e2-+ e |
    \ap e8 fs4 fs g\m d | \ap d8 ef4. ef8 ef2 | a,4-+ a bf bf | bf2 a4.-+ bf8 | bf2 \br
    d~\m | d4 d c2~-+ | c bf | bf2( a4.-+ g8) |

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Requiem aeternam"
    
    g1 | R1*2 | r2 d'2~ | d4 d c c | c2 b4.-+(a16 b) |
    c2 c4 c | a-+ a \ap a8 bf4 g | d'2.\m d4 | d2 \br
    bf~ | bf4 bf \ap bf8 af4 af | g2-+ g |
    a4\m a bf bf | bf2( a4.-+ bf8) | bf2 d4 d | e2 f~ | f( e4.-+ f8) | f2 \br
    f~ | f4 f e-+ e | cs-+ cs d d | d d cs4.-+ d8 | d2 \br
    d~ | \ag d d4 c2~ | \ag c c4 bf4.-+ a8 | a1-+ |

    % ---------------------------------------------------------------------------------------------
    \section 
    \sectionLabel "Et lux perpetua"

    \tempo "vite"
    R1 | R1*6 | r4

    g8( a bf c d ef | f4) f8 f ef2-+ | d4 g g g | g1~ | g2~ g4. g8 | g2
    b,4-+ b8 b | c4 c8 c b4.-+( a16 b) | c4

    c8( d e f g e | f4) f8 f g2 | c,
    e4 e8 e8 | f4 f8 f e4.-+( d16 e) | f4

    f,8( g a bf c d | ef4) ef8 ef d2-+ | c4 f f f | f1~ | f2~ f4. f8 | f2
    a,4-+ a8 a | d4 d8 d c2-+ | bf2

    bf8( c d ef | f4) f8 f ef2-+ | d2
    d4 d8 d | c4-+ c8 c bf2-+ | a2 f'4 f8 f | d4-+ d8 d d2 | cs4

    a8( b cs d e f | g4) g8 g f2-+ | e
    g4 g8 g | f4\p-+ f8 f e2-+ | d e4 e8 e | f2 cs | f4 f8 f e2-+ | d1 | r2

    d8( e f g) | \ac g a4 a8 a g4 d |
    c4 c8 c bf2-+ | a2. d4 | d4 d d2~ | d4. d8 d4

    d8( e | fs8 g a fs) g4 g8 g | g4 g8 g fs4.-+( e16 fs) | 

    \time 3/2
    g2 r2 r2 \ca | \nl

    \tempo "lentement"
    ef2    ef ef | ef~  ef4. ef8 ef4\fe r4 \ca |
    c2_\ri c  c  | a~-+ a4.  a8  a4 \fe r4 \ca

    \time 2/2
    \tempo "vite"
    fs'4 fs8 fs g4 d | g g8 g fs4.-+( e16 fs) | g4 r4 r2 |

    \fine
  }
}
