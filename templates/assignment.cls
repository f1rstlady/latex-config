%
% The assignment class is a collection of settings used to submit assignments at university.
%

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2020/03/12 Assignment submission class]

% Options
\DeclareOption{english}{
    \PassOptionsToPackage{english}{language}
}
\DeclareOption{german}{
    \PassOptionsToPackage{german}{language}
}
\DeclareOption{a4paper}{
    \PassOptionsToClass{\CurrentOption}{article}
}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}

% Use A4 layout by default and English as language
\ExecuteOptions{a4paper,english}

\ProcessOptions*

% Base class
\LoadClass{article}

% Dependencies
\RequirePackage{encoding}
\RequirePackage{font}
\RequirePackage{language}
\RequirePackage{layout}
\RequirePackage{textflow}
\RequirePackage{miscellaneous}

% Mathematical environment
\RequirePackage{math}
\RequirePackage{math.d/operators}
\RequirePackage{math.d/environments}

% Source code integration
\RequirePackage[style=context]{sourcecode}

% Page number as footer
\RequirePackage{footer}
\RequirePackage{footer.d/page_number}

% Custom header holding university, course, author and title
\RequirePackage{header}
\geometry{head=28pt}

\def\@university{~}
\def\@course{~}
\def\@author{~}
\def\@title{~}
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\course}[1]{\def\@course{#1}}
\renewcommand{\author}[1]{\def\@author{#1}}
\renewcommand{\title}[1]{\def\@title{#1}}

\fancyhead[L]{\@university\\\@course}
\fancyhead[C]{\large\textbf{\@title}}
\fancyhead[R]{\@author}

% vi: ft=tex
