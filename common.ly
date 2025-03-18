% Common LilyPond definitions - preferences, additions, aliases
%
% Copyright Jeffrey Sharp
% SPDX-License-Identifier: CC-BY-SA-4.0

% Defaults

\version "2.24.4"
\language "english" % note names

#(set-default-paper-size "letter")

\paper {
  ragged-bottom = ##t
}

\header {
  dedication = #f % header
  opus       = #f % unused due to placement
  copyright  = #f % unused due to placement
  tagline    = \markup \center-column \small {
    \concat {
      "Engraving © 2025 Jeffrey Sharp | "
      \with-url
        "https://github.com/sharpjs/music"
        "https://github.com/sharpjs/music"
    }
    \concat {
      "Licensed under CC BY-SA 4.0 | "
      \with-url
        "http://creativecommons.org/licenses/by-sa/4.0/"
        "http://creativecommons.org/licenses/by-sa/4.0/"
    }
  }
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

% Ornaments functions

% A slurred version of \afterGrace for chûte, accent/plainte
afterAppogiatura = #(define-music-function (main grace) (ly:music? ly:music?) #{
  \afterGrace { #main ( } { #grace ) }
#})

% A turn with accidental above; parameter supplies the accidental
turnAccidental = #(define-music-function (music) (ly:music?) #{
  \once \set suggestAccidentals = ##t
  \once \hideNotes #music \turn \noBeam
#})

% A reverse turn with accidental above; parameter supplies the accidental
reverseTurnAccidental = #(define-music-function (music) (ly:music?) #{
  \once \set suggestAccidentals = ##t
  \once \hideNotes #music \reverseturn \noBeam
#})

% Ornament aliases

gr  = #grace                  % -
ag  = #afterGrace             % -
ac  = #acciaccatura           % port-de-voix (rapide?)
ap  = #appoggiatura           % port-de-voix (en montant) / coulé (en descendant)
aap = #afterAppogiatura       % chûte

m   = #mordent                % pincé
um  = \prall ^ "*"            % pincé en montant [my notation]

tr  = #prall                  % tremblement
trr = #prallprall             % tremblement prolongé [my term]
atr = #lineprall              % tremblement appuyé
tru = #prallup                % tremblement et tour de gosier
trd = #pralldown              % tremblement et tour de gosier
utr = #upprall                % tour de gosier et tremblement
dtr = #downprall              % tour de gosier et tremblement

tu  = #turn                   % tour de gosier
ta  = #turnAccidental         % tour de gosier
rtu = #reverseturn            % tour de gosier
rta = #reverseTurnAccidental  % tour de gosier

uf  = ^ \markup { \hspace #0.4 \tiny \flat    }
un  = ^ \markup { \hspace #0.4 \tiny \natural }
us  = ^ \markup { \hspace #0.4 \tiny \sharp   }

% Other aliases

br = #breathe
ca = #caesura
fe = #fermata
nl = #break

ga = #startGroup
gz = #stopGroup
pa = #parenthesize

% Markup

% mi = #(define-scheme-function (s) (string?)
%   (markup #:italic mu)
% )

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

% Section and phrase labels

% The built-in \sectionLabel
baseSectionLabel = #sectionLabel

% My preferred \sectionLabel
sectionLabel = #(define-music-function (s) (string?) #{
  \baseSectionLabel \markup \box \pad-markup #0.25 #s
#})

% Labeled subsection (e.g. "Symphonie" in French baroque)
phraseLabel = #(define-music-function (s) (string?) #{
  \tweak outside-staff-priority 1400 \textMark \markup \small \italic #s
#})

% End of labeled subsection (my notation)
endPhrase = \tweak extra-offset #'(-0.75 . 0) \textMark \markup \musicglyph "accordion.pull"

% Time signatures

% The built-in \time
timeDefault = #time

% A single-digit \time
timeSingle = #(define-music-function (n) (fraction?) #{
  \once \override Staff.TimeSignature.style = #'single-digit
  \timeDefault #n
#})

% A smart \time - single-digit for */4 except 4/4; default for others
time = #(define-music-function (n) (fraction?)
  (if (and (= 4 (cdr n)) (not (= 4 (car n))))
    (timeSingle  n) ; single-digit for */4 except 4/4
    (timeDefault n) ; default for others
  )
)
