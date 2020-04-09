%
% The presentation class contains my default settings for the beamer document class.
%

% Options
\DeclareOption{english}{\PassOptionsToPackage{english}{language}}
\DeclareOption{german}{\PassOptionsToPackage{german}{language}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}

\ProcessOptions*

% Base class
\LoadClass[10pt,xcolor=x11names]{beamer}

% Basic settings
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/textflow}
\RequirePackage{f1rstlady/miscellaneous}

% Use Source Sans Pro as default, Fira Mono as monospaced font
\usefonttheme{professionalfonts}
\RequirePackage{f1rstlady/font}
\setsansfont{Source Sans Pro}
\setmonofont{Fira Mono}

% Theming
\usetheme{Madrid}
\usecolortheme{beaver}
