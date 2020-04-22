\DeclareOption{english}{\PassOptionsToPackage{english}{language}}
\DeclareOption{german}{\PassOptionsToPackage{german}{language}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*

\LoadClass{article}
\RequirePackage{f1rstlady/language}
\RequirePackage{f1rstlady/layout}
\RequirePackage{f1rstlady/textflow}
\RequirePackage{f1rstlady/miscellaneous}
\RequirePackage{f1rstlady/math}
\RequirePackage{f1rstlady/sourcecode}

% Page number as foot
\RequirePackage{f1rstlady/foot}
\RequirePackage{f1rstlady/foot.d/page_number}

% Custom head holding university, course, author and title
\RequirePackage{f1rstlady/head}
\geometry{head=3ex}

\def\@university{~}
\def\@course{~}
\def\@author{~}
\def\@title{~}
\newcommand*{\university}[1]{\def\@university{#1}}
\newcommand*{\course}[1]{\def\@course{#1}}
\renewcommand*{\author}[1]{\def\@author{#1}}
\renewcommand*{\title}[1]{\def\@title{#1}}

\fancyhead[L]{\@university\\\@course}
\fancyhead[C]{\large\textbf{\@title}}
\fancyhead[R]{\@author}

% vi: ft=tex
