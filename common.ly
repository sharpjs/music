\version "2.24.4"
\language "english" % note names

\paper {
  #(set-paper-size "letter")
}

\layout {
  indent = 2.0\cm
  \context {
    \Score
    rehearsalMarkFormatter                    = #format-mark-box-alphabet
    \override InstrumentName.font-size        = -1
    \override InstrumentName.font-series      = #'medium
    \override SectionLabel.font-size          = -1
    \override SectionLabel.font-series        = #'medium
    \override SectionLabel.font-shape         = #'caps
    \override SystemStartBracket.extra-offset = #'(0.5 . 0)
    \override TextMark.font-size              = -1
    \compressEmptyMeasures
    \overrideTimeSignatureSettings 4/4 1/4 1,1,1,1 #'()
    \overrideTimeSignatureSettings 2/2 1/4 1,1,1,1 #'()
  }
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
  \context {
    \Voice
    \override NoteHead.style                   = #'baroque
    \override MultiMeasureRest.space-increment = 0 % multi-measure rests same width
  }
}

%% Ornaments
%% ref: https://lilypond.org/doc/v2.24/Documentation/notation/list-of-articulations#ornament-scripts

ac  = #acciaccatura   % port-de-voix (rapide?)
ap  = #appoggiatura   % port-de-voix [rising] / coulé [falling]
tr  = #prall          % tremblement
trr = #prallprall     % tremblement [longer]
atr = #lineprall      % tremblement appuyé
m   = #mordent        % pincé
um  = \prall ^ "*"    % pincé en montant [my notation]

gr  = #grace
ag  = #afterGrace      % chûte

sf  = ^ \markup { \hspace #0.4 \tiny \flat    }
sn  = ^ \markup { \hspace #0.4 \tiny \natural }
ss  = ^ \markup { \hspace #0.4 \tiny \sharp   }

br = #breathe
ca = #caesura
fe = #fermata
nl = #break

ga = #startGroup
gz = #stopGroup
pa = #parenthesize

aap = #(define-music-function (main grace) (ly:music? ly:music?) #{
  \afterGrace { #main ( } { #grace ) }
#})

% mi = #(define-scheme-function (mu) (markup?)
%   (markup #:italic mu)
% )

baseSectionLabel = #sectionLabel

sectionLabel = #(define-music-function (s) (string?) #{
  \baseSectionLabel \markup \box \pad-markup #0.25 #s
#})

phraseLabel = #(define-music-function (s) (string?) #{
  \tweak outside-staff-priority 1400 \textMark \markup \small \italic #s
#})

endPhrase = \tweak extra-offset #'(-0.75 . 0) \textMark \markup \musicglyph "accordion.pull"

who = #(define-music-function (s) (string?) #{
  <> ^ \markup \italic #s
#})

expr = _ \markup \italic "expr."
am   = ^ \markup \italic "au mouvt."
ce   = _ \markup \italic "cédez"
ma   = _ \markup \italic "marque"
doux = ^ \markup \italic "doux"
fort = ^ \markup \italic "fort"

timeDefault = #time

timeSingle = #(define-music-function (n) (fraction?) #{
  \once \override Staff.TimeSignature.style = #'single-digit \timeDefault #n
#})

time = #(define-music-function (n) (fraction?)
  (if (and (= 4 (cdr n)) (not (= 4 (car n))))
    (timeSingle  n) ; single-digit for /4 except 4/4
    (timeDefault n) ; default for others
  )
)
