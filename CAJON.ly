\version "2.26.0"

\header {
  title = "Untitled"
}% Cajon – trascrizione degli esercizi ritmici dal PDF allegato
% Preparato per Hacklily / LilyPond
%
% LEGENDA INTERNA DEL CODICE:
% B = TONO BASSO  -> testa rettangolare aperta personalizzata
% A = TONO ACUTO  -> testa triangolare piena
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
  subtitle = "Trascrizione per Hacklily / LilyPond"
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

% TONO ACUTO: triangolo pieno.
cajAcute = {
  \once \override NoteHead.style = #'triangle
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

\markup { \bold "Versione.1" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.2" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.3" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.4" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.5" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.6" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.7" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.8" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.9" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.10" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.11" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.12" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.13" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.14" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.15" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.16" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.17" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.18" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.19" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.20" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.21" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.22" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.23" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.24" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.25" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.26" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.27" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.28" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.29" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.30" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.31" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.32" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.33" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.34" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.35" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.36" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.37" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.38" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.39" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.40" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.41" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.42" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.43" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.44" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.45" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.46" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.47" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.48" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.49" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.50" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.51" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.52" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.53" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.54" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.55" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.56" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.57" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.58" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.59" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.60" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.61" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.62" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.63" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.64" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.65" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.66" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.67" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.68" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.69" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.70" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.71" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.72" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.73" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.74" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.75" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.76" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.77" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.78" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.79" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.80" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.81" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.82" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.83" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.84" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.85" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.86" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.87" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.88" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.89" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.90" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.91" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.92" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.93" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.94" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.95" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.96" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.97" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.98" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.99" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.100" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.101" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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

\markup { \bold "Versione.102" }
\score {
  <<
    \new RhythmicStaff <<
      \new Voice = "rhythm" {
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
