%%
%% This is file `psp.cls'
%%
%% Mathematical Proceedings of the Cambridge Philosophical Society
%% document class
%% Copyright (1997, 1998) Cambridge University Press
%%
%% by Mark A. Reed
%%   based on LMS.STY v0.8.
%%
%% Incorporating subeqn.sty, by Stephen Gildea.
%% Incorporating subeqnarray.sty, by Johannes Braams.
%%
%% Bugs (in the case of unchanged files) should be reported to
%% texline@cup.cam.ac.uk
%%
%% This software may only be used in the preparation of journal articles
%% or books or parts of books to be published by Cambridge University Press.
%% Any other use constitutes an infringement of copyright.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%

\NeedsTeXFormat{LaTeX2e}[1996/06/01]
\ProvidesClass{psp}[1998/06/01 v1.16 Mathematical Proceedings of the
  ^^JCambridge Philosophical Society document class]

\newif\ifprodtf
\newif\ifreferee

\DeclareOption{oneside}{\relax}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5\p@}}
\DeclareOption{final}{\setlength\overfullrule{\z@}}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\relax}
\DeclareOption{titlepage}{\relax}
\DeclareOption{notitlepage}{\relax}
\DeclareOption{leqno}{\relax}
\DeclareOption{fleqn}{\relax}
\DeclareOption{prodtf}{\prodtftrue}
\DeclareOption{referee}{\refereetrue}

\ExecuteOptions{twoside,final,onecolumn}
\ProcessOptions\relax

\ifprodtf
  \RequirePackage[alt]{lmmodern}
  \RequirePackage{psp2esym,opiepsf}
\fi

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}

\newcommand\full@line{13\p@}
\newcommand\half@line{6.5\p@}
\newcommand\quarter@line{3.25\p@}

\newcommand\tusp{\kern1.25\p@\relax}
\newcommand\fusp{\kern2.75\p@\relax}

\edef\t@xtsize{\ifprodtf 10.5\else 10\fi}

\renewcommand\normalsize{%
  \@setfontsize\normalsize{\t@xtsize}{13}%
  \abovedisplayskip \half@line \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \quarter@line \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \let\@listi\@listI
}

\normalsize

\AtBeginDocument{%
  \ifuseAMSsubequ \else
    \global\let\subequations\CUPsubequations
    \global\let\endsubequations\endCUPsubequations
  \fi
}

\ifprodtf
  \AtBeginDocument{%
    \DeclareMathSizes{10.5}{10.5}{7}{5}
    \DeclareFontShape{OT1}{xnm}{b}{n}{<-> xmntsm}{}
  }
\fi

\newcommand\small{%
  \@setfontsize\small\@ixpt\@xpt
  \abovedisplayskip 5\p@ \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip 2.5\p@ \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \def\@listi{\leftmargin\leftmargini
    \topsep \z@ \@plus 1\p@ \@minus 1\p@
    \parsep \z@
    \itemsep \parsep}%
}

\newcommand\catchlinesize{\@setfontsize\catchlinesize\@viiipt{13}}
\newcommand\titlesize{\@setfontsize\titlesize\@xiipt{15}}
\newcommand\authorsize{\@setfontsize\authorsize{\t@xtsize}{12.5}}

\newcommand\footnotesize{%
  \@setfontsize\footnotesize\@ixpt\@xpt
  \abovedisplayskip 4.5\p@ \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \z@ \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \def\@listi{\leftmargin\leftmargini
    \topsep \z@ \@plus 1\p@ \@minus 1\p@
    \parsep \z@
    \itemsep \parsep}%
}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt\@xivpt}
\newcommand\Large{\@setfontsize\Large\@xivpt{16}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{21}}
\newcommand\huge{\@setfontsize\huge\@xxpt\@xxvpt}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\ifprodtf \else
  \DeclareTextFontCommand\textsfi{\usefont{OT1}{cmss}{m}{sl}}
  \DeclareMathAlphabet\mathsfi            {OT1}{cmss}{m}{sl}
  \DeclareTextFontCommand\textsfb{\usefont{OT1}{cmss}{bx}{n}}
  \DeclareMathAlphabet\mathsfb            {OT1}{cmss}{bx}{n}
  \DeclareTextFontCommand\textsfbi{\usefont{OT1}{cmss}{m}{sl}}
  \DeclareMathAlphabet\mathsfbi            {OT1}{cmss}{m}{sl}
\fi

\setlength\oddsidemargin{33\p@}
\setlength\evensidemargin{33\p@}
\setlength\marginparwidth{2.0cm}
\setlength\marginparsep{10\p@}

\setlength\topmargin{33\p@}
\setlength\headheight{13\p@}
\setlength\headsep{4\p@}
\setlength\topskip{13\p@}
\setlength\footskip{\z@}

\setlength\textheight{46\baselineskip}
\addtolength\textheight{\topskip}
\setlength\textwidth{32pc}
\setlength\columnsep{10\p@}
\setlength\columnseprule{\z@}

\setlength\footnotesep{7\p@}
\setlength{\skip\footins}{9\p@ \@plus 3\p@}

\setlength\floatsep{\full@line \@plus \quarter@line \@minus 2\p@}
\setlength\textfloatsep{11\p@ \@plus \half@line \@minus 2\p@}
\setlength\intextsep{\half@line \@plus \quarter@line \@minus 2\p@}

\setlength\dblfloatsep{\floatsep}
\setlength\dbltextfloatsep{\textfloatsep}

\setlength\@fptop{\z@ \@plus 0fil}
\setlength\@fpsep{\full@line \@plus 0fil}
\setlength\@fpbot{\z@ \@plus 3fil}
\setlength\@dblfptop{\z@ \@plus 0fil}
\setlength\@dblfpsep{\full@line \@plus 0fil}
\setlength\@dblfpbot{\z@ \@plus 3fil}
\setlength\marginparpush{6\p@}

\setlength\parskip{\z@ \@plus .1\p@}
\setlength\parindent{1em}
\setlength\partopsep{\z@ \@plus 1\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\clubpenalty\z@
\widowpenalty\@M

\newif\iffirst@rt

\ifprodtf
  \newcommand\firstarticle{\global\first@rttrue}
  \newcommand\first@rthead{%
    \vbox{{\vbadness10000\hsize\textwidth
      {\leftskip 30\p@ \rightskip\z@ \parindent\z@
       \fontsize{22}{30}\normalfont\rmfamily
       \vspace{18\p@}%
       Mathematical\hskip10\p@ Proceedings\hskip10\p@ of\hskip10\p@ the\\
       Cambridge\hskip8\p@ Philosophical\hskip7\p@ Society\par}%
      \vskip 29\p@
      \hrule \@height .5\p@\vskip 2\p@ \hrule \@height .5\p@
      \vskip 4\p@
      {\fontsize{12}{12}\scshape
       \noindent Vol.\ \@volume\hfill \@pubmonth\ \@pubyear\hfill
         Part\ \@partno}%
      \vskip 4\p@
      \hrule \@height .5\p@\vskip 2\p@ \hrule \@height .5\p@
      \vskip 6\p@
      \hb@xt@\hsize{\@j@urnal\hfil\llap{\large\normalfont\rmfamily\thepage}}%
    }}%
  }
\else
  \let\firstarticle\relax
\fi

\newif\ifno@eqnreset
\newcommand\nosectioneqnreset{\global\no@eqnresettrue
  \renewcommand\theequation{\@arabic\c@equation}%
}

\newcommand\section{%
 \ifno@eqnreset
    \ifappendix \setcounter{equation}\z@\fi
  \else
    \setcounter{equation}\z@
  \fi
  \@startsection{section}{1}{\z@}
    {13\p@ \@plus 6.5\p@ \@minus 3.25\p@}
    {3\p@}
    {\normalsize\normalfont\itshape\centering}%
}

\newcommand\subsection{%
  \@startsection{subsection}{2}{\z@}
    {6.5\p@ \@plus 3.25\p@ \@minus 1.5\p@}
    {3\p@}
    {\normalsize\normalfont\itshape}%
}

\newcommand\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}
    {6.5\p@ \@plus 3.25\p@ \@minus 1.5\p@}
    {3\p@}
    {\normalsize\normalfont\itshape\raggedright}%
}

\newcommand\paragraph{%
  \@startsection{paragraph}{4}{\z@}
    {6.5\p@ \@plus 3.25\p@ \@minus 1.5\p@}
    {-0.5em}
    {\normalsize\normalfont\itshape}%
}

\newcommand\subparagraph{}

\def\@seccntformat#1{% FROM LATEX.LTX
  {\normalfont\rmfamily\csname the#1\endcsname.\enskip}%
}

\def\@secappcntformat#1{%
  \ifappendix \appendixname~\else \normalfont\rmfamily\fi
  \csname the#1\endcsname\relax.%
  \ifx\contsofeight\@empty \else \enskip\fi
}

\def\@sect#1#2#3#4#5#6[#7]#8{% FROM LATEX.LTX
  \def\contsofeight{#8}%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \ifnum #2>\@ne
      \protected@edef\@svsec{\@seccntformat{#1}\relax}%
    \else
      \protected@edef\@svsec{\@secappcntformat{#1}\relax}%
    \fi
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \ifnum #2=\@ne
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
        \ifappendix \appendixname~\csname the#1\endcsname
        \else \protect\numberline{\csname the#1\endcsname}#7\fi
        \fi}%
    \else
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}#7\fi}%
    \fi
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \ifx\@empty\contsofeight \hskip -0.5em\fi
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}

\newif\ifappendix
\newcommand\appendixname{Appendix}

\newcommand\appendix{\par
  \setcounter{section}\z@
  \renewcommand\thesection{\@Alph\c@section}%
  \renewcommand\theequation{\thesection\,\@arabic\c@equation}%
  \global\appendixtrue
}

\setlength\leftmargini{30\p@}
\setlength\leftmarginii{18.15\p@}
\setlength\leftmarginiii{17.6\p@}
\setlength\leftmarginiv{19.9\p@}

\setlength\leftmargin{\leftmargini}
\setlength\labelsep{0.5em}
\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\newcommand\makeRLlabel[1]{\rlap{{\normalfont\rmfamily #1}}\hss}
\newcommand\makeRRlabel[1]{\hss\llap{{\normalfont\rmfamily #1}}}

\def\@listI{\leftmargin\leftmargini
  \parsep \z@ \@plus 1\p@ \@minus 1\p@
  \topsep \z@ \@plus 1\p@ \@minus 1\p@
  \itemsep \z@ \@plus 1\p@ \@minus 1\p@
  \let\makelabel\makeRRlabel
}
\let\@listi\@listI
\@listi

\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii\advance\labelwidth-\labelsep
  \topsep \z@ \@plus 1\p@ \@minus 1\p@
  \parsep \z@
  \itemsep \parsep
  \let\makelabel\makeRRlabel
}

\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
  \topsep \z@ \@plus 1\p@ \@minus 1\p@
  \parsep \z@
  \partopsep \z@
  \itemsep \parsep
  \let\makelabel\makeRRlabel
}

\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\leftmarginiv\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

\def\@listv{\leftmargin\leftmarginv
  \labelwidth\leftmarginv\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

\def\@listvi{\leftmargin\leftmarginvi
  \labelwidth\leftmarginvi\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

\renewenvironment{itemize} % FROM LATEX.LTX
  {\ifnum \@itemdepth >\thr@@ \@toodeep\else
     \advance\@itemdepth\@ne
     \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
     \expandafter
     \list
       \csname\@itemitem\endcsname
       {\topsep\half@line \@plus 2\p@ \@minus 2\p@
        \if@intheoremlike
          \edef\@ectr{\romannumeral\the\@itemdepth}%
          \expandafter
            \leftmargin=\csname leftmargin\@ectr\endcsname
          \labelsep 0.5em%
        \else
          \if@inproof
            \leftmargin=\leftmargini
            \labelsep 0.5em%
          \fi
        \fi
        \let\makelabel\makeRRlabel}%
   \fi}
  {\endlist}

\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}

\renewenvironment{enumerate} % FROM LATEX.LTX
  {\ifnum \@enumdepth >\thr@@ \@toodeep\else
     \advance\@enumdepth\@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
   \fi
   \@ifnextchar [{\@enumeratetwo}{\@enumerateone}}
  {\endlist}

\def\@enumeratetwo[#1]{%
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\settowidth\labelwidth{\normalfont\rmfamily #1}%
     \labelsep 0.5em%
     \leftmargin\labelwidth \advance\leftmargin\labelsep
     \usecounter{\@enumctr}%
     \let\makelabel\makeRRlabel}%
}

\def\@enumerateone{%
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\usecounter{\@enumctr}%
     \if@intheoremlike
       \edef\@ectr{\romannumeral\the\@enumdepth}%
       \expandafter
         \leftmargin=\csname leftmargin\@ectr\endcsname
       \labelsep 0.5em%
     \else
       \if@inproof
         \leftmargin=\leftmargini
         \labelsep 0.5em%
       \fi
     \fi
     \let\makelabel\makeRRlabel}%
}

\newcommand\labelenumi  {\theenumi}
\newcommand\labelenumii {\theenumii}
\newcommand\labelenumiii{\theenumiii}
\newcommand\labelenumiv {\theenumiv}

\renewcommand\theenumi  {(\@roman\c@enumi)}
\renewcommand\theenumii {(\@alph\c@enumii)}
\renewcommand\theenumiii{(\@arabic\c@enumiii)}
\renewcommand\theenumiv {(\@Alph\c@enumiv)}

\renewcommand\p@enumii {\theenumi}
\renewcommand\p@enumiii{\theenumi\theenumii}
\renewcommand\p@enumiv {\p@enumiii\theenumiii}

\newcommand*\descriptionlabel[1]{\hspace\labelsep \normalfont\bfseries #1}

\newenvironment{description}
  {\list{}{\labelwidth\z@ \labelsep 0.5em%
    \leftmargin\parindent \itemindent-\leftmargin
    \let\makelabel\descriptionlabel}}
  {\endlist}

\newenvironment{verse}
  {\let\\\@centercr
   \list{}{\itemsep\z@
     \itemindent -\parindent
     \listparindent \itemindent
     \leftmargin \parindent
     \rightmargin\leftmargin
     \advance\leftmargin\parindent}\item[]}
  {\endlist}

\newenvironment{quotation}
  {\list{}{\listparindent\parindent
     \itemindent\listparindent
     \leftmargin\parindent \rightmargin\leftmargin
     \parsep \z@ \@plus 1\p@}\item[]\small\normalfont}
  {\endlist}

\let\quote\quotation
\let\endquote\endquotation

\newcommand\maketitle{\par
  \begingroup
    \newpage
    \global\@topnum\z@
    \gdef\@firstpage{\the\c@page}%
    \def\thefootnote{\mbox{$\@fnsymbol\c@footnote$}}
    \@maketitle
    \iffirst@rt
      \thispagestyle{empty}%
    \else
      \thispagestyle{titlepage}%
    \fi
    \@thanks
  \endgroup
  \global\numfootnotestrue
  \setcounter{footnote}\z@
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@title\@empty
  \global\let\@author\@empty
  \global\let\maketitle\relax
  \global\let\thanks\relax
  \vskip 19.5\p@ \@plus \half@line\relax
}

\renewcommand\and{{\normalfont\scshape and}}
\let\nobreakand\relax
\let\nextauthor\relax
\let\addressbreak\relax

\def\e@bat{\end{author@tabular}\\[8\p@]\begin{author@tabular}[t]{@{}c@{}}}

\def\@maketitle{\newpage
  \iffirst@rt \first@rthead\fi
  \vspace*{26\p@}%
  {\parindent \z@\centering\sloppy
    {\titlesize\normalfont\bfseries \strut\@title\par}%
    \vskip 10\p@
    {\def\and{\e@bat{\normalfont\scshape and}}%
     \def\nobreakand{{\normalfont\scshape and}}%
     \let\nextauthor\e@bat
     \let\addressbreak\author@tabularcrnospace
     \authorsize\normalfont
     \begin{author@tabular}[t]{@{}c@{}}{\normalfont\scshape By}\enskip\@author
     \end{author@tabular}\par}%
    \vskip 10\p@
    ({\normalfont\itshape \@receivedline})%
    \par}%
}

\newcommand\corrigendum{CORRIGENDUM\\[15pt]\strut}
\newcommand\abstractrule{\par
  \addvspace{6\p@ \@plus 2\p@}%
  \centerline{%
    \ifprodtf
      \@ifundefined{opiepsfloaded}
        {\@latex@error{Please add \noexpand\usepackage{opiepsf}
         to your document}{You need the 'opiepsf' package to get the
         correct abstract rule.}\rule{70\p@}{2\p@}}
        {\epsfbox{\opifigpath psplogo1}}%
    \else
      \rule{70\p@}{2\p@}%
    \fi}%
  \par\addvspace{13\p@ \@plus 3\p@}%
}

\newenvironment{abstract}
  {\section*{Abstract}\normalsize\normalfont}
  {\abstractrule}

\mark{{}{}}
\renewcommand\author{\@ifnextchar [{\@authortwo}{\@authorone}}
\def\@author{\mbox{}}

\def\@authortwo[#1]#2{\gdef\@author{#2}\gdef\@shortauthor{#1}}
\def\@authorone#1{\gdef\@author{#1}\gdef\@shortauthor{#1}}

\newcommand\shortauthor[1]{\gdef\@shortauthor{#1}}
\def\@shortauthor{\@author}

\renewcommand\title{\@ifnextchar [{\@titletwo}{\@titleone}}
\def\@title{\mbox{}}

\def\@titleone#1{\gdef\@title{#1}\gdef\@shorttitle{#1}}
\def\@titletwo[#1]#2{\gdef\@title{#2}\gdef\@shorttitle{#1}}

\newcommand\shorttitle[1]{\gdef\@shorttitle{#1}}
\def\@shorttitle{\@title}

\newcommand\volume[1]{\gdef\@volume{#1}}
\def\@volume{000}

\def\@firstpage{000}

\newcommand\pubyear[1]{\def\@pubyear{#1}}
\def\@pubyear{0000}

\newcommand\receivedline[1]{\def\@receivedline{#1}}
\def\@receivedline{Received\ \ \ }

\newcommand\partno[1]{\def\@partno{#1}}
\def\@partno{0}

\newcommand\pubmonth[1]{\def\@pubmonth{#1}}
\def\@pubmonth{Month}

\def\ps@headings{%
  \def\@evenhead{\large\normalfont\scshape
        \rlap{\normalfont\rmfamily\thepage}\hss\@shortauthor\hss}%
  \def\@oddhead{\large\normalfont\itshape
        \hss\@shorttitle\hss\llap{\normalfont\rmfamily\thepage}}%
  \let\@evenfoot\@empty
  \let\@oddfoot\@empty
  \def\sectionmark##1{\markboth{##1}{}}%
  \def\subsectionmark##1{\markright{##1}}%
  \let\@mkboth\markboth
}

\def\ps@myheadings{\ps@headings}

\def\@j@urnal{%
  \vbox to 5.5\p@{\noindent\normalfont\catchlinesize
    \parbox[t]{4in}{%
      \ifprodtf
        {\itshape Math.\ Proc.\ Camb.\ Phil.\ Soc.}
        (\@pubyear), {\bfseries\@volume}, \@firstpage\\
        {\itshape Printed in the United Kingdom\quad
        \copyright\ {\upshape\@pubyear}\ Cambridge Philosophical Society}%
      \else
        {\itshape Under consideration for publication in
          Math.\ Proc.\ Camb.\ Phil.\ Soc.}\\
        {\ \ }%
      \fi
    \vss}%
  }%
}

\def\ps@titlepage{\leftskip\z@
  \def\@evenhead{\@j@urnal \hfil\llap{\large\normalfont\rmfamily\thepage}}%
  \def\@oddhead{\@j@urnal \hfil\llap{\large\normalfont\rmfamily\thepage}}%
  \let\@evenfoot\@empty
  \let\@oddfoot\@empty
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble
  \let\@mkboth\@gobbletwo
}

\let\@@cdot=\cdot
\def\thm@app@code{\ifappendix \def\cdot{ }\fi}
\def\rst@cdot{\ifappendix \let\cdot\@@cdot\fi}

\def\@thm#1#2{% FROM LATEX.LTX
  \thm@app@code \refstepcounter{#1}\rst@cdot
  \@ifnextchar[{\@ythm{#1}{#2}}{\@xthm{#1}{#2}}%
}

\newif\if@intheoremlike

\def\@xnthm#1#2[#3]{% FROM LATEX.LTX
\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}\@newctr{#1}[#3]%
   \expandafter\xdef\csname the#1\endcsname{\expandafter\noexpand
   \csname the#3\endcsname \@thmcountersep \@thmcounter{#1}}%
   \global\@namedef{#1}{\@thm{#1}{#2}}%
   \global\@namedef{#1*}{\@thmstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endtheorem}%
   \global\@namedef{end#1*}{\@endthmstar}}%
}

\def\@ynthm#1#2{% FROM LATEX.LTX
\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}%
   \expandafter\xdef\csname the#1\endcsname{\@thmcounter{#1}}%
   \global\@namedef{#1}{\@thm{#1}{#2}}%
   \global\@namedef{#1*}{\@thmstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endtheorem}%
   \global\@namedef{end#1*}{\@endthmstar}}%
}

\def\@othm#1[#2]#3{% FROM LATEX.LTX
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}%
     \global\@namedef{#1}{\@thm{#2}{#3}}%
     \global\@namedef{#1*}{\@thmstar{#2}{#3}}%
     \global\@namedef{end#1}{\@endtheorem}%
     \global\@namedef{end#1*}{\@endthmstar}}}%
}

\newif\ifrembrks
\newcommand\removebrackets{\rembrkstrue}

\newif\ifrevthm
\newcommand\reversetheorems{\revthmtrue}

\def\thm@body{\topsep\half@line \@plus 2\p@
  \leftmargin\z@ \itemindent\parindent
  \labelsep\z@ \labelwidth\z@ \listparindent\parindent
}

\def\@begintheorem#1#2{\@intheoremliketrue % FROM LATEX.LTX
  \list{}{\thm@body}%
  \item[{\thm@app@code\normalfont\scshape
         \ifrevthm #2.\ #1.\else #1\ #2.\fi}]%
    \normalfont\itshape\enskip
}

\def\@opargbegintheorem#1#2#3{\@intheoremliketrue % FROM LATEX.LTX
  \list{}{\thm@body}%
  \item[{\thm@app@code\normalfont\scshape
         \ifrevthm #2.\ #1\ \else #1\ #2\ \fi}%
    {\normalfont\rmfamily \ifrembrks #3\global\rembrksfalse\else (#3)\fi.}]%
  \normalfont\itshape\enskip
}

\def\@thmcountersep{$\cdot$}% FROM LATEX.LTX
\def\@endtheorem{\endlist\par\@doendpe\@intheoremlikefalse}% FROM LATEX.LTX

\def\@thmstar#1#2{\@ifnextchar[{\@ythmstar{#1}{#2}}{\@xthmstar{#1}{#2}}}
\def\@xthmstar#1#2{\@beginthmstar{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@ythmstar#1#2[#3]{\@opargbeginthmstar{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

\def\@thmstarcounter#1{{}}
\def\@thmstarcountersep{{}}

\def\@beginthmstar#1#2{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\scshape #1.}]\normalfont\itshape\enskip
}

\def\@opargbeginthmstar#1#2#3{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\scshape #1\ {\normalfont\rmfamily
         \ifrembrks #3\global\rembrksfalse\else (#3)\fi.}}]%
  \normalfont\itshape\enskip
}

\def\@endthmstar{\endlist\par\@doendpe\@intheoremlikefalse}

\newcommand\newnumbered[1]{\@ifnextchar[{\@oexmpl{#1}}{\@nexmpl{#1}}}
\def\@nexmpl#1#2{\@ifnextchar[{\@xnexmpl{#1}{#2}}{\@ynexmpl{#1}{#2}}}

\def\@xnexmpl#1#2[#3]{%
\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}\@newctr{#1}[#3]%
   \expandafter\xdef\csname the#1\endcsname{\expandafter\noexpand
   \csname the#3\endcsname \@exmplcountersep \@exmplcounter{#1}}%
   \global\@namedef{#1}{\@exmpl{#1}{#2}}%
   \global\@namedef{#1*}{\@exmplstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endexample}%
   \global\@namedef{end#1*}{\@endexmplstar}}%
}

\def\@ynexmpl#1#2{%
\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}%
   \expandafter\xdef\csname the#1\endcsname{\@exmplcounter{#1}}%
   \global\@namedef{#1}{\@exmpl{#1}{#2}}%
   \global\@namedef{#1*}{\@exmplstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endexample}%
   \global\@namedef{end#1*}{\@endexmplstar}}%
}

\def\@oexmpl#1[#2]#3{%
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}%
     \global\@namedef{#1}{\@exmpl{#2}{#3}}%
     \global\@namedef{#1*}{\@exmplstar{#2}{#3}}%
     \global\@namedef{end#1}{\@endexample}
     \global\@namedef{end#1*}{\@endexmplstar}}}%
}

\def\@exmpl#1#2{\thm@app@code \refstepcounter{#1}\rst@cdot
  \@ifnextchar[{\@yexmpl{#1}{#2}}{\@xexmpl{#1}{#2}}%
}

\def\@xexmpl#1#2{\@beginexample{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@yexmpl#1#2[#3]{\@opargbeginexample{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

\def\@beginexample#1#2{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[\ifrevthm
           {\thm@app@code\normalfont\rmfamily #2.\ }%
           {\normalfont\itshape #1.}%
         \else
           {\normalfont\itshape #1}\ %
           {\thm@app@code\normalfont\rmfamily #2.}%
         \fi]\enskip
}

\def\@opargbeginexample#1#2#3{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[\ifrevthm
          {\thm@app@code\normalfont\rmfamily #2.\ %
           {\normalfont\itshape #1}\ \ifrembrks #3\else (#3)\fi.}%
        \else
          {\normalfont\itshape #1}\ %
          {\thm@app@code\normalfont\rmfamily #2\ \ifrembrks #3\else (#3)\fi.}%
        \fi]\global\rembrksfalse\enskip
}

\def\@endexample{\endlist\par\@doendpe\@intheoremlikefalse}
\def\@exmplcounter#1{\noexpand\arabic{#1}}
\def\@exmplcountersep{$\cdot$}

\def\@exmplstar#1#2{\@ifnextchar[{\@yexmplstar{#1}{#2}}{\@xexmplstar{#1}{#2}}}
\def\@xexmplstar#1#2{\@beginexmplstar{#2}{\csname the#1\endcsname}%
  \ignorespaces}

\def\@yexmplstar#1#2[#3]{\@opargbeginexmplstar{#2}{\csname the#1\endcsname}%
  {#3}\ignorespaces}

\def\@exmplstarcounter#1{{}}
\def\@exmplstarcountersep{{}}

\def\@beginexmplstar#1#2{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape #1.}]\enskip
}

\def\@opargbeginexmplstar#1#2#3{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape #1}\ {\normalfont\rmfamily
         \ifrembrks #3\global\rembrksfalse\else (#3)\fi.}]\enskip
}

\def\@endexmplstar{\endlist\par\@doendpe\@intheoremlikefalse}

\newcommand\newunnumbered[1]{\@ifnextchar[{\@oack{#1}}{\@nack{#1}}}
\def\@nack#1#2{\@ifnextchar[{\@xnack{#1}{#2}}{\@ynack{#1}{#2}}}

\def\@xnack#1#2[#3]{%
\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{#1}{\@ack{#1}{#2}}%
   \global\@namedef{end#1}{\@endack}}%
}

\def\@ynack#1#2{%
\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{#1}{\@ack{#1}{#2}}%
   \global\@namedef{end#1}{\@endack}}%
}

\def\@oack#1[#2]#3{%
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}%
     \global\@namedef{#1}{\@ack{#2}{#3}}%
     \global\@namedef{end#1}{\@endack}}}%
}

\def\@ack#1#2{\@ifnextchar[{\@yack{#1}{#2}}{\@xack{#1}{#2}}}
\def\@xack#1#2{\@beginack{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@yack#1#2[#3]{\@opargbeginack{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

\def\@ackcounter#1{{}}
\def\@ackcountersep{{}}

\def\@beginack#1#2{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape #1.}]\enskip
}

\def\@endack{\endlist\par\@doendpe\@intheoremlikefalse}

\def\@opargbeginack#1#2#3{\@intheoremliketrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape #1}\ {\normalfont\rmfamily
         \ifrembrks #3\global\rembrksfalse\else (#3)\fi.}]\enskip
}

\newif\if@inproof

\newenvironment{proof}
  {\@ifnextchar[{\@oprf}{\@nprf}}
  {\unskip\hskip 1pc\nolinebreak\proofbox
   \endlist\@doendpe\@inprooffalse}

\newenvironment{proof*}
  {\@ifnextchar[{\@oprf}{\@nprf}}
  {\endlist\@doendpe\@inprooffalse}

\ifprodtf
  \newcommand\proofbox{\ensuremath{\CUPproofbox}\relax}
\else
  \newsavebox{\proofsavebox}
  \sbox{\proofsavebox}
    {\unitlength 1pt\begin{picture}(6.5,6.5)%
     \put(0,0){\framebox(6.5,6.5){}}\end{picture}}
  \newcommand\proofbox{\usebox{\proofsavebox}\relax}
\fi

\newcommand\mathproofbox{\rlap{\quad\proofbox}}

\def\@oprf[#1]{\@inprooftrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape #1}]\enskip\ignorespaces
}

\def\@nprf{\@inprooftrue
  \list{}{\thm@body}%
  \item[{\normalfont\itshape Proof.}]\enskip\ignorespaces
}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.5\p@}
\setlength\doublerulesep{1.5\p@}

\setlength\tabbingsep{\labelsep}
\setlength{\skip\@mpfootins}{1\p@ \@plus 1\p@}

\setlength\fboxsep{3\p@}
\setlength\fboxrule{\arrayrulewidth}

\setcounter{secnumdepth}{3}

\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\renewcommand\thesection       {\@arabic\c@section}
\renewcommand\thesubsection    {\thesection$\cdot$\@arabic\c@subsection}
\renewcommand\thesubsubsection {\thesubsection$\cdot$\@arabic\c@subsubsection}

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}

\def\@dottedtocline#1#2#3#4#5{% FROM LATEX.LTX
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{\phantom{.}}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi
}

\newcommand\contentsname{Contents}

\newcommand\tableofcontents{%
  \section*{\contentsname}%
  \@starttoc{toc}%
  \par\vspace{\half@line}%
}

\newcommand*\l@section[2]{%
  \addpenalty{\@secpenalty}%
  \@tempdima 1.5em
  \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \normalfont\rmfamily\leavevmode
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
  \endgroup
}

\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}

\newcommand\listfigurename{List of Figures}

\newcommand\listoffigures{%
  \section*{\listfigurename}%
  \@starttoc{lof}%
  \par\vspace{\half@line}%
}

\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

\newcommand\listtablename{List of Tables}

\newcommand\listoftables{%
  \section*{\listtablename}%
  \@starttoc{lot}%
  \par\vspace{\half@line}%
}

\let\l@table\l@figure

\DeclareRobustCommand*\upref[1]{\textup{(\ref{#1})}}
\def\upnbref{\ref}

\def\@setref#1#2#3{% FROM LATEX.LTX
  \ifx#1\relax
   \protect\G@refundefinedtrue
   \nfss@text{\reset@font\bfseries ??}%
   \@latex@warning{Reference `#3' on page \thepage \space
             undefined}%
  \else
   \protect\textup{\expandafter#2#1\null}%
  \fi}

\newif\ifnobr@cket
\def\upcite{\cite}
\DeclareRobustCommand\nbcite{\nobr@ckettrue\cite}

\def\@citex[#1]#2{% FROM LATEX.LTX
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{{\normalfont\rmfamily ,}\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}

\def\@cite#1#2{% FROM LATEX.LTX
  \ifnobr@cket\else {\upshape[}\fi
  {\normalfont\bfseries #1\if@tempswa \normalfont\rmfamily, #2\fi}%
  \ifnobr@cket\nobr@cketfalse\else {\upshape]}\fi
}

\newcommand\refname{References}

\newcommand\bibheading{%
  \edef\up@ref@name{\uppercase{\refname}}%
  \section*{\small\normalfont\rmfamily\up@ref@name}%
}

\renewcommand\@biblabel[1]{[{\normalfont\bfseries #1}]}% FROM LATEX.LTX

\newenvironment{thebibliography}[1]
  {\bibheading
   \small\normalfont\rmfamily
   \addcontentsline{toc}{section}{\refname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
     {\settowidth\labelwidth{\@biblabel{#1}}%
      \labelsep 0.5em%
      \leftmargin \labelwidth \advance\leftmargin \labelsep
      \advance\leftmargin 1em%
      \itemsep \z@
      \itemindent 0.5em%
      \advance\itemindent -\leftmargin
      \advance\itemindent \labelwidth
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}%
      \let\makelabel\makeRRlabel}%
   \parindent\z@
   \parskip\z@ \@plus .1\p@\relax
   \sloppy\clubpenalty4000\widowpenalty4000
   \sfcode`\.\@m}
  {\def\@noitemerr
   {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}

\newcommand\bibname{\def\and{{\normalfont\rmfamily and }}%
                    \normalfont\scshape}%
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}

\newcommand\indexname{Index}

\newenvironment{theindex}
  {\section*{\indexname}%
   \addcontentsline{toc}{section}{\indexname}%
   \footnotesize\normalfont
   \parindent\z@
   \parskip\z@ \@plus .1\p@\relax
   \let\item\@idxitem}
  {\par}

\newcommand\@idxitem{\par\hangindent 1pc}
\newcommand\subitem {\@idxitem \hspace*{1pc}}
\newcommand\subsubitem{\@idxitem \hspace*{1pc}}
\newcommand\indexspace{\par\vskip\baselineskip \relax}

\renewcommand\footnoterule{\kern-3\p@ \hrule \@width\z@ \kern 2.6\p@}

\let\realfootnotetext\footnotetext
\def\nfootnotetext{\global\fofootnotetrue\realfootnotetext}

\renewcommand\thanks[1]{\footnotemark % FROM LATEX.LTX
  \protected@xdef\@thanks{\@thanks
    \iffofootnote \protect\nfootnotetext\else \protect\footnotetext\fi
    [\the\c@footnote]{#1}}%
  \global\fofootnotefalse
}

\newif\ifnumfootnotes
\newif\iffofootnote
\newcommand\fulloutfootnote{\global\fofootnotetrue}

\newcommand\@makefntext[1]{%
  \def\the@footn@tes{\ifnumfootnotes $^{\@thefnmark}$\else $\@thefnmark$\fi}%
  \setbox\@tempboxa\hbox{#1}%
  \parindent 1em\noindent
  \iffofootnote
    \hb@xt@ 1.5em{\hss\the@footn@tes}%
    \global\fofootnotefalse
  \else
    \ifdim\wd\@tempboxa>\textwidth
      \hb@xt@ 1.5em{\hss\the@footn@tes}%
    \else
      \centering\the@footn@tes
    \fi
  \fi
  \enskip \normalfont\rmfamily #1%
}

\renewcommand\@makefnmark{\hb@xt@ \z@{%
  \ifnumfootnotes $^{\@thefnmark}$\else $\@thefnmark$\fi\hss}%
}

\renewcommand\thefootnote{\@arabic\c@footnote}% FROM LATEX.LTX
\renewcommand\thempfootnote{\mathrm{\@alph\c@mpfootnote}}% FROM LATEX.LTX

% FROM LATEX.LTX
\def\@fnsymbol#1{\ensuremath{\ifcase#1\or \dagger\or \ddagger\or
  \mathchar "278\or \|\or \mathchar "27B\or \dagger\dagger\or
  \ddagger\ddagger\or \mathchar "278\mathchar "278\or \|\|\or
  \mathchar "27B\mathchar "27B\or \else\@ctrerr\fi}%
}

\setcounter{topnumber}{2}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.75}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.75}

\newif\ifrem@fullpt
\newcommand\removefullpoint{\global\rem@fullpttrue}

\newif\ifbot@fig
\newenvironment{bottomfigure}{\def\fps@figure{b}%
  \setcounter{bottomnumber}{1}%
  \global\bot@figtrue
  \@float{figure}\fstyle@figure}
  {\end@float}

\long\def\@makecaption#1#2{%
  \ifbot@fig \rule{\textwidth}{.25pt}\fi
  \ifint@ble \vskip\half@line \else \vskip\quarter@line\fi
  \setbox\@tempboxa\hbox{#2}%
  \def\@xtra{\ifdim\wd\@tempboxa>\z@ \ifrem@fullpt\else .\enskip\fi\fi}%
  \setbox\@tempboxa\hbox{#1\@xtra #2}%
  \ifdim\wd\@tempboxa>\tw@\textwidth
    {\let\centering\relax #1\@xtra #2\par}%
  \else
    #1\@xtra #2\par
  \fi
  \ifint@ble \vskip 2.5\p@\vskip\z@ \int@blefalse\fi
  \global\rem@fullptfalse
  \global\bot@figfalse
}

\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{1}
\def\ext@table{lot}
\newcommand\tablename{Table}
\def\fnum@table{\tablename~\thetable}

\def\fstyle@table{\footnotesize\normalfont\rmfamily}
\def\fjust@table{\centering}
\def\fcapjust@table{\centering\sloppy}
\def\fcapsize@table{\normalfont\rmfamily}
\def\fcapstyle@table{\normalfont\itshape}

\newif\ifint@ble
\newenvironment{table}
  {\let\@tabarray\c@tabarray
   \let\@tarray\c@tarray
   \let\@ttarray\c@ttarray
   \let\t@barray\ct@barray
   \int@bletrue
   \@float{table}}
  {\end@float}

\newenvironment{table*}{\int@bletrue\@dblfloat{table}}{\end@dblfloat}

\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{2}
\def\ext@figure{lof}
\newcommand\figurename{Fig.}
\def\fnum@figure{\figurename~\thefigure}

\def\fstyle@figure{\footnotesize\normalfont\rmfamily}
\def\fjust@figure{\centering}
\def\fcapjust@figure{\centering\sloppy}
\def\fcapsize@figure{\footnotesize\normalfont\rmfamily}
\def\fcapstyle@figure{\footnotesize\normalfont\rmfamily}

\newenvironment{figure}{\@float{figure}}{\end@float}
\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}

\newcommand\addtoysize{3pt}

\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname % FROM LATEX.LTX
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
  \@parboxrestore
  \normalsize
  \@makecaption{\csname fcapjust@#1\endcsname
                \csname fcapsize@#1\endcsname
                \csname fnum@#1\endcsname}%
               {\csname fcapstyle@#1\endcsname \ignorespaces #3}\par
  \endgroup
}

\def\@xfloat #1[#2]{% FROM LATEX.LTX
  \def\@captype {#1}%
  \def\@fps {#2}%
  \@onelevel@sanitize \@fps
  \def \reserved@b {!}%
  \ifx \reserved@b \@fps
    \@fpsadddefault
  \else
    \ifx \@fps \@empty
      \@fpsadddefault
    \fi
  \fi
  \ifhmode \@bsphack\@floatpenalty-\@Mii \else \@floatpenalty-\@Miii\fi
  \ifinner
    \@parmoderr\@floatpenalty\z@
  \else
    \@next\@currbox\@freelist
      {%
       \@tempcnta \sixt@@n
       \expandafter \@tfor \expandafter \reserved@a
         \expandafter :\expandafter =\@fps
         \do
          {%
           \if \reserved@a h%
             \ifodd \@tempcnta
             \else
               \advance \@tempcnta \@ne
             \fi
           \fi
           \if \reserved@a t%
             \@setfpsbit \tw@
           \fi
           \if \reserved@a b%
             \@setfpsbit 4%
           \fi
           \if \reserved@a p%
             \@setfpsbit 8%
           \fi
           \if \reserved@a !%
             \ifnum \@tempcnta>15
               \advance\@tempcnta -\sixt@@n\relax
             \fi
           \fi
           }%
       \@tempcntb \csname ftype@\@captype \endcsname
       \multiply \@tempcntb \@xxxii
       \advance \@tempcnta \@tempcntb
       \global \count\@currbox \@tempcnta
       }%
    \@fltovf
  \fi
  \global \setbox\@currbox
    \color@vbox
      \normalcolor
      \vbox \bgroup
        \hsize\columnwidth \@parboxrestore
        \@floatboxreset
        \csname fstyle@\@captype\endcsname
        \csname fjust@\@captype\endcsname
}

\def\author@tabular{\def\@halignto{}\@authortable}
\let\endauthor@tabular\endtabular
\def\author@tabularcr{{\ifnum0=`}\fi
  \@xtabularcr[3.5\p@]\normalfont\itshape\ignorespaces}
\def\author@tabularcrnospace{{\ifnum0=`}\fi
  \@xtabularcr[\z@]\normalfont\itshape\ignorespaces}
\def\@authortable{\leavevmode \hbox \bgroup $\let\@acol\@tabacol
  \let\@classz\@tabclassz
  \let\@classiv\@tabclassiv
  \let\\\author@tabularcr
  \let\nextaddress\author@tabularcrnospace
  \@tabarray
}

\let\oldtabular\tabular
\let\endoldtabular\endtabular

\renewenvironment{tabular} % FROM LATEX.LTX
  {\noindent
   \let\@tabarray\c@tabarray
   \let\@tarray\c@tarray
   \let\@ttarray\c@ttarray
   \let\t@barray\ct@barray
   \def\@halignto{to \textwidth}%
   \doublerulesep \z@
%
   \def\hline{\noalign{\ifnum0=`}\fi
     \addvspace{2\p@} \hrule \@height \arrayrulewidth \addvspace{4\p@}%
     \futurelet \@tempa\@xhline}%
%
   \def\@xhline{\ifx\@tempa\hline
     \vskip -4\p@ \vskip \doublerulesep\fi
     \ifnum0=`{\fi}}%
%
   \def\@arrayrule{\@addtopreamble{%
     \hskip -.5\arrayrulewidth \hskip .5\arrayrulewidth}}%
%
   \tabskip=\tabcolsep \@plus 1fil\@tabular}
  {\endoldtabular}

\def\c@tabarray{\@ifnextchar[{\@tarray}{\@ttarray}}
\def\c@tarray[#1]#2{\t@barray[#1]{@{\tabskip=2\tabcolsep \@plus 3\p@} #2}}
\def\c@ttarray#1{\t@barray[c]{@{\tabskip=2\tabcolsep \@plus 3\p@} #1}}
\def\ct@barray[#1]#2{%
  \setbox\@arstrutbox\hbox{%
    \vrule \@height\arraystretch \ht\strutbox
    \@depth\arraystretch \dp\strutbox \@width\z@}%
  \@mkpream{#2}\edef\@preamble{%
    \halign \noexpand\@halignto \bgroup
      \tabskip\z@ \@arstrut \@preamble \tabskip=\tabcolsep \@plus 1fil
      \cr
  }%
  \let\@startpbox\@@startpbox \let\@endpbox\@@endpbox
  \if #1t\vtop \else \if#1b\vbox \else \vcenter \fi\fi
  \bgroup \let\par\relax
  \let\@sharp##
  \let\protect\relax \lineskip\z@\baselineskip\z@\@preamble
}

\newcommand\resetequationon[1]{\@addtoreset{equation}{#1}}
\newcommand\equationformat[1]{\renewcommand\theequation{#1}}
\equationformat{\thesection$\cdot$\@arabic\c@equation}

% subeqn.sty follows
% Copyright (c) 1990 by Stephen Gildea
% Permission to copy all or part of this work is granted, provided
% that the copies are not made or distributed for resale, and that
% the copyright notice and this notice are retained.
% Modified for use with PSP/LaTeX2e.

\newif\ifuseAMSsubequ
\newcommand\useAMSsubequations{\global\useAMSsubequtrue}

\newtoks\@stequation

\newenvironment{CUPsubequations}
  {\refstepcounter{equation}%
   \edef\@savedequation{\the\c@equation}%
   \@stequation=\expandafter{\theequation}%
   \edef\@savedtheequation{\the\@stequation}%
   \edef\oldtheequation{\theequation}%
   \setcounter{equation}\z@
   \def\theequation{\oldtheequation\tusp{\itshape\alph{equation}}}}
  {\setcounter{equation}{\@savedequation}%
   \@stequation=\expandafter{\@savedtheequation}%
   \edef\theequation{\the\@stequation}\global\@ignoretrue}

\newcommand\returnthesubequation{%
  \gdef\thesubequation{\theequation\tusp{\itshape\@alph\c@subequation}}}

% subeqnarray.sty
% Copyright (C) 1988 by Johannes Braams, Dr Neher Laboratories
% Modified for use with PSP/LaTeX2e.

\newcounter{subequation}[equation]
\renewcommand\thesubequation{\theequation\tusp{\itshape\@alph\c@subequation}}
\def\@subeqnnum{{\normalfont\rmfamily (\thesubequation)}}

\newcommand\slabel[1]{\@bsphack % MODIFIED IN LINE WITH LATEX.LTX
  \protected@write\@auxout{}%
    {\string\newlabel{#1}{{\thesubequation}{\thepage}}}%
  \@esphack}

\newenvironment{subeqnarray} % MODIFIED IN LINE WITH LATEX.LTX
  {\stepcounter{equation}%
   \let\@currentlabel\theequation
   \global\c@subequation\@ne
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@subeqncr
   $$\everycr{}\halign to\displaywidth\bgroup
     \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
    &\global\@eqcnt\@ne \hfil${\;##\;}$\hfil
    &\global\@eqcnt\tw@
     $\displaystyle\tabskip\z@skip{##}$\hfil\tabskip\@centering
    &\hb@xt@\z@\bgroup\hss##\egroup
      \tabskip\z@skip \cr}
  {\@@subeqncr\egroup $$\global\@ignoretrue}

\def\@subeqncr{{\ifnum0=`}\fi\@ifstar{\global\@eqpen\@M
    \@ysubeqncr}{\global\@eqpen\interdisplaylinepenalty \@ysubeqncr}}

\def\@ysubeqncr{\@ifnextchar [{\@xsubeqncr}{\@xsubeqncr[\z@]}}

\def\@xsubeqncr[#1]{\ifnum0=`{\fi}\@@subeqncr
   \noalign{\penalty\@eqpen\vskip\jot\vskip #1\relax}}

\def\@@subeqncr{\let\@tempa\relax
    \ifcase\@eqcnt \def\@tempa{& & &}\or \def\@tempa{& &}
      \else \def\@tempa{&}\fi
     \@tempa \if@eqnsw\@subeqnnum\refstepcounter{subequation}\fi
     \global\@eqnswtrue\global\@eqcnt\z@\cr}

\let\@ssubeqncr\@subeqncr
\newenvironment{subeqnarray*}
  {\def\@subeqncr{\nonumber\@ssubeqncr}\subeqnarray}
  {\global\advance\c@equation\m@ne \nonumber\endsubeqnarray}

\renewenvironment{eqnarray} % FROM LATEX.LTX
  {\stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to \displaywidth\bgroup
      \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
     &\global\@eqcnt\@ne \hfil${\;##\;}$\hfil
     &\global\@eqcnt\tw@
        $\displaystyle\tabskip\z@skip{##}$\hfil\tabskip\@centering
     &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
        \tabskip\z@skip
     \cr}
  {\@@eqncr\egroup\global\advance\c@equation\m@ne
   $$\global\@ignoretrue}

\newenvironment{acknowledgements}
  {\paragraph*{\hspace*{\parindent}Acknowledgements.}}
  {\par\addvspace{\half@line}\@doendpe}

\let\acknowledgments\acknowledgements
\let\endacknowledgments\endacknowledgements

\newenvironment{acknowledgement}
  {\paragraph*{\hspace*{\parindent}Acknowledgement.}}
  {\par\addvspace{\half@line}\@doendpe}

\let\acknowledgment\acknowledgement
\let\endacknowledgment\endacknowledgement

\newenvironment{acknowledgements*}
  {\par\addvspace{\half@line \@plus 3.25\p@ \@minus 1.5\p@}}
  {\par\addvspace{\half@line \@plus 3.25\p@ \@minus 1.5\p@}\@endpetrue}

\@namedef{acknowledgments*}{\@nameuse{acknowledgements*}}
\@namedef{endacknowledgments*}{\@nameuse{endacknowledgements*}}

\newcommand\newromanexpr[2]{%
  \newcommand*#1{\mathop{\operator@font #2\tusp}\@ifstar{}{\nolimits}}%
}

\newromanexpr\Conj{Conj}
\newromanexpr\ldef{def}
\newromanexpr\Dim{Dim}
\newromanexpr\Hom{Hom}
\newromanexpr\Int{Int}
\newromanexpr\Ker{Ker}
\newromanexpr\Proj{Proj}
\newromanexpr\Spec{Spec}
\newromanexpr\supp{supp}
\newromanexpr\var{var}
\newromanexpr\Var{Var}

\renewcommand\log{\mathop{\operator@font log\tusp}\nolimits}
\renewcommand\lg{\mathop{\operator@font lg\tusp}\nolimits}
\renewcommand\ln{\mathop{\operator@font ln\tusp}\nolimits}
\renewcommand\lim{\mathop{\operator@font lim\tusp}}
\renewcommand\limsup{\mathop{\operator@font lim\,sup\tusp}}
\renewcommand\liminf{\mathop{\operator@font lim\,inf\tusp}}
\renewcommand\sin{\mathop{\operator@font sin\tusp}\nolimits}
\renewcommand\arcsin{\mathop{\operator@font arcsin\tusp}\nolimits}
\renewcommand\sinh{\mathop{\operator@font sinh\tusp}\nolimits}
\renewcommand\cos{\mathop{\operator@font cos\tusp}\nolimits}
\renewcommand\arccos{\mathop{\operator@font arccos\tusp}\nolimits}
\renewcommand\cosh{\mathop{\operator@font cosh\tusp}\nolimits}
\renewcommand\tan{\mathop{\operator@font tan\tusp}\nolimits}
\renewcommand\arctan{\mathop{\operator@font arctan\tusp}\nolimits}
\renewcommand\tanh{\mathop{\operator@font tanh\tusp}\nolimits}
\renewcommand\cot{\mathop{\operator@font cot\tusp}\nolimits}
\renewcommand\coth{\mathop{\operator@font coth\tusp}\nolimits}
\renewcommand\sec{\mathop{\operator@font sec\tusp}\nolimits}
\renewcommand\csc{\mathop{\operator@font csc\tusp}\nolimits}
\renewcommand\max{\mathop{\operator@font max\tusp}}
\renewcommand\min{\mathop{\operator@font min\tusp}}
\renewcommand\sup{\mathop{\operator@font sup\tusp}}
\renewcommand\inf{\mathop{\operator@font inf\tusp}}
\renewcommand\arg{\mathop{\operator@font arg\tusp}\nolimits}
\renewcommand\ker{\mathop{\operator@font ker\tusp}\nolimits}
\renewcommand\dim{\mathop{\operator@font dim\tusp}\nolimits}
\renewcommand\hom{\mathop{\operator@font hom\tusp}\nolimits}
\renewcommand\det{\mathop{\operator@font det\tusp}}
\renewcommand\exp{\mathop{\operator@font exp\tusp}\nolimits}
\renewcommand\Pr{\mathop{\operator@font Pr\tusp}}
\renewcommand\gcd{\mathop{\operator@font gcd\tusp}}
\renewcommand\deg{\mathop{\operator@font deg\tusp}\nolimits}

\DeclareRobustCommand*\manref[1]{\hbox{\mathcode`.="0201$#1$}}
\DeclareRobustCommand*\upmanref[1]{\textup{(\manref{#1})}}

\newcommand\today{}
\edef\today{\number\day\ \ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December
  \fi \ \number\year}

\newif\iffontfound
\newcommand\checkfont[1]{%
  \batchmode
  \font\test=#1\relax
  \errorstopmode
  \fontfoundfalse
  \ifx\test\nullfont \else \fontfoundtrue\fi
}

\pagestyle{headings}
\pagenumbering{arabic}
\frenchspacing
\ifprodtf
  \setlength\oddsidemargin\z@
  \setlength\evensidemargin\z@
  \setlength\topmargin\z@
\fi
\ifreferee
  \renewcommand\baselinestretch{2}\raggedbottom
\else
  \flushbottom
\fi

\endinput

% end of file psp.cls
