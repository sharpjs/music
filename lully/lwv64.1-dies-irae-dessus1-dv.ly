\version "2.22.1"
\language "english"

\header {
  dedication = #f % "Header"
  title      = "Dies Irae"
  subtitle   = "Grand Motet   LWV 64/1"
  composer   = "J. B. Lully"
  opus       = #f % unused due to placement
  instrument = "Premier dessus de violon"
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column {
    "Engraving © 2024 Jeffrey Sharp. Licensed under CC BY-SA 4.0."
    "To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/"
  }
}

% Time reference: https://www.youtube.com/watch?v=uMTnG3R0Psw

% Tempi:
% vite          "lively"
% vivement      "strongly"
% légèrement    "lightly"
% rondement     "roundly"
% gracieusement "gracefully"
% gravement     "seriously"
% lentement     "slowly"
% doucement     "gently"

trill = #prallprall

ac = #acciaccatura
ag = #afterGrace
ap = #appoggiatura % port de voix
at = #lineprall    % port de voix + trill
br = #breathe
ca = #caesura
fe = #fermata
m  = #mordent
rm = #prall
tr = #trill        % battement
t  = \markup { \bold "+" }

ne = \markup { \italic "notes égales" }
ni = \markup { \italic "notes inégales" }

am = \markup { \italic "au mouvt." }
ri = \markup { \italic "rit." }

ga = #startGroup
gz = #stopGroup

xa = #(define-music-function
  (music) (ly:music?)
  #{ \footnote #'(-1 . 1) \markup \tiny { "A in manuscript" } #music #}
)

xb = #(define-music-function
  (music) (ly:music?)
  #{ \footnote #'(1 . 1) \markup \tiny { "G in manuscript" } #music #}
)

xc = #(define-music-function
  () () #{
    \footnote #'(1 . 1) \markup \tiny {
      \note {4}  #1
      \note {4.} #1
      \note {8}  #1
      "in manuscript"
    } HorizontalBracket
  #}
)

xd = #(define-music-function
  (music) (ly:music?)
  #{ \footnote #'(1 . 2) \markup \tiny { "B" \flat " in manuscript" } #music #}
)

xe = #(define-music-function
  (music) (ly:music?)
  #{ \footnote #'(1 . 2) \markup \tiny { "B" \flat " in manuscript, likely mistaken" } #music #}
)

\score {
  \relative c'' {
    \override Score.SectionLabel.font-size           = -0.5
    \override Score.SectionLabel.font-shape          = #'italic
   %\override Staff.TimeSignature.style              = #'single-number
    \override Staff.NoteHead.style                   = #'baroque % baroque style breve
    \override Staff.MultiMeasureRest.space-increment = 0         % multi-measure rests same width
    \compressEmptyMeasures                                       % no empty measures after breve

    \key d \minor
    \time 4/4

    \section
    \sectionLabel "Symphonie"
    % [1] 0:00:05

    \tempo "gravement"
    r2 d4.\m d8 | \ap d8 ef4. f8 d4\tr g~ |
    g fs8.\tr fs16 \ap fs8 g4 a8. a16 |
    \ap a8 bf4 e,8[ \ap { e32 fs } g8] \ag cs,8\tr( b32) a8 f'4~\m |
    f8. e16 e4.\m a16 cs, \ap cs d4~ |
    d8. cs16 cs8\tr( b16 cs) d4.. \br

    a16 | \ap a8 bf?4 b8.\tr b16 c2~ | c8. d16 b8\tr a16 b16 c4 \br

    ef8.\m ef16 | ef4( d8 ef16 f16 d4 c8.\tr) bf16 | bf2\m \br \break

    f'4( fs8.\tr) fs16 |
    g4 a8. a16 \ap a d,4 ef16( d) c( bf) |
    \ap bf a8.\tr a16 d16( c) bf( a) \ap a g8.\tr g16 c4~ |
    c8 d16 a \ap a bf8. c16 bf4( a8.\tr) g16 |
    g2
    \break

    \section
    \sectionLabel "Dies irae"

    g'4 fs4\tr | g g8 f ef4 d\tr | d bf'8 a g4\at a8 g | fs\tr g a4 d,4. d8 |
    d ef d c bf a bf c | d e f g \ap g a4 bf | fs\tr g2 fs8\tr_\ri( e16 fs) | g4 \br

    \break
    \section
    \sectionLabel "Quantus tremor"

    g8_\am g g4 d8 d | \ap d16 ef4. ef8 d4 d | d4. d8 d4(c8.\rm) d16 |
    d2. a'8 a | bf4\m d,8 d c4 c | c4. d8 c4.\tr bf8 | a2\tr \br \break
    a4. a8 | b4 c d4. d8 | ef4~ ef
     r2 | R1 | r2
     r4 ef~ |
    ef d2\tr c4~ | c8. c16 bf8. bf16 bf4( a8.\tr) g16 | g2

    \break
    \section
    \sectionLabel "Tuba mirum"

    \tempo "vivement"
    r4 d'8 d | d4 d d4. d8 | d4 c bf8 bf bf8. c16 |
    a8 f16 g a bf c d \ag ef4( d16) c4~ | c bf8 bf ef ef ef8. f16 |
    \ap ef16 d4 d8 d c4 c | c8 c ef4 d8 g,16 a bf c d ef |
    fs8 fs fs fs g4.-> f8 | \ap f16 e4 c8 c c c \ag f4( ef16) | d4 d8 d ef d c8.\rm bf16 | bf2 \br

    \break

    % Per sepulchra regiounum
    \tempo "gracieusement"
    d4. d8 | ef4 ef d4. d8 | c2\tr c \br |
    d4. d8 d4 g | e f f( e8.\tr) d16 | d2 \br
    d4. d8 | \ap d32 ef4 ef d d | \time 2/2 d2._\ri( c4) | \time 4/4 b2\tr\fe \break
    
    \section
    \sectionLabel "Mors stupebit"
    \tempo "au mvt."

    r2 | R1*8 |
    \new CueVoice {
      \autoBeamOff
      fs8^"basse" fs g16[fs] g8 g4(fs) | g2
      \autoBeamOn
    }
    \ca
    
    \section
    \sectionLabel "Liber scriptus"

    g'4 g | \time 2/2 g2\m g | bf4 bf bf2\m | bf\fe \br
    f4 f | ef ef d d | d2 d\fe \br |
    d4 d bf bf | c4. bf8 bf4( a8.\tr) g16 | \time 4/4 g2\fe \br

    \section
    \sectionLabel "Judex ergo"

    g'4 g | \ap g16 a4 a \ap a16 bf4. bf8 | a2\tr a2\fe \br |
    bf4 bf g\tr d | \ap d16 ef4 c \ap c16 d2 | d\fe \break

    \tempo "vivement"
    r4 c8. c16 | ef8-. ef-. ef8. ef16 d8-. d-. g8. g16 | fs4.\tr fs8 g4 g8. fs16 | 
    \ac f e8-. e-. c-. c-. c4 c8. c16 | d8-. d-. bf'-. bf-. \ac a g-. g-. \xa g( a) |
    g4( fs8\tr e16 fs g2\fe) |

    \pageBreak
    \section
    \sectionLabel "Quid sum miser"
    \tempo "au mvt."

    R1 | R1*8 |

    \new CueVoice {
      fs,4^"Haute-contre" r8 g g4( fs ) | g\fe
    }

    \section
    \sectionLabel "Rex tremendae"

    % [5:40] Rex tremendae majestatis,
    g'\fe r \ca f\fe | r4 \ca r8 d8 ef   ef f  g | ef4\tr r16 d( ef f d4\tr\fe) \ca \break
                f\fe | r4 \ca r8 bf a\tr a  bf a | g4.           a8   fs2\at |

    % [6:12] Qui salvandos salvas gratis, / Salva me, fons pietatis.
    R1*6 |
    \new CueVoice {
      \ottava -1
      fs,,4^"basse" g16( fs g8) g( a16 bf a4) | g\fe
      \ottava 0 \ca
    }

    % [6:44] Salva me, fons pietatis.
    \tempo "très lent."
    d''8.\m d16 d4\fe r \ca |
    \tempo "grav."
    bf bf8 c bf4 a8.\tr g16 |
    \tempo "grac."
    g2 \break

    \section
    \sectionLabel "Recordare"

    g'8^"dvn. 1" a bf bf |
    a4\tr bf4. bf16 g \ap g a4~ | a8 bf16 fs \ap fs g4. a8( fs8\tr e16 fs | g8) a bf4 a4.\tr a8 |
    d,4 ef4. d8 d4~ | d c2 bf4 | a8 bf a8. g16 g4. g'8 |
    f4. g16 d \ap d ef4. ef8 | ef8. f16 d4 c f | f4. bf8 a4.\tr a8 | \ap a16 d,4\m d4. c8 c4~\m |
    c bf\m a8 bf a8.\tr g16 | g2 \break

    \section
    \sectionLabel "Quaerens me"
    % 0:07:49

    r2 | R1* 11 |
    \new CueVoice {
      \autoBeamOff
      r4 a8 bf16[a] g4(fs) | g2
      \autoBeamOn
    }

    \section
    \sectionLabel "Juste judex"

    % [8:42] Juste judex ultionis
    g'4.\m^"tous" g8 | g2 g4 bf8. bf16 | a2\tr a \br |

    % Donum fac remissionis
    d,4. d8 c4. c8 | bf4.\tr bf8 a4\tr a \br | 

    % Donum fac remissionis
    bf4. c8 \ap c16 d4. d8 | d4. c8 d2 | d2 \br

    % Ante diem rationis
    d4. d8 | d4. d8 \ap d16 ef4. ef8 | d2. c4 | b2\tr

    \section
    \sectionLabel "Ingemisco"

    r2 | R1*10 | \time 3/4 R2.*1 \ca | \break

    \section
    \sectionLabel "Qui mariam"

    % [10:22] Qui Mariam absolvisti
    R2.*5 | r4

    % Et latronem exaudisti
    d^"dvn. 1"_\ni g~ | g f4.\tr f8 | f2 bf4~ | bf a4.\tr g8 | \xb fs2\tr r4 |

    % Qui Mariam absolvisti
    R2.*4 | r4

    % Et latronem exaudisti
    f4.\m f8 | f4 e4. e8 | e2 a4~ | a g4.\tr a8 | a2 g4 | \ag f( g8) e4.\tr d8 | d2

    % Qui mariam absolvisti
    r4 | R2.*5 |

    % Et latronem exaudisti
    r4 f bf~ | bf a4.\tr a8 | a bf a g \ag fs4 fs8 | g8 a fs4.\tr g8 | g2\m r4 |

    % Mihi quoque spem dedisti
    R2.*7 | \break

    \section
    \sectionLabel "Preces meae"
    
    \time 4/4 R1*14_\ne \ca

    \section
    \sectionLabel "Inter oves"

    % Inter oves locum praesta
    \time 3/4 R2.*8 |

    % Et ab haedis me sequestra
    \tempo "vivement"
    \time 2/2 r4 d8.-. d16-. f8-. f-. ef8.-. ef16-. | d8-. d-. d-. d-. c-. c-. c8.\tr( bf16-.) |
    \time 3/4 a4-^ a-^ r

    % Statuens in parte dextra
    R2.*13 |

    \section
    \sectionLabel "Confutatis"

    \time 4/4

    % Confutatis maledictis, / Flammis acribus addictis,
    \tempo "vite"
    d8-. ef-. ef-. ef-. d-.  d-.  c-^ c-. | f-. f-.     f8.->( ef16) d4-. r    | r2 r4 a8-. b-.    |
    c8-^ c-.  d-.  d-.  ef-^ ef-. g-. g-. | g8.-^ g16-. d8-. d-.     g4.->(a8) | \time 3/4 fs2.\tr |

    % Voca me cum benedictis,
    R2.*5 | r4 a4.\m   a8  | \ap a16 bf4 g4.\tr  f8 | e2.\tr     |
    R2.*2 | r4 f4.\m   f8  |         f4  d4.     d8 | \ap d8 ef4 d4.\at c8 | c2. |
    R2.*3 | r4 d4.\m   d8  | \ap d8  c4  r2         |

            r4 ef4. \ap d32 \ag ef8(f32) |         d4\at  r2         |

    R2.*9 |
            r4 bf'4. bf8 |         bf4(a4.\tr) g8 | fs4\tr g   g  |
            g4 f4.   f8  |         f4  ef4.    f8 | d4  d   ef |
            
            \xc

            ef4.\ga d8 d4\gz |
            d4. \ga c8 c4\gz |

                    c4  a \ap a8 bf4 | r8 c a4.\tr g8 |
            g4 \br bf'4.   bf8 |         bf4 a4.\tr     g8 | fs2.\tr       |
    R2.*5 |                                           d4_\ri  c\tr  bf  | bf   a4.\tr g8 | \time 4/4 g2\fe

    \section
    \sectionLabel "Oro supplex"

    r2_\am | R1*11 \ca |

    \section
    \sectionLabel "Lacrimosa"

    % Lacrimosa dies illa,
    R1*10 | \new CueVoice {
      ef'4^"dessus de P.C." d c2\tr | bf4\fe \ca
    }

    % Qua resurget ex favilla,
    \new CueVoice {
      \autoBeamOff
      d8. d16 c4 c8. f16 |
      \autoBeamOn
    }
    R1*3 \break
    \new CueVoice {
      b,2\fe
      \ottava -1
      g,4.^"B.-C." a8 | bf4
      \ottava 0
    }

    % Judicandus homo reus.
    d'8 d ef4   ef | c\tr  d  b2\tr           | b4       \br
    d8  d c4.   c8 | c4    bf bf(a8.\tr) bf16 | bf2      \br
    % Huic ergo parce, Deus.
          d4.\m d8 | d4    c  bf4.    bf8     | a2\tr a4

    r |
    R1*3 |
    d4. c8 bf4. a8 | g2\tr g4 \br c~ | c bf bf(a8.\tr_\ri) g16 | \time 2/2 g1\fe \ca
    \break

    \section
    \sectionLabel "Symphonie"
    \tempo "lentement"

    d'2\m~_\ni d4. a8 | \ap a8 bf2. bf8  a   | g1\tr \br |
    g'2\m~     g4. d8 | \ap d8 ef2~ ef4. ef8 | d2\tr~ d8 d     ef8. f16 |
                                               c2\tr~ c8 c \xd c\m  a   |
    \ap a8 bf4. bf8 bf4.\tr a8 | a2 \br \break

    a'4.\m a8 |        g2~ g8 g   f8.\tr e16 |
                \ap e8 f2~ f8 f   g\m    a   |
                \ap a8 e2~ e8 e-- a--    g-- |
    \ag fs4\tr(e8) d4  \br
    
    bf'4.\m bf8 | bf2 a4.\tr a8 | a4. bf8 g2~ | g4. fs8 fs4.\tr( e16 fs) | g2 \br
    bf4. \m bf8 | bf2 a4.\tr a8 | a4. bf8 g2~ | g4. fs8 fs4.\tr( e16 fs) |
    
    \section
    \sectionLabel "Pie Jesu"

    g2 r2 | R1*8 | R1*10 \ca \break | R1*3 |
    r2 d~ | d \glissando c~ | c bf4. c8 | a1\tr \br |

    a2. a4 | a2 bf4. bf8 | c2 c | \xe c2. c4 | d1

    c2 c  | d d  | d( cs4.\tr) \br d8 | d1~ | d \ca |
    
    d4 c \ag bf2\tr( c16) | a2\tr \br bf4 c | d1 | d2 \br c4( d | ef1 ) |
    d2\tr\br g~ | g fs4.\tr( e16 fs | g4.) f8 ef4.\tr \br d8 | d1~ | d \fine
  }
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket.direction = #UP
    }
  }
}
