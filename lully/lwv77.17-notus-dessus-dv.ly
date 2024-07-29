\version "2.24.3"
\language "english"

\paper {
  #(set-paper-size "letter")
}

\header {
  dedication = #f % "Header"
  title      = "Notus in Judæa"
  subtitle   = "Grand motet ~ LWV 77/17 ~ interprété par Les Epopées"
  composer   = "J. B. Lully"
  opus       = #f % unused due to placement
  instrument = "Dessus de violon, hautbois et flûtes"
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
pa  = #parenthesize
um  = #prall         % pincé en montant
tf  = \trill ^ \markup { \tiny \flat }
tr  = #trill         % tremblement simple

am  = \markup { \italic "au mouvt." }
ce  = \markup { \italic "cédez" }
ma  = \markup { \italic "marque" }
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

    \overrideTimeSignatureSettings 4/4 1/4 1,1,1,1 #'()
    \overrideTimeSignatureSettings 2/2 1/4 1,1,1,1 #'()

    \key c \major

    \once \revert Staff.TimeSignature.style
    \time 4/4

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Symphonie"

    \tempo "vivement"

    \ac c'8 \f d4 d8 d16 a \ap a bf4. bf8 |
    g4-+ g8 \pa c16 c16 a8.-+ a16 a4 |
    \ac e'8 f4 \ac e8 d4 g8 e \ac d8 c8. f16 |
    f8. g32( a) g8.-+ f16 f2 \br |

    c4\m c8 c16 a d4. e8 |
    cs4-+ cs8. e16 a,8. a16 a4 |
    \ac e'8 f4 \ac e8 d4 g8[ e] \ac d8 cs8[ d] |
    d8. e32( f) e8.-+ d16

    \section
    \sectionLabel "Notus in Judæa"

    d4 a8 \mp f' |
    d4.\at g8 \ac f8 e8. f16 g8 e |
    \ac e8 f8. f16 f4 a\prallup bf | 
    b8 g a8. a16 a8. g16 g8.-+ f16 |
    f2 \br

    a4\m g8 a |
    f4.-+ g8 e4-+ e8. cs16 |
    d8.\m d16 d4 \ac cs8 d4 \ac cs8 b4 |
    e e8 d d4 cs8.-+( b32 cs) |

    d4 \cresc d8 d16 d e4. e8 |
    \ac e8 f2 \f

    d4 d8 d16 d |
    \ap d8 c4. a8 \ac a8 \ag bf4( a16) g8 g' |
    \ac f8 e8. e16 e4

    a8-^ a-^ a-^ e |
    \ac e8 f4. d8 c8. \dim c16 c8 c |
    a8.\tf a16 a4 \p

    f'8 f d d |
    \ac c8 b4 b8 b \cresc \ac d8 e8. e16 e4 |

    c8 c e c f4 f8 f |
    e8.-+ \f e16 e8 fs g8. g16 g4 |

    f8 f e f d8. cs16 d8 e |
    cs4-+ r \fe

    f4. f8 | f f f e f4 e8.-+ d16
    d2 r | R1*7 |

    \section
    \sectionLabel "Ibi confregit"

    \once \revert Staff.TimeSignature.style
    \time 6/8
    \textMark \markup { \italic "violons" }
    d8 \mf b d cs16-+ b cs d e cs |
    \textMark \markup { \italic "tous" }
    d8 e f e16-+  d e  f g e |
    f8 d f e8.-+ d16 c8 |
    f8. f16 f8 d4-+ g8 |
    e8.-+ e16 e8 a8 g4-+ |

    f8 a, d b-+ d g |
    e8. f16 e d cs4-+ cs8 |
    \ac e8 f8. f16 f8 d4 d8 |
    g8. a16 cs,8 d8 cs4-+ |

    d8 \f a d cs-+ cs cs |
    d16 c d e f g e8.-+ d16 e c |
    f8. e16 d c b8.-+ b16 b8 |
    \ac d8 e4 e8 d8. d16 d8 |
    c8 b4-+ a4. |

    \ac e'8 f8 f f d d e | 
    f16 g a g f e d8. d16 g8 |
    e8. e16 e8 c4\m c8 |
    \ac e8 f8. f16 f8 g8 e4-+ |

    f8 \mp c f e e e |
    c a c f f d | 
    cs16 \cresc b cs d e cs f8. f16 f8 |
    \ac f8 e8. \f e16 e8 \ac e8 f4 f8 |
    d8. d16 d8 g8 e4-+ |

    \time 2/2
    d2
    \textMark \markup { \italic "violons" }
    r4 d4\mf |

    % possible page break

    \section
    \sectionLabel "Illuminans tu"

    \once \revert Staff.TimeSignature.style
    \time 4/4

    \ac g8 a8. a16 a4 \ac e8 f4 f8 f |
    e8.-+ e16 e8 a fs4\prallup g8. g16 |
    g8 f16 e f8. g16 e4-+ e8 e |
    \ac g8 a4 a8 a f8. f16 bf8 bf |
    bf4 a8. bf16 \ac a8 g8 e f8. g16 |
    g4. g8 f4 \br c8 f |

    e8. e16 e8 fs g4 d8 e |
    f8. f16 f8-. d-. b-. e-. a8. a16 |
    \ac a8 gs8-. e-. a8. a16 a4 gs8. a16 |
    a8-. e-. cs-.\um a-. d-. d-. b-.\um g-. |
    c-. c-. a-. f'-. d4\um f8 f |
    bf16 bf a bf g8-. g-. e-.\um c-. f-. f-. |
    d-.\um d-. g-. g-. e-.\um e-. a4\m |
    a8 a16 g f8 e d8. e16 cs8-. e-. |
    f-.-> d-. b-. d-.-> e-. c-. a-. f'-. |
    d4.-+ bf'16 a g8-+ f e4-+ |

    \time 2/2
    d1 \fe |

    \section
    \sectionLabel "Symphonie"
    \tempo "doucement"

    \textMark \markup { \italic "flûtes" }
    r2\p

    <<
      { \voiceOne
        a'4\m bf | a\um a g \ap a32 f4 | e2-+ \fe
      }
      \new Voice { \voiceTwo
        f4\m g | f\um f e \ap f32 d4 | cs2-+ \fe
      }
    >>
    \oneVoice

    \br r |
    \textMark \markup { \italic "tous" }
    d2. d4 | d d bf-+ bf | g2-+ \fe \br

    \textMark \markup { \italic "flûtes" }
    <<
      { \voiceOne
        g'4 \ap g16 a4 | \ap a16 bf4 a g-+ \ap { f32 g } a4 | g2-+ \fe \br
      }
      \new Voice { \voiceTwo
        e4 \ap e16 f4 | \ap f16 g4 f e-+ \ap { d32 e } f4 | e2-+ \fe \br
      }
    >>
    \oneVoice

    \textMark \markup { \italic "tous" }
    e4\m e | \ap e16 f4 f f e-+ | \ap e8 f2 \pa \br

    f4 e | d-+ c c d | b2-+ \pa \br

    g'4 \ap a32 f4 | e-+ f \ap f32 e4 d | cs2-+ \br

    \textMark \markup { \italic "flûtes" }
    <<
      { \voiceOne
        a'4 g | a g f e | f\upprall e f \ap f32 e8 f | e2-+ \fe \br
      }
      \new Voice { \voiceTwo
        f4 e | f cs d cs | d cs d \ap d32 cs8 d | cs2-+ \fe \br
      }
    >>
    \oneVoice

    \textMark \markup { \italic "tous" }
    cs!4-+ cs |
    \ap cs16 d4\cresc \ap d32 e4 \ap e16 f4. f8 |
    fs4-+ fs g a^\markup { \italic "hésitez" } |
    \ap a8 bf4\fp \ap a32 g4\p \ap f32 e4 \ap f16 g4 |
    cs,2-+ \br

    d4 d |
    d2 cs4.-+_\ce d8 | d2 \fe \ca

    \section
    \sectionLabel "Dormierunt somnum"

    r | R1*4 | r4 r8

    \tempo "rondement et marqué"
    e8\mf \ac e f f f8. f16 |
    \ac e8 d d g g e-+ e16 e e8. c16 |
    \ac e8 f4 f8 c d16 c bf a g8.-+ f16 |
    f2 \ca

    \tempo "doucement"
    r2 | R1*3 | r4 r8

    \tempo "rondement et marqué"
    e'8 \ac g a a a8. a16 |
    f8 f \ac e d d g g16 g g8. g16 |
    e4-+ e8 cs d e16 f e8.-+ d16 |

    \section
    \sectionLabel "Symphonie"
    \key d \major

    d8 a'\f a a fs8.-+ fs16 fs8 d |
    a'4 a-. d,--\m d8 r |
    \ac d e4.-- e8 \ag cs4---+ cs16 cs4-. |
    r e--\mp e-- e-- |
    e2~ e8 cs\mf cs cs |
    d16 e d e fs g fs g a8 b e,4-+ |

    \section
    \sectionLabel "Ab increpatione"

    d r r2 | R1*5 |

    r8 a\f a a d8. d16 d8 d |
    e4-- e8 r fs4-- fs8 r |
    b,4.-- b8 cs4-- cs8 r |
    r4 a--\mp a-- a-- |
    a2-- a8 a\mf a a |
    fs16 g fs g a b a b cs8 d b4-+ | a8

    e'\f e e a8. a16 a8 fs |
    g4-- g8 r e4-- e8 r |
    e4.-- ds8 e4-- e8 r |
    r4 cs--\mp cs-- d-- |
    cs2---+ cs8 cs\mf cs d |
    b16 cs b cs d e d e fs8 g e4-+ |

    \section
    \sectionLabel "Tu terribilis es"

    \once \revert Staff.TimeSignature.style
    \time 2/2

    d4 a8 a d8 d16 d cs8 a |
    d8 d d d b4-+ b |
    g'8 g e e16 e cs4-+ a'8 a |
    fs fs16 fs d8 d g g16 g g8 g |
    \ac fs e e e fs ds4.-+ b8 |
    e fs16 g fs4-+ e2 |
    cs8 cs fs fs16 fs d4 d8 d |
    g g16 g g8 g fs fs16 fs d8 d |
    b-+ b e e e4~ e8 e |
    e d16 cs b4-+ a2 |
    a'8 a fs fs16 fs d4 d8\> d |
    \ac cs b b16 b \once \autoBeamOff g8\pp g'\mf fs fs fs g |
    fs4 e8 d d e16 fs e4-+ |


    \once \revert Staff.TimeSignature.style
    \time 4/4

    \after 32 \< \after 8 \f d4. \fe \ca

    \section
    \sectionLabel "Symphonie"
    \key c \major

    \tempo "doucement"
    \textMark \markup { \italic "flûtes" }
    <<
      { \voiceOne
        a'8 bf4( a8-+) a | g4\at g8 g g4 f8\um e16 f | e8.-+ e16 e4
      }
      \new Voice { \voiceTwo
        f8\p g4( f8) f | e4 e8 e e4 d8\um cs16 d | cs8.-+ cs16 cs4
      }
    >>
    \oneVoice r4 \fe

    \tempo "legerement"
    \textMark \markup { \italic "tous" }
    cs8.-+\mp e16 | a, bf a bf a bf a g f\> g f g f g f e | d8.\pp d16 d8 r \fe

    \tempo "doucement"
    e4.\p f8_\ce | f4.\>( e8-+) f4\pp r8 \fe

    \textMark \markup { \italic "flûtes" }
    <<
      { \voiceOne
        a'_\am | g4-+ g8 a f4-+ f8 f | \ap f32 g4\m g8 g e8.-+ e16 e4 |
      }
      \new Voice { \voiceTwo
        f8\p | e4-+ e8 f d4-+ d8 d | \ap d32 e4\m e8 e cs8.-+ cs16 cs4 |
      }
    >>
    \oneVoice r4 \fe

    \tempo "legerement"
    \textMark \markup { \italic "tous" }
    cs8.-+\mp e16 a,8. a16 a4 |
    \ac g'8 a8. a16 f g f e d\< c d ef d ef d c |
    bf8.\mf bf16 bf8 r8 \fe

    \gr { e,16 e } e4._\ce f8 | e4.-+\> d8 \after 8 \p d4 \fe \ca

    r |

    \section
    \sectionLabel "De coelo"
    \tweak X-offset -3
    \tempo "doucement"
    
    R1*2 r4 \fe

    \tempo "legerement"
    \ac d'8 e8.\mf e16 a, bf a bf a bf a g | f\> g f g f g f e d8. d16 d8\mp r \fe |

    \tempo "doucement"
    e4. f8\< e4-+\> e8\p r\fe |

    \tempo "legerement"
    r4 a8.\mp a16 f g f g f g f e | d8\< d16 d d'8 d bf8. bf16 bf8\mf r \fe |

    \tempo "modere"
    g4_\ce a g2-+\> | f4\p\fe \ca

    \tempo "doucement"
    r r2 | R1 | r2 r4\fe

    \tempo "legerement"
    \tiny d'8.\mp d16 g,8 g16 g g'8. g16 \normalsize e\< f e f e f e d | c8. c16 c8\mf r\fe

    \tempo "lentement"
    b4._\ce\mp c8 | gs4-+\> gs8\p r r4\fe 

    \tempo "legerement"
    a8. a16 | a\< g a bf a bf a g f8.\mp f16 f8 r | r4\fe
    f'8.\mf f16 d\< c d ef d ef d c | bf8.\f bf16 bf8 r r4\fe

    \tempo "lentement"
    a8._\ce\mp a16 | << a4 { s16\< s8\> s16\! } >> a8 r r2\fe \ca |

    \section
    \sectionLabel "Cum exurget"

    R1*8 | \time 2/2 r2\fe

    \section
    \sectionLabel "Quoniam cogitatio"
    
    \tempo "rondement"
    r2^\markup { \italic "hautbois" } |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    <<
      { \voiceOne
        e'8. e16 e4 f8 f d d16 d |
        g8. g16 g8 g c,4 c8 d |
        e2 g8. g16 g4 |
        a8 a f f16 f bf8. bf16 bf8 bf16 a |
        g4 g8 f e4 e |
        r e8 e f4 f8 f |
        d d d e c f d g |
        e4 e8 e c c f16 e d c |
        b4 b8 e c d b e |
        cs4 e8 e a4 a8 a |
        f4 f8 f bf4 bf8 bf |
        g4 g8 a f g e8. f16 |
        f4 c8 c f4 f8 f |
        d4 d8 d g g16 g g8 g |
        e4 e8 a f g e e |
        f4 f8 f f8. e16 e8. d16 |
        d4
      }
      \new Voice { \voiceTwo
        cs8.\mf cs16 cs4 d8 d b b16 b |
        e8. e16 c8 c a4 a8 b |
        c2 e8. e16 e4 |
        f8 f d d16 d g8 d d e16 f |
        cs4 cs8 d cs4 cs |
        r cs8 cs d4 a8 d |
        b b b c a d b b |
        c4 g8 c a a d16 c b a |
        gs4 gs8 c a b gs8. a16 |
        a4 c8 c f4 f8 f |
        d4 d8 d g4 d8 g |
        e4 e8 f d bf g c |
        a4 a8 a d4 a8 d |
        b4 b8 b e4 b8 e |
        cs4 cs8 f d d d cs |
        d4 a8 a d8. e16 cs8. d16 |
        d4
      }
    >>
    \oneVoice r r2 | R1*19 |

    \once \revert Staff.TimeSignature.style
    \time 2/2

    r4 \fermata

    \section
    \sectionLabel "Terribili"

    r8^\markup { \italic "tous marqé" }

    f\f \ac d8 c8. c16 c8 c |
    \ac e f8. f16 f8 f e4-- e8 fs |
    g8 g g16 g g8 \ac g f8. f16 f8 f |
    d8. d16 d4-. bf8-> bf-> g-> c-> |
    \ac bf8 a4.-> \br f'8\mf \ac ef d8. d16 d8 d |
    \ac c bf8. bf16 bf4-. bf8-> c-> \ac bf a-> a-> |
    bf4---> \once \autoBeamOff g8-. d'\f e8. e16 e8 e |
    f4-- f8 f g g g16 g g8 |
    c,8. c16 c8 f d8. d16 d8 g |
    e4-- e8 c d d d16 d d8 |
    e8. e16 e8 g g g e16 e e8 |
    f8. f16 f8 d \ac c8 b8. b16 b8 b |
    \ac b8 c8. c16 c4-. c8-> c-> a-> b-> |
    gs4--->-+ \once \autoBeamOff gs8-. b\p \ac d e8. e16 e8 e |
    \ac d c8. c16 c4-. a8-> a-> a-> gs-> |
    a4---> \once \autoBeamOff a8-. a\f f'8. f16 f8 r |
    r4\fe r8 a,\p d8. d16 d8 r |
    r2\fe d8->\f d-> d-> cs-> d4.---> r8 r2 |

    \fine
  }
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket.direction = #UP
    }
  }
}
