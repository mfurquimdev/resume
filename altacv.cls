%%%%%%%%%%%%%%%%%
% This is altacv.cls (v1.1.4, 27 July 2018) written by
% LianTze Lim (liantze@gmail.com).
%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
%% v1.4: Detect TL2018 to handle accented characters in class information
\@ifl@t@r\fmtversion{2018/04/01}{\UseRawInputEncoding}{}
\ProvidesClass{altacv}[2018/07/27 AltaCV v1.1.4, yet another alternative class for a résumé/curriculum vitae.]

%% v1.1: Optionally load academicons
\newif\if@academicons
\DeclareOption{academicons}{\@academiconstrue}
%% v1.1.3: Choice of round/square photo
\newif\if@normalphoto
\DeclareOption{normalphoto}{\@normalphototrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax

\LoadClass{extarticle}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontawesome5}

%% v1.1: Optionally load academicons
\if@academicons
  %% Patch to make academicons compilable with XeLaTeX
  \ExplSyntaxOn
  \msg_redirect_name:nnn { fontspec } { font-not-found } { none }
  \ExplSyntaxOff
  \RequirePackage{academicons}
  \newfontfamily{\AI}{academicons.ttf}
\fi

\RequirePackage{xcolor}


\definecolor{NordPolarNight0}{HTML}{242933}
\definecolor{NordPolarNight1}{HTML}{2e3440}
\definecolor{NordPolarNight2}{HTML}{3b4252}
\definecolor{NordPolarNight3}{HTML}{434c5e}
\definecolor{NordPolarNight4}{HTML}{4c566a}
\definecolor{NordPolarNight5}{HTML}{7b8394}


\definecolor{WhiteBG}{HTML}{FBFBFC}
\definecolor{NordSnowStorm0}{HTML}{f4f6f9}
\definecolor{NordSnowStorm1}{HTML}{eceff4}
\definecolor{NordSnowStorm2}{HTML}{e5e9f0}
\definecolor{NordSnowStorm3}{HTML}{d8dee9}
\definecolor{NordSnowStorm4}{HTML}{a9b1bf}
\definecolor{NordSnowStorm5}{HTML}{929aaa}

\pagecolor{WhiteBG}

\definecolor{NordFrost1}{HTML}{5e81ac}
\definecolor{NordFrost2}{HTML}{81a1c1}
\definecolor{NordFrost3}{HTML}{88c0d0}
\definecolor{NordFrost4}{HTML}{8fbcbb}

\definecolor{NordAuroraR}{HTML}{bf616a}
\definecolor{NordAuroraO}{HTML}{d08770}
\definecolor{NordAuroraY}{HTML}{ebcb8b}
\definecolor{NordAuroraG}{HTML}{a3be8c}
\definecolor{NordAuroraP}{HTML}{b48ead}


\colorlet{heading}{NordFrost1}
\colorlet{accent}{NordFrost1}
\colorlet{emphasis}{NordPolarNight1}
\colorlet{body}{NordPolarNight1}
\colorlet{divider}{NordSnowStorm3}

\colorlet{linux}{NordPolarNight0}
\colorlet{tech}{NordPolarNight1}
\colorlet{midaccent}{NordFrost2}
\colorlet{arrowitems}{NordSnowStorm4}
\colorlet{techitems}{NordSnowStorm4}
\colorlet{technames}{NordPolarNight4}
\colorlet{languages}{NordSnowStorm4}
% \colorlet{languages}{NordFrost2}
\colorlet{description}{NordPolarNight1}
\colorlet{link}{NordPolarNight4}
% \colorlet{icons}{NordPolarNight4}
\colorlet{icons}{NordSnowStorm4}
\colorlet{DateLocation}{NordPolarNight1}

\newcommand{\itemmarker}{{\small\color{midaccent}\faAngleRight}}

\newcommand{\ratingmarker}{\faCircle}

\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}
% \RequirePackage{marginfix}

\setlength{\parindent}{0pt}
\newcommand{\divider}{\textcolor{divider}{\hdashrule{\linewidth}{0.4pt}{0.5ex}}}

\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}

\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faLink}
\newcommand{\locationsymbol}{\faMapMarker*}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\instagramsymbol}{\faInstagram}

\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{\normalfont #1}\hspace{0.5em}#2\hspace{2em}}}
\newcommand{\printshorterinfo}[2]{\mbox{\textcolor{accent}{\normalfont #1}\hspace{0.5em}#2\hspace{1em}}}
\newcommand{\printlastinfo}[2]{\mbox{\textcolor{accent}{\normalfont #1}\hspace{0.5em}#2}}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printshorterinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\instagram}[1]{\printinfo{\instagramsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printlastinfo{\locationsymbol}{#1}}

\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\makecvheader}{%
  \begingroup
    \raggedright\color{emphasis}%
    {\Huge\bfseries\MakeUppercase{\@name}\par}
    \medskip
    {\large\bfseries\color{accent}\@tagline\par}
    \medskip
    {\footnotesize\bfseries\@personalinfo\par}
	\par{}%
  \endgroup\bigskip
}

\renewenvironment{quote}{\color{accent}\itshape\large}{\par}

\newcommand{\cvsection}[2][]{%
  \bigskip%
  \ifstrequal{#1}{}{}{\marginpar{\vspace*{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}%
  {\color{heading}\LARGE\bfseries\MakeUppercase{#2}}\\[-1.5ex]%
  {\color{heading}\rule{\linewidth}{1pt}\par}\medskip
}

\newcommand{\cvsubsection}[1]{%
  \smallskip%
  {\color{emphasis}\large\bfseries{#1}\par}\medskip
}

% v1.1.4: fixes inconsistent font size
\newcommand{\cvevent}[4]{%
  % {\large\color{emphasis}\bfseries#1\par}
  {\large\color{emphasis}\bfseries#1\hfill} % Title of the event
  \smallskip\normalsize
  \ifstrequal{#3}{}{}{{\textcolor{icons}{\scriptsize\faCalendar[regular]}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}#3}}\par} % Date
  % \ifstrequal{#2}{}{}{}\par} % Name of the company
  % \ifstrequal{#2}{}{}{{\makebox[0.3\linewidth][l]{\textbf{\color{accent}#2}\par}}}%
  % \ifstrequal{#3}{}{}{{\small\makebox[0.4\linewidth][l]{\textbf{\color{accent}#2}}}} % Date
  % \ifstrequal{#4}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faMapMarker*}\footnotesize\textcolor{NordPolarNight4}{\hspace{0.5em}#4}}}}\par % Location
  \ifstrequal{#3}{}{}{{\small\textbf{\color{accent}#2}}} % Date
  \ifstrequal{#4}{}{}{{\hfill\small\textcolor{icons}{\scriptsize\faMapMarker*}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}#4}}}\par % Location
  % \smallskip
}

\newcommand{\cvpublication}[4]{%
  {\large\color{emphasis}\bfseries#1\hfill}
  \smallskip\normalsize\par
  \ifstrequal{#2}{}{}{\textbf{\color{accent}#2}\par}
  \smallskip\par
  \ifstrequal{#3}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faCalendar[regular]}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}#3}}}}%
  \ifstrequal{#4}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faMapMarker*}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}#4}}}}\par
  \smallskip
}

\newcommand{\cveducation}[5]{%
  {\large\color{emphasis}\bfseries#1\par}
  \smallskip\normalsize
  \ifstrequal{#2}{}{}{\textbf{\color{accent}#2}\par}
  \ifstrequal{#4}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faMapMarker*}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}\footnotesize#4}}}}%
  \ifstrequal{#3}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faCalendar[regular]}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}\footnotesize#3}}}}\par%
  \ifstrequal{#5}{}{}{{\small\makebox[0.5\linewidth][l]{\textcolor{icons}{\scriptsize\faExchange*}\footnotesize\textcolor{DateLocation}{\hspace{0.5em}\footnotesize#5}}}}\par
  \smallskip
}


\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=body!30,rounded corners,inner xsep=1ex,inner ysep =0.75ex,text height=1.5ex,text depth=.25ex]{\bfseries#1};
}

\newcommand{\cvlang}[2]{%
\textcolor{emphasis}{#1}\hfill{\color{accent}{#2}}
}


\newenvironment{cvcolumn}[1]{\begin{minipage}[t]{#1}\raggedright}{\end{minipage}}


% v1.1.2: make it easier to add a sidebar aligned with top of next page
\RequirePackage{afterpage}
\newcommand{\addsidebar}[2][]{\marginpar{%
  \ifstrequal{#1}{}{}{\vspace*{#1}}%
  \input{#2}}%
}
\newcommand{\addnextpagesidebar}[2][]{\afterpage{\addsidebar[#1]{#2}}}

\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}
