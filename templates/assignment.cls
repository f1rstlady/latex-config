\RequirePackage{f1rstlady/prelude}

\LoadClassWithOptions[
    footsepline,
    headsepline,
    headlines = 3
]{scrarticle}
\LoadPackage{
    f1rstlady/font,
    f1rstlady/language,
    f1rstlady/textflow,
    f1rstlady/hyperlinks,
    f1rstlady/miscellaneous,
    f1rstlady/math
}

% Head holds university, course, author and title, page number as foot
\LoadPackage[
    footsepline,
    headsepline
]{scrlayer-scrpage}
\LoadPackage{lastpage}
\addtokomafont{pagehead}{\normalshape}
\addtokomafont{pagefoot}{\normalshape}
\cfoot{\IfLanguageName{german}
    {Seite:~\thepage~von~\pageref{LastPage}} % German
    {Page:~\thepage~of~\pageref{LastPage}}}  % English

\def\@university{~}
\def\@course{~}
\newcommand*{\university}[1]{
    \def\@university{#1}
}
\newcommand*{\course}[1]{
    \def\@course{#1}
}

\ihead{\@university\\\@course}
\chead{\large\textbf{\@title}}
\ohead{\@author}
