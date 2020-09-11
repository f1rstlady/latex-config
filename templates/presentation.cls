\DeclareOption{english}{\PassOptionsToPackage{english}{language}}
\DeclareOption{german}{\PassOptionsToPackage{german}{language}}
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

% vi: ft=tex
