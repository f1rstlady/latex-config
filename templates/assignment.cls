\DeclareOption{english} {\PassOptionsToPackage{english}{f1rstlady/language}}
\DeclareOption{german}  {\PassOptionsToPackage{german}{f1rstlady/language}}
\DeclareOption*         {\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions*

\LoadClass{scrartcl}
\RequirePackage{f1rstlady/font}
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/textflow}
\RequirePackage{f1rstlady/miscellaneous}
\RequirePackage{f1rstlady/math}
\RequirePackage{f1rstlady/sourcecode}

% Page number as foot
\RequirePackage{f1rstlady/foot}
\RequirePackage{iflang,lastpage}
\chead{\IfLanguageName{ngerman}
    {Seite:~\thepage~von~\pageref{LastPage}} % German
    {Page:~\thepage~of~\pageref{LastPage}}}  % English

% Custom head holding university, course, author and title
\RequirePackage{f1rstlady/head}

\def\@university{~}
\def\@course{~}
\newcommand*{\university}[1]{\def\@university{#1}}
\newcommand*{\course}[1]{\def\@course{#1}}

\ihead{\@university\\\@course}
\chead{\large\textbf{\@title}}
\ohead{\@author}
