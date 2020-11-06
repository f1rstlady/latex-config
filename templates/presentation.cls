\DeclareOption{english}{\PassOptionsToPackage{english}{f1rstlady/language}}
\DeclareOption{german}{\PassOptionsToPackage{german}{f1rstlady/language}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions*

\LoadClass[
        xcolor=x11names,
        hyperref={colorlinks=true,linkcolor=,urlcolor=DodgerBlue4}
    ]{beamer}
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/textflow}

% Use Source Sans Pro as default, Source Code Pro as monospaced font
\usefonttheme{professionalfonts}
\RequirePackage{f1rstlady/font}
\setsansfont{Source Sans Pro}
\setmonofont{Source Code Pro}

% Theming
\usecolortheme{beaver}
\addtobeamertemplate{navigation symbols}{}{% frame numbers in the lower right corner
    \usebeamerfont{footline}
    \usebeamercolor[fg]{footline}
    \hspace{1em}
    \raisebox{0.5ex}[0ex][0ex]{\insertframenumber/\inserttotalframenumber}
}

% vi: ft=tex
