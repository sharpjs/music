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
    % Overrides from defauls specified here
    % https://github.com/lilypond/lilypond/blob/master/scm/time-signature-settings.scm
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

afterAppogiatura = #(define-music-function (main grace) (ly:music? ly:music?) #{
  \afterGrace { #main ( } { #grace ) }
#})

gr  = #grace            %
ac  = #acciaccatura     % port-de-voix (rapide?)
ap  = #appoggiatura     % port-de-voix (en montant) / coulé (en descendant)
ag  = #afterGrace       %
aap = #afterAppogiatura % chûte

m   = #mordent          % pincé
um  = \prall ^ "*"      % pincé en montant [my notation]

tr  = #prall            % tremblement
trr = #prallprall       % tremblement prolongé [my term]
atr = #lineprall        % tremblement appuyé
tru = #prallup          % tremblement et tour de gosier
trd = #pralldown        % tremblement et tour de gosier
utr = #upprall          % tour de gosier et tremblement
dtr = #downprall        % tour de gosier et tremblement

tu  = #turn             % tour de gosier
rtu = #reverseturn      % tour de gosier

uf  = ^ \markup { \hspace #0.4 \tiny \flat    }
un  = ^ \markup { \hspace #0.4 \tiny \natural }
us  = ^ \markup { \hspace #0.4 \tiny \sharp   }

br = #breathe
ca = #caesura
fe = #fermata
nl = #break

ga = #startGroup
gz = #stopGroup
pa = #parenthesize

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

am   = ^ \markup \italic "au mouvt."
ce   = _ \markup \italic "cédez"
doux = ^ \markup \italic "doux"
expr = _ \markup \italic "expr."
fort = ^ \markup \italic "fort"
ma   = _ \markup \italic "marque"
peu  = _ \markup \italic "peu"

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
