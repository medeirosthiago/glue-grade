%% abnt-UTFPR.cls,v 1.2
%% Nome deste arquivo: abnt-UTFPR.cls
%% Autores: Diogo Rosa Kuiaski <diogo.kuiaski@gmail.com>
%%          Hugo Vieira Neto <hvieir@utfpr.edu.br>
%%
%% Criado com base nas definicoes do arquivo abnt-UFPR.sty
%% Agradecimentos: Rogerio C. <rogerioc@cesec.ufpr.br>
%%                 Dornelles Vissotto Junior <dvissotto@ufpr.br>
%%
%% Sinta-se livre para melhorar este modelo, mas nao se esqueca de
%% comunicar aos autores para que outras pessoas possam ter acesso
%% a essas melhorias. Sugestoes tambem sao bem-vindas.
%%
%%
%%	Personalização realizada por Jackeline F. E. Puschel e Lucas M. Peruchi
%% 	Faculdade Anglo Americano Foz do Iguaçu - Ano 2012
%%
%%
\NeedsTeXFormat{LaTeX2e}

\input{cvs-id.def}
\CVSExtract$Id: abnt-UTFPR.cls,v 1.1 2009/11/03 16:00:07 gweber Exp $
\CVSPackage{abntUTFPR}{} %\ProvidesPackage

\PassOptionsToClass{pagestart=firstchapter,chapter=TITLE,section=TITLE}{abnt}

\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{perpage}
\PassOptionsToPackage{hyperindex=false}{hyperref}
\PassOptionsToPackage{estilo=UTFPR}{tabela-simbolos}
\usepackage[a4paper,left=30mm,right=20mm,top=30mm,bottom=30mm]{geometry} % tamanho atual em uso %nao tem miktex


\LoadClass{abnt}

\makeatletter	%Para que se entenda o @


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINICOES DA UTFPR

\providecommand{\UTFPRdepartamentodata}{}
\newcommand{\departamento}[1]{\renewcommand{\UTFPRdepartamentodata}{#1}}

\providecommand{\UTFPRprogramadata}{}
\newcommand{\programa}[1]{\renewcommand{\UTFPRprogramadata}{#1}}

\providecommand{\UTFPRareadata}{}
\newcommand{\area}[1]{\renewcommand{\UTFPRareadata}{#1}}

\providecommand{\UTFPRdocumentodata}{}
\newcommand{\documento}[1]{\renewcommand{\UTFPRdocumentodata}{#1}}

\providecommand{\UTFPRniveldata}{}
\newcommand{\nivel}[1]{\renewcommand{\UTFPRniveldata}{#1}}

\providecommand{\UTFPRtitulacaodata}{}
\newcommand{\titulacao}[1]{\renewcommand{\UTFPRtitulacaodata}{#1}}

\providecommand{\UTFPRcitadata}{}
\newcommand{\cita}[1]{\renewcommand{\UTFPRcitadata}{#1}}

\providecommand{\UTFPRtitledata}{}
\renewcommand{\title}[1]{\renewcommand{\UTFPRtitledata}{#1}}

\providecommand{\UTFPRpalavraschavedata}{}
\newcommand{\palavraschave}[1]{\renewcommand{\UTFPRpalavraschavedata}{#1}}

\providecommand{\UTFPRkeywordsdata}{}
\newcommand{\keywords}[1]{\renewcommand{\UTFPRkeywordsdata}{#1}}

\providecommand{\UTFPRautordata}{}
\newcommand{\autorU}[1]{\renewcommand{\UTFPRautordata}{#1}}

\providecommand{\UTFPRautordatadois}{}
\newcommand{\autorD}[1]{\renewcommand{\UTFPRautordatadois}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA

\renewcommand{\capa}{
	\begin{titlepage}
		\begin{center}
			\large\ABNTchapterfont\MakeUppercase{\ABNTinstituicaodata}\\
			\ABNTifnotempty{\UTFPRdepartamentodata}
			{
				\MakeUppercase{\UTFPRdepartamentodata}\\
			}
			\large\MakeUppercase{\UTFPRprogramadata}\par	
		\end{center}		
		\vspace{1cm}	
		\begin{center}
			\normalsize\MakeUppercase{\ABNTautordata}\\
			\MakeUppercase{\UTFPRautordata} \\
			\MakeUppercase{\UTFPRautordatadois} \\
		\end{center}
		\vspace{4.5cm}
		\begin{center}
			\large\ABNTchapterfont\MakeUppercase{\ABNTtitulodata}\par
		\end{center}
		\vspace{.5cm}
		\begin{center}
			\large\MakeUppercase{\UTFPRdocumentodata}%
			\ABNTifnotempty{\UTFPRniveldata}
			{
				\MakeUppercase{de \UTFPRniveldata}\par
			}
		\end{center}
		\vfill
		\begin{center}
			\MakeUppercase{\ABNTlocaldata}\par
			\ABNTdatadata
		\end{center}
	\end{titlepage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO

\newcommand{\esporient}[2]
{
	\leftskip 0em
	\@tempdima 6.5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\newcommand{\espcoorient}[2]
{
	\leftskip 0em
	\@tempdima 6.5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\renewcommand{\folhaderosto}
{
	\begin{titlepage}
		\espaco{1.1}
		\begin{center}
			\normalsize\MakeUppercase{\ABNTautordata}\\
			\MakeUppercase{\UTFPRautordata}\\
			\MakeUppercase{\UTFPRautordatadois}
		\end{center}
		\vspace{5.5cm}
		\begin{center}
			\onehalfspacing\large\ABNTchapterfont\MakeUppercase{\ABNTtitulodata}\par
		\end{center}
		\vspace{1cm}
		\hspace{.35\textwidth}	
		\begin{minipage}{.55\textwidth}
			\begin{espacosimples}
				\ABNTcomentariodata\par
				\esporient{\numberline{\ABNTorientadorname}}{\ABNTorientadordata}\par
				\ABNTifnotempty{\ABNTcoorientadordata}
				{
					\espcoorient{\ABNTcoorientadorname}{\ignorespaces\ABNTcoorientadordata}
				}\\
				\ABNTifnotempty{\ABNTcoorientadordatadois}
								{
									\espcoorient{\ABNTcoorientadornamedois}{\ignorespaces\ABNTcoorientadordatadois}
								}
				\end{espacosimples}		
		\end{minipage}
		\vfill
		\begin{center}
			\MakeUppercase{\ABNTlocaldata}\par
			\ABNTdatadata
		\end{center}
	\end{titlepage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TERMO DE APROVACAO

\providecommand{\ABNTtextoaprovacaodata}{}
\newcommand{\textoaprovacao}[1]{\renewcommand{\ABNTtextoaprovacaodata}{#1}}

\providecommand{\ABNTprimeiroassinadata}{}
\newcommand{\primeiroassina}[1]{\renewcommand{\ABNTprimeiroassinadata}{#1}}

\providecommand{\ABNTsegundoassinadata}{}
\newcommand{\segundoassina}[1]{\renewcommand{\ABNTsegundoassinadata}{#1}}

\providecommand{\ABNTterceiroassinadata}{}
\newcommand{\terceiroassina}[1]{\renewcommand{\ABNTterceiroassinadata}{#1}}

\providecommand{\ABNTquartoassinadata}{}
\newcommand{\quartoassina}[1]{\renewcommand{\ABNTquartoassinadata}{#1}}

\providecommand{\ABNTlocaldiadata}{}
\newcommand{\localdia}[1]{\renewcommand{\ABNTlocaldiadata}{#1}}

\newcommand{\termodeaprovacao}
{
	\begin{titlepage}
		\pretextualchapter{TERMO DE APROVA\c{C}\~AO}
		\vspace{-0.25cm}
		\begin{center}
			\large\ABNTautordata\\
			\UTFPRautordata \\
			\UTFPRautordatadois
		\end{center}
		\vspace{0.75cm}
		\begin{center}
			\large\ABNTtitulodata
		\end{center}
		\vspace{0.75cm}
		\begin{espacosimples}
			\noindent\ABNTtextoaprovacaodata\par
		\end{espacosimples}
	
		\ABNTifnotempty{\ABNTprimeiroassinadata}%
		{		
		\begin{flushright}
		  \begin{minipage}{.5\textwidth}
			\begin{espacosimples}%
				\vspace{-2.0cm}
				\assinatura{
					\begin{flushright}
						\ABNTprimeiroassinadata
					\end{flushright}}
				\end{espacosimples}
			\end{minipage}
		\end{flushright}
		}
		\ABNTifnotempty{\ABNTsegundoassinadata}%
		{
		\begin{flushright}
		  \begin{minipage}{.5\textwidth}
			\begin{espacosimples}%
				\vspace{-3.3cm}
				\assinatura{
					\begin{flushright}
						\ABNTsegundoassinadata
					\end{flushright}}
				\end{espacosimples}
			\end{minipage}
		\end{flushright}
		}
		\ABNTifnotempty{\ABNTterceiroassinadata}%
		{
		\begin{flushright}
		  \begin{minipage}{.5\textwidth}
			\begin{espacosimples}%
				\vspace{-3.3cm}
				\assinatura{
					\begin{flushright}
						\ABNTterceiroassinadata
					\end{flushright}}
				\end{espacosimples}
			\end{minipage}
		\end{flushright}
		}
		\ABNTifnotempty{\ABNTquartoassinadata}%
		{
			\vspace{-1.5cm}
			\assinatura{\ABNTquartoassinadata}
		}
		\vfill
		\begin{center}
			\ABNTlocaldiadata
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   DEDICATORIA

\newenvironment{dedicatoria}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTOS

\newenvironment{agradecimentos}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{AGRADECIMENTOS}%
}%
{
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EPIGRAFE

\newenvironment{epigrafe}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO

\renewenvironment{resumo}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{resumo}
	\pretextualchapter{\MakeUppercase{\resumoname}}%
	\begin{espacosimples}%
		\linespread{1.5}
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		
}%
{
		\par \textbf{Palavras-chave:} \UTFPRpalavraschavedata
	\end{espacosimples}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT

\renewenvironment{abstract}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{abstract}
	\pretextualchapter{\MakeUppercase{\ABNTabstractname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		
}%
{
		\par \textbf{Keywords:} \UTFPRkeywordsdata
		\end{espacosimples}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS

% Cria um comando auxiliar para montagem da lista de figuras
\newcommand{\figfillnum}[1]
{
	{\hspace{1em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de figuras
\renewcommand{\listadefiguras}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoffigures}
	\pretextualchapter{LISTA DE FIGURAS}
	\@starttoc{lof}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}

\renewcommand*{\l@figure}[2]
{
	\leftskip 1.8em
	\rightskip 1.6em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 3.4em
	\advance\leftskip \@tempdima\bfseries: \null\nobreak\hskip -\leftskip
	{\normalfont{Figura #1}}\nobreak \figfillnum{#2}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS

% Cria um comando auxiliar para montagem da lista de tabelas
\newcommand{\tabfillnum}[1]
{
	{\hspace{1em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de tabelas
\renewcommand{\listadetabelas}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoftables}
	\pretextualchapter{LISTA DE TABELAS}
	\@starttoc{lot}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}%

\renewcommand*{\l@table}[2]
{
	\leftskip 1.8em
	\rightskip 1.6em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 3.4em
	\advance\leftskip \@tempdima\bfseries: \null\nobreak\hskip -\leftskip
	{\normalfont{Tabela #1}}\nobreak \tabfillnum{#2}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIMBOLOS

% Define os comandos que montam a lista de simbolos
\newcommand{\listadesimbolos}
{
	\pretextualchapter{LISTA DE S\'IMBOLOS}\@starttoc{lsb}
}

\newcommand{\simbolo}[2]
{
	{\addcontentsline{lsb}{simbolo}{\numberline{#1}{#2}}}#1%
}

\newcommand{\l@simbolo}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIGLAS

% Define o comando que monta a lista de siglas
\newcommand{\listadesiglas}
{
	\pretextualchapter{LISTA DE SIGLAS}\@starttoc{lsg}
}

\newcommand{\sigla}[2]
{
	{\addcontentsline{lsg}{sigla}{\numberline{#1}{#2}}}#1%
}

\newcommand{\l@sigla}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO

%Altera o espacamento entre dots
\renewcommand\@dotsep{2}

% Altera a forma do sumario
\renewcommand{\sumario}{%
	\ifthenelse{\boolean{@twocolumn}}%
	{
		\setboolean{ABNTrestorecol}{true}\onecolumn
	}%
	{
		\setboolean{ABNTrestorecol}{false}
	}%
	\if@openright\cleardoublepage\else\clearpage\fi
  	\pretextualchapter{SUM\'ARIO}%
	\thispagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\@afterheading
	\@mkboth{\contentsname}{\contentsname}
	\@starttoc{toc}%
	\ifthenelse{\boolean{ABNTrestorecol}}{\twocolumn}{}%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setboolean{ABNTaftertoc}{true}
}%

%Altera forma de montagem dos capitulos
\renewcommand{\l@chapter}[2]
{
	\ifnum
		\c@tocdepth > \m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{1.0em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{
				\renewcommand{\@pnumwidth}{1em}
			}{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \normalsize \ABNTtocchapterfont
			\\
			\MakeUppercase{#1}\nobreak\dotfill \nobreak%
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{%
				\hb@xt@\@pnumwidth{\hss
				\ifthenelse{\not\equal{#2}{}}{{#2}}{}}
				\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			}
			{%
				\hb@xt@\@pnumwidth{\hss #2}\par
			}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das secoes
\renewcommand{\l@section}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2.0em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
				{\renewcommand{\@pnumwidth}{1em}}
				{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\MakeUppercase{#1}\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsecoes
\renewcommand{\l@subsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{3.0em}%
		\begingroup
		\ifthenelse{\boolean{ABNTpagenumstyle}}
			{\renewcommand{\@pnumwidth}{1em}}
			{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth \bfseries
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsubsecoes
\renewcommand{\l@subsubsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{5em}%
		\begingroup
		\ifthenelse{\boolean{ABNTpagenumstyle}}
			{\renewcommand{\@pnumwidth}{1em}}
			{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth \itshape
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULOS

% Altera o tamanho das fontes
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\ABNTchaptersize}{\normalsize}
\renewcommand{\ABNTsectionfont}{\normalfont}
\renewcommand{\ABNTsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsectionfont}{\bfseries}
\renewcommand{\ABNTsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsubsectionfont}{\itshape}
\renewcommand{\ABNTsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTanapsize}{\normalsize}

% Altera titulo das subsecoes (lowercase)
\def\ABNTsect#1#2#3#4#5#6[#7]#8{%
  \ifnum #3>\c@secnumdepth
    \@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
					\ifnum #2<\c@secnumdepth%
	          \ifthenelse{\boolean{ABNTcapsec}}
	             {\MakeUppercase{#8}}{#8}\@@par%
					\else%
	             {#8}\@@par% lowercase
					\fi}%
    \endgroup
    \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
    \ABNTaddcontentsline{toc}{#1}{%
      \ifnum #3>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec \ifthenelse{\boolean{ABNTcapsec}}
             {\MakeUppercase{#8}}{#8}}%
      \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
      \ABNTaddcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}



% Altera o espacamento das linhas dos capitulos e apendices
\newcommand*{\taxaespacomeio}{1.0}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NUMERACAO

% Define o tipo de numeracao de figuras, tabelas e equacoes
\AddAbsoluteCounter{figure}
\setcounter{absfigure}{0}
\renewcommand{\thefigure}{\arabic{absfigure}}
\AddAbsoluteCounter{table}
\setcounter{abstable}{0}
\renewcommand{\thetable}{\arabic{abstable}}
\AddAbsoluteCounter{equation}
\setcounter{absequation}{0}
\renewcommand{\theequation}{\arabic{absequation}}

% Define o tipo de numeracao das paginas
\renewcommand{\chaptertitlepagestyle}{plain}

% Altera a posicao da numeracao de paginas dos elementos pre-textuais
\renewcommand{\pretextualchapter}
{
	\if@openright\cleardoublepage\else\clearpage\fi
	\pagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\renewcommand{\thepage}{}
	\@schapter
}

% Altera a posicao da numeracao de paginas dos elementos textuais
\renewcommand{\ABNTchaptermark}[1]
{
	\ifthenelse{\boolean{ABNTNextOutOfTOC}}
		{\markboth{\ABNTnextmark}{\ABNTnextmark}}
		{\chaptermark{#1}
	\pagestyle{\chaptertitlepagestyle}}
}

% Redefine o tipo de numeracao das paginas
\renewcommand{\ABNTBeginOfTextualPart}
{
	\renewcommand{\chaptertitlepagestyle}{plainheader}
	\renewcommand{\thepage}{\arabic{page}}
	%\setcounter{page}{1}
}

%Altera o tamanho da indentacao do paragrafo
\setlength{\parindent}{1.5cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEGENDAS

\newcommand{\captionfonts}

\long\def\@makecaption#1#2{
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\captionfonts \textsc{\textbf{#1: #2}}}}%
	\ifdim \wd\@tempboxa >\hsize
		{\captionfonts \textbf{#1: #2}\par}
	\else
		\hbox to\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip
}

\newcommand{\fonte}[1]
{
	\begin{flushleft}
		\begin{spacing}{\taxaespacomeio}
			\par
		\end{spacing}
		\centering\small{Fonte: #1}
	\end{flushleft}
}

\renewcommand{\fnum@figure}{\textsc{\textbf{\figurename~\thefigure}}}
\renewcommand{\fnum@table}{\textsc{\textbf{\tablename~\thetable}}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REFERENCIAS

\renewcommand{\ABNTbibliographyname}{REFER\^ENCIAS}
