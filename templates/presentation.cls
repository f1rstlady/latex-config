%
% The presentation class contains my default settings for the beamer document class.
%

% Options
\DeclareOption{english}{
    \PassOptionsToPackage{english}{language}
}
\DeclareOption{german}{
    \PassOptionsToPackage{german}{language}
}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{beamer}
}

% Use English as default
\ExecuteOptions{english}

\ProcessOptions*

% Base class
\LoadClass[10pt,xcolor=svgnames]{beamer}

% Dependencies
\RequirePackage{language}
\RequirePackage{textflow}
\RequirePackage{miscellaneous}

% Use Source Sans Pro as default, Fira Mono as monospaced font scaled to the main font
\RequirePackage[Source Sans Pro]{font}
\setmonofont{Fira Mono}

% Theming
\usetheme{Madrid}
\usecolortheme{beaver}
