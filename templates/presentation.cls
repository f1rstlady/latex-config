\RequirePackage{f1rstlady/prelude}

\LoadClassWithOptions
    [ 10pt
    , xcolor = x11names
    ]{beamer}
\LoadPackage
    { f1rstlady/font
    , f1rstlady/language
    , f1rstlady/textflow
    , f1rstlady/hyperlinks.d/email
    , f1rstlady/miscellaneous
    }

% Draw URLs in blue and all other links black
\hypersetup
    { unicode,
    , bookmarksnumbered % Include section and chapter numbers in the bookmarks
    , colorlinks
    , allcolors = black
    , urlcolor = magenta
    }

% Theming
\definecolor{darkred}{rgb}{0.8,0,0}
\setbeamercolor{alerted text}{fg=darkred!80!gray}

\setbeamertemplate{navigation symbols}{% frame numbers in the lower right corner, nothing else
    \small
    \textcolor{blue}{\insertframenumber}
    \hspace{0.3em}\vspace{1ex}
}

% To set minor items in lists smaller and grey
\LoadPackage{relsize}
\newcommand*{\minor}[1]{
    \textcolor{black!50}{\smaller #1}
}
