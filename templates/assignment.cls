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

% Head holds university, course, author and title, page number as foot
\RequirePackage[footsepline,headsepline,headinclude,headlines=2]{f1rstlady/headfoot}
\addtokomafont{pagehead}{\normalshape}
\RequirePackage{iflang,lastpage}
\chead{\IfLanguageName{ngerman}
    {Seite:~\thepage~von~\pageref{LastPage}} % German
    {Page:~\thepage~of~\pageref{LastPage}}}  % English

\def\@university{~}
\def\@course{~}
\newcommand*{\university}[1]{\def\@university{#1}}
\newcommand*{\course}[1]{\def\@course{#1}}

\ihead{\@university\\\@course}
\chead{\large\textbf{\@title}}
\ohead{\@author}
