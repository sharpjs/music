\version "2.24.4"
\language "english" % note names

\paper {
  #(set-paper-size "letter")
}

\header {
  dedication = #f % "Header"
  title      = "O Lachrymae"
  subtitle   = "Grand motet ~ LWV 26 ~ interprété par Les Epopées"
  composer   = "J. B. Lully"
  opus       = #f % unused due to placement
  instrument = "Violino primo (e oboe e flauto)"
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
rit = \markup { \italic "rit." } 
sim = \textMark \markup { \small \italic "sim." }
x   = \once \override HorizontalBracketText.text = "*"
ni  = \once \override HorizontalBracketText.text = \markup { \small \italic "inégales" }

soli  = \markup { \italic "soli" }
tutti = \markup { \italic "tutti" }

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

    \key d \minor

    \once \revert Staff.TimeSignature.style
    \time 4/4

    % ---------------------------------------------------------------------------------------------
    \section
    \sectionLabel "Symphonia"

    \tempo "adagio"
    \textMark \soli

    \once \override TextScript.script-priority = #-100
    d'4\m ^\markup { \sharp } \f \ag a\(( { bf64 c d) } \ap e32 f4.\) e8 |
    d2-+ e4. f16 g | cs,2-+ d4\m a8.( bf32 c) | bf4.-+ c8 a2-+~ |
    a4.-+ \ag bf8\(( a64 ) \ap { g a bf } g4.-+\) a8 | a2 \br \break

    a'4\m ^\soli \p e8. e16 | \ap e8 f4 fs8.-+ fs16
    g4 d8. d16 | \ap d8 ef2. c8. c16 | \ap c8 d4. g16 f e4. e16 c |
    f4. g8 e4. f8 | f2 \br \break

    a,4.\m ^\tutti a8 | \ap a8 bf2\m b4.-+ b8 | \ap b8 c2 cs4.-+ cs8 | \ap cs16 d2
    g4. g8 | g4.( a16.-.) e32 \ap e8 f2 | f4.( g16.-.) a32 e4.-+ d8 | d2\m \break

    \section
    \sectionLabel "O Lachrymae"
    
    r2 ^\markup { \italic "alto solo" } \repeat segno 2 { | R1*6 | r2
    r2 ^\markup { \italic "alto 2ᵒ e tenore duo" }        | R1*4 | r2
    r2 ^\markup { \italic "basso tenore solo"  }          | R1*5 | r2 \break

    \section
    \sectionLabel "Exite"

    r2 ^\tutti |
    r4 r8 e8 \ap e16 f8 f,16 g \ap g a4 | c c c( b8.-+) c16 | c4. \br

    c8 a4-+ a8 f | d8.-+ d16 f8 f f4( e8.-+) f16 | f4

    r r2 | R1*2 | r4 r8

    g'8 ^\soli d c bf c16 a | \ap a16 bf4 bf8
    bf' bf a \ag g-+( a32) f8 | e-+ f16 d e4
    e f8 g | a8. a,16 \ag bf8( c32) c8\prallup d8. d16 g8. g16 | g4 f8.\m g16 e4-+ \br

    c8. ^\tutti c16 | b8. b16 c4 c d8 e | e2

    \section
    \sectionLabel "Rorate"

    r2 | R1*2 | e4..\m e16 d8. d16 e4 |
    \ap e32 a,8. a16 a8. a'16 g8 f e \ap f16 d8 |
    cs4-+ cs8 \br e f e d \ap e16 c8 |
    b-+ b r g' g f e f16 d |
    cs8 cs d d d4( cs8.-+) d16 |
    d2 \br

    \section
    \sectionLabel "Symphonia"
    \textMark \markup { \italic "flauti" }

    d2\m~ | d2 c4. c8 | c2 bf4. c8 | a4.-+ a8 d4. d8 | d4 e8 f e4.-+ d8 cs2-+

    r2 | R1*2 | r2

    d2~ | d2 c4.-+ c8 | c2 bf4.-+ bf8 | bf4. c8 a2~-+ | a4 bf8 a g4.-+ f16 g | a2 \br \break

    \section
    \sectionLabel "O fons amoris"
    \textMark \markup { \italic "rec." }

    r2 | R1*18 | r2

    \section
    \sectionLabel "Faciem velimus"

    \textMark \markup { \italic "recitanti" }
    r2 | r2

    \textMark \tutti
    d4 d8 c | b8.-+ b16 b4

    \textMark \markup { \italic "recitanti" }
    r2 | r2

    \textMark \tutti
    e4\m f8 g | a8.   a16 a4 \br
    f4\m f8 e | d8.-+ e16 f4 f4 e8.-+ f16 |

    \once \revert Staff.TimeSignature.style
    \time 3/2 f1.

    \section
    \sectionLabel "Non in gaudio"
    \textMark \markup { \italic "recitante" }

    R1.*10 |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    r2 c2~ | c4. bf8 bf2 | a2 d2~ | d4. c8 c2 |

    \once \revert Staff.TimeSignature.style
    \time 3/2

    \ap c4 b2-. r2 r2 | R1.*11 |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    r2 e4.\m e8 | d4. e8 f2 | e2-+ e4 e | e2( ds-+)

    \once \revert Staff.TimeSignature.style
    \time 3/2

    e2-. \br b b | \ac ds8 e2. e4 e2 | r2 a,1 | r2 b1 | r2 c c | a2.-+ a4 a2 |
    r2 f'1 | r2 d f | f e2.-+ f4 | 
 
    \once \revert Staff.TimeSignature.style
    \time 4/4

    f2 r2 | R1*3 |

    \once \revert Staff.TimeSignature.style
    \time 3/2

    r2 cs cs | \ac cs8 d2. d4 d2 | r2 ds1-+ | r2 e1 | r2 d d | b2.-+ b4 b2 |

    g' d c4 b | b2_"rit." a2.-+ g4 |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    g2 \fe

    \section
    \sectionLabel "Invocamus te"

    d'4. d8 | \ap d32 ef1 | d1-+ | d4. c8 c2~ | c4 bf8-+ a \ap a bf2 | a2-+ a4 a | d d b2-+ |
    c4 c f f | d2-+ f4 f8 f | f2 e-+ | f r | R1*4 |
    a,4 a d d | b2-+ e4 e8 e | \ap e16 a,2 a | b4 b e e | cs2-+ d4 d8 d | d2_"rit."( cs\prallmordent) |
    \ap cs8 d1\fe \ca

    \volta 2 \fine
    \volta 1

    \section
    \sectionLabel "Symphonia"

    \tempo "presto"
    \time 3/4

    R2.*3 |
    a'8 g f4.-+ f8 | e d e f g a | \ac a bf4 bf,8 c d e | \ap e f4. f8 e d | cs2.-+ |
    R2.*3 |
    r4 \ap { c32 d32 } e2 | r4 f2~ | f4( e) e | e( d) d | d e8 d e cs |
    d4 bf'2\m | e,4 \ap { f32 g } \ag a2 a32( | d,4) \ac f8 g2 |
    cs,4-+ f4. e8 | e4.-+ d8 d4 |

    \section
    \sectionLabel "Exultent caeli"

    R2.*8 | R2.*4 | R2.* 3 |

    cs2 cs4 | d4. cs8 d4 | b2 b4 | c4. b8 c4 | a b c | c b2-+ |

    \pa e4 e e | d8-+ c d e f g | \ac g a2 g8 f |
    e-+ d e f g a | e f e4.-+ d8 | d4 r2 | %{ Was d2. in manuscript %}

    a'4 a e | e2 e4 | R2. | R2.*7 | R2.*3 |

    e4 e e | \ac e8 fs4 d d | d d c | c_\rit b2 |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    a2 \fe r2

    \section
    \sectionLabel "Et in excelsis"

    \tempo "grave"
    \once \revert Staff.TimeSignature.style
    \time 3/2

    R1. | g'2 g g | \ap { g16 a } bf1 bf2 | r1_\rit r2\fe |

    \section
    \sectionLabel "Tibi modulemur"
    \tempo "presto"
    \time 3/4

    cs,4. d8 e cs | d2 d4 | b4. c8 d b | e f e d c4 | f8 e f g \ap f e4 |

    R2.*5 | e4. d8 d e | \ap d4 cs2 cs4 |

    R2.*7 | f4. f8 f f | e2-+ e4 |

    R2.*5 |

    \textMark \markup { \italic "violino solo" }
    fs4.-+ g8 a4 | d,-+ g8 a g f | e\m d e f g e | a4 a4.-+ g8 | g f g e a4~-+ | a8 g g4.-+ f8 | 

    f4
    \textMark \markup { \italic "violini soli" }
    a,8 bf c d | b-+ c b c d e | cs4.-+ d8 e f | d4. e8 f g | \ag cs,4( b8) a4 a'-. | d,-. d4.-+ cs8 | d2 r1 |

    b4. c8 d b | e2 e4 | f4. f8 f ef | \ap ef4 d2 d4 |
    R2.*2 | R2.*3 | R2.*5 | R2. |
    e4. d8 c4 | c4. b8 cs4 | d8 ef f ef f d | cs4-+ r2 | R2.*2 | 
    b4.-+ b8 c4 | a4. a8 d4 | b b e~ | e8 a,8 a4 gs8. a16 %{diff%} | a2.
    f'4. f8 f4 | d4. d8 e4 | cs2-+ cs4 | d4. a8 a4 | bf4. bf8 a4 | d_\rit d cs8.-+ %{diff%} d16 |

    \once \revert Staff.TimeSignature.style
    \time 4/4

    d2 \fe r2

    \section
    \sectionLabel "Nos peccatores"

    d4 d8 d8 e4 f4 | r8 c c d bf4.-+ a8 | a4.-+

    c8 \after 1*1/8 \turn c4( d8.-+ c32 d) |

    \ap d16 ef4 ef8 ef d4-+ d | r8 d d\m ef c4.-+ b8 | b2-+ r2 |

    R1*2 | r2 d4.\m d8 | ef8. ef16 ef4 e4.-+ e8 | f8. f16 f4 d-+%{f%} d | d8. d16 d4 r2 |
    R1*2 | c4. c8 cs8.-+ cs16 cs4 | d2.%{c im%} d4 | b8.-+ b16 b4 a4. a8 | f'8.\f f16 f4 r4 f~ |
    f f g4._\rit f8 | e2-+\fe r2

    \section

    }
  }
}
