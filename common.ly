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
    \override TimeSignature.style = #'single-digit
  }
  \context {
    \Voice
    \override NoteHead.style                   = #'baroque
    \override MultiMeasureRest.space-increment = 0 % multi-measure rests same width
  }
}

trill = #prallprall

ac = #acciaccatura  % short port-de-voix
ag = #afterGrace    % chûte
ap = #appoggiatura  % port-de-voix
at = #lineprall     % tremblement appuyé
br = #breathe
ca = #caesura
fe = #fermata
ga = #startGroup
gr = #grace
gz = #stopGroup
m  = #mordent       % pincé
nl = #break
pa = #parenthesize
um = #prall         % pincé en montant
tr = #trill         % tremblement simple
tf = \trill ^ \markup { \tiny \flat    }
tn = \trill ^ \markup { \tiny \natural }
ts = \trill ^ \markup { \tiny \sharp   }

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

expr = \markup { \italic "expr." }
am   = \markup { \italic "au mouvt." }
ce   = \markup { \italic "cédez" }
ma   = \markup { \italic "marque" }

time-c = { \once \revert Staff.TimeSignature.style \time 4/4 }
