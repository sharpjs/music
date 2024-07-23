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
pa  = #parenthesize
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
    r4 d4 |

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
    a8-. e-. cs-.\m a-. d-. d-. b-.\m g-. |
    c-. c-. a-. f'-. d4\m f8 f |
    bf16 bf a bf g8-. g-. e-.\m c-. f-. f-. |
    d-.\m d-. g-. g-. e-.-+ e-. a4\m |
    a8 a16 g f8 e d8. e16 cs8-. e-. |
    f-. d-. b-. d-. e-. c-. a-. f'-. |
    d4.-+ bf'16 a g8-+ f e4-+ |

    \time 2/2
    d1 \fe |

    \section
    \sectionLabel "Symphonie"
    \tempo "gravement"

    r2

    <<
      { \voiceOne
        a'4\m bf | a\um a g \ap a32 f4 | e2-+ \fe
      }
      \new Voice { \voiceTwo
        f4\m g | f\um f e \ap f32 d4 | cs2-+ \fe
      }
    >>
    \oneVoice

    \br r | d2. d4 | d d bf-+ bf | g2-+ \fe \br

    <<
      { \voiceOne
        g'4 \ap g16 a4 | \ap a16 bf4 a g-+ \ap { f32 g } a4 | g2-+ \fe \br
      }
      \new Voice { \voiceTwo
        e4 \ap e16 f4 | \ap f16 g4 f e-+ \ap { d32 e } f4 | e2-+ \fe \br
      }
    >>
    \oneVoice

    e4\m e | \ap e16 f4 f f e-+ | \ap e8 f2
    f4 e | d-+ c c d | b2-+
    g'4 \ap a32 f4 | e-+ f \ap f32 e4 d | cs2-+ \br

    <<
      { \voiceOne
        a'4 g | a g f e | f\upprall e f \ap f32 e8 f | e2-+ \fe \br
      }
      \new Voice { \voiceTwo
        f4 e | f cs d cs | d cs d \ap d32 cs8 d | cs2-+ \fe \br
      }
    >>
    \oneVoice

    cs!4-+ cs | \ap cs16 d4 \ap d32 e4 \ap e16 f4. f8 |
    fs4-+ fs g a | \ap a8 bf4 \ap a32 g4 \ap f32 e4 \ap f16 g4 | cs,2-+
    d4 d | d2 cs4.-+_\ce d8 | d2 \fe \ca

    \section
    \sectionLabel "Dormierunt somnum"

    r | R1*4 | r4 r8

    \tempo "vivement"

    e8 f f f8. f16 |
    d8 d g g e-+ e16 e e8. c16 |
    \ac e8 f4 f8 c d16 c bf a g8.-+ f16 |
    f2 \ca

    r2 | R1*3 | r4 r8

    e'8 a a a8. a16 |
    f8 f d d g g16 g g8. g16 |
    e4-+ e8 cs d e16 f e8.-+ d16 |

    \key d \major

    \section
    \sectionLabel "Symphonie"

    r1

    %{
      Dormierunt somnum suum, et nihil invenerunt omnes viri divitiarum in manibus suis.
      Ab increpatione tua, Deus Jacob, dormitaverunt qui ascenderunt equos.
      Tu terribilis es; et quis resistet tibi? ex tunc ira tua.
      De caelo auditum fecisti judicium: terra tremuit et quievit
      cum exsurgeret in judicium Deus, ut salvos faceret omnes mansuetos terrae.
      Quoniam cogitatio hominis confitebitur tibi, et reliquiae cogitationis diem festum agent tibi.
      Vovete et reddite Domino Deo vestro, omnes qui in circuitu ejus affertis munera: terribili,
      et ei qui aufert spiritum principum: terribili apud reges terrae. 
    %}

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
