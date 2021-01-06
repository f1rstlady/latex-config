\DeclareOption{english} {\PassOptionsToPackage{english}{f1rstlady/language}}
\DeclareOption{german}  {\PassOptionsToPackage{german}{f1rstlady/language}}
\DeclareOption*         {\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions*

\LoadClass[10pt,xcolor=x11names]{beamer}
\RequirePackage{f1rstlady/font}
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/textflow}
\RequirePackage{f1rstlady/miscellaneous}

% Draw URLs in blue and all other links black
\hypersetup{
    colorlinks,
    allcolors = black,
    urlcolor = RoyalBlue3}

% Theming
\usecolortheme{beaver}
\addtobeamertemplate{navigation symbols}{}{% frame numbers in the lower right corner
    \usebeamerfont{footline}
    \usebeamercolor[fg]{footline}
    \hspace{1em}
    \raisebox{0.5ex}[0ex][0ex]{\insertframenumber/\inserttotalframenumber}}

% To set minor items in lists smaller and grey
\RequirePackage{relsize}
\newcommand*{\minor}[1]{\textcolor{grey!80}{\smaller #1}}
