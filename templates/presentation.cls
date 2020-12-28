\DeclareOption{english} {\PassOptionsToPackage{english}{f1rstlady/language}}
\DeclareOption{german}  {\PassOptionsToPackage{german}{f1rstlady/language}}
\DeclareOption*         {\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions*

\LoadClass[10pt,xcolor=x11names]{beamer}
\RequirePackage{f1rstlady/font}
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/textflow}

% Draw URLs in blue and all other links black
\hypersetup{
    colorlinks,
    linkcolor =,
    urlcolor = DodgerBlue4}

% Theming
\usecolortheme{beaver}
\addtobeamertemplate{navigation symbols}{}{% frame numbers in the lower right corner
    \usebeamerfont{footline}
    \usebeamercolor[fg]{footline}
    \hspace{1em}
    \raisebox{0.5ex}[0ex][0ex]{\insertframenumber/\inserttotalframenumber}}
