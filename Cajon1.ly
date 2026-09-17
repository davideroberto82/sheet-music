% Cajon – trascrizione degli esercizi ritmici dal PDF allegato
% Preparato per Hacklily / LilyPond
%
% LEGENDA INTERNA DEL CODICE:
% B = TONO BASSO  -> testa rettangolare aperta personalizzata
% A = TONO ACUTO  -> piccolo cerchio nero pieno
% G = GHOST NOTE  -> testa a X
%
% Ogni esercizio: 4/4, 16 sedicesimi, sticking R/L alternato,
% repeat barline all'inizio e alla fine, come nel modello del PDF.

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 15\mm
  system-system-spacing.basic-distance = #13
  score-markup-spacing.basic-distance = #3
  markup-system-spacing.basic-distance = #2
  ragged-bottom = ##f
}

\header {
  title = "CAJON – ESERCIZI RITMICI"
  subtitle = "By Davide Roberto"
  tagline = ##f
}

% --- NOTEHEADS ----------------------------------------------------------
% TONO BASSO: rettangolo vuoto, per avvicinarsi al simbolo del PDF.
cajBass = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup {
    \override #'(line-join-style . miter)
    \path #0.16
      #'((moveto -0.82 -0.40)
         (lineto  0.82 -0.40)
         (lineto  0.82  0.40)
         (lineto -0.82  0.40)
         (closepath))
  }
  \once \override NoteHead.stem-attachment = #'(1 . 1)
  c16
}

% TONO ACUTO: piccolo cerchio nero pieno.
cajAcute = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup {
    \draw-circle #0.43 #0 ##t
  }
  \once \override NoteHead.stem-attachment = #'(0 . 1)
  c16
}

% GHOST NOTE: X.
cajGhost = {
  \once \override NoteHead.style = #'cross
  c16
}

sticking = \lyricmode {
  R L R L R L R L R L R L R L R L
}

% Layout comune: pentagramma ritmico a una linea e sigla R/L sotto.
% Essendo a livello superiore, questo \layout vale per tutti i 102 score.
\layout {
  indent = 0\mm
  ragged-right = ##t
  \context {
    \Lyrics
    \override LyricText.font-family = #'sans
    \override LyricText.font-size = #-1
    \override LyricText.self-alignment-X = #CENTER
  }
  \context {
    \RhythmicStaff
    \override StaffSymbol.thickness = #1.15
  }
}

\markup { \bold "Esercizio 1" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 2" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 3" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 4" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 5" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 6" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 7" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 8" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 9" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 10" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 11" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 12" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 13" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 14" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 15" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 16" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 17" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 18" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 19" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 20" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 21" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 22" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 23" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
  \cajGhost \cajGhost \cajBass \cajGhost
  \cajAcute \cajGhost \cajBass \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 24" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajAcute \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 25" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajGhost \cajGhost \cajAcute \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 26" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajAcute \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 27" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajAcute \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 28" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajAcute \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 29" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajAcute \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 30" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajAcute \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajAcute \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 31" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 32" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 33" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 34" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 35" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 36" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 37" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 38" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 39" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 40" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 41" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 42" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 43" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 44" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 45" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 46" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 47" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 48" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 49" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 50" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 51" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 52" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 53" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 54" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 55" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 56" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 57" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 58" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 59" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 60" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 61" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 62" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 63" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 64" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 65" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 66" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 67" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 68" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 69" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 70" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 71" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 72" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 73" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 74" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 75" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 76" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 77" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 78" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 79" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 80" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 81" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 82" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 83" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 84" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 85" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 86" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 87" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 88" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 89" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 90" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 91" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 92" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 93" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 94" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 95" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 96" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajBass
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 97" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 98" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 99" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
  \cajBass \cajBass \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 100" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajGhost
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 101" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajBass \cajGhost \cajBass
  \cajAcute \cajGhost \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}

\markup { \bold "Esercizio 102" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
        \numericTimeSignature
        \time 4/4
        \repeat volta 2 {
  \cajBass \cajGhost \cajGhost \cajGhost
  \cajAcute \cajGhost \cajGhost \cajGhost
  \cajBass \cajGhost \cajGhost \cajBass
  \cajAcute \cajBass \cajGhost \cajBass
        }
      }
    >>
    \new Lyrics \lyricsto "rhythm" \sticking
  >>
}