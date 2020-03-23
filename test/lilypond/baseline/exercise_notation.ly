% This LilyPond file was generated by Rosegarden 15.12
\include "nederlands.ly"
\version "2.12.0"
#(set-global-staff-size 18)
#(set-default-paper-size "a4")
global = { 
    \time 4/4
    \skip 1*8 
}
globalTempo = {
    \override Score.MetronomeMark #'transparent = ##t
    \tempo 4 = 120  
}
\score {
    << % common
        % Force offset of colliding notes in chords:
        \override Score.NoteColumn #'force-hshift = #1.0
        % Allow fingerings inside the staff (configured from export options):
        \override Score.Fingering #'staff-padding = #'()

        \context Staff = "track 5, guitar chords" << 
            \set Staff.instrumentName = \markup { \center-column { "guitar chords " } }
            \set Score.skipBars = ##t
            \set Staff.printKeyCancellation = ##f
            \new Voice \global
            \new Voice \globalTempo
            \set Staff.autoBeaming = ##f % turns off all autobeaming

            \context Voice = "voice 1" {
                % Segment: guitar chords
                \override Voice.TextScript #'padding = #2.0
                \override MultiMeasureRest #'expand-limit = 1
                \once \override Staff.TimeSignature #'style = #'() 
                \time 4/4
                
                \clef "treble"
                R1  |
                 s4*0^\markup \fret-diagram #"6-x;5-o;4-2;3-2;2-2;1-o;" R1  |
                 s4*0^\markup \fret-diagram #"6-o;5-7;4-6;3-7;2-5;1-o;" R1  |
                 s4*0^\markup \fret-diagram #"6-o;5-7;4-6;3-7;2-5;1-o;" R1  |
%% 5
                 s4*0^\markup \fret-diagram #"6-x;5-o;4-o;3-2;2-1;1-2;" R1  |
                 s4*0^\markup \fret-diagram #"6-x;5-o;4-2;3-o;2-2;1-o;" R1*3  |
                \bar "|."
            } % Voice
        >> % Staff (final) ends

    >> % notes

    \layout {
        indent = 3.0\cm
        short-indent = 1.5\cm
        \context { \Staff \RemoveEmptyStaves }
        \context { \GrandStaff \accepts "Lyrics" }
    }
%     uncomment to enable generating midi file from the lilypond source
%         \midi {
%         } 
} % score
