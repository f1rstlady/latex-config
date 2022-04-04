\RequirePackage{f1rstlady/prelude}

\LoadClassWithOptions
    [ 10pt
    , xcolor = x11names
    ]{beamer}
\LoadPackage{f1rstlady/font}
\LoadPackage{f1rstlady/language}
\LoadPackage{f1rstlady/textflow}
\LoadPackage{f1rstlady/hyperlinks.d/email}
\LoadPackage{f1rstlady/miscellaneous}

% Draw URLs in blue and all other links black
\hypersetup
    { colorlinks
    , allcolors = black
    , urlcolor = RoyalBlue3
    }

% Theming
\definecolor{darkred}{rgb}{0.8,0,0}
\setbeamercolor{alerted text}{fg=darkred!80!gray}

\setbeamertemplate{navigation symbols}{% frame numbers in the lower right corner, nothing else
    \small
    \textcolor{blue}{\insertframenumber}
    \hspace{0.3em}\vspace{1ex}}

% To set minor items in lists smaller and grey
\RequirePackage{relsize}
\newcommand*{\minor}[1]{\textcolor{black!50}{\smaller #1}}
