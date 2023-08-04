\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coursework}[2021/01/08 Coursework Answers Sheet Class]

\LoadClass[a4paper,11pt]{article}

\usepackage[hmargin=2cm,vmargin=3cm]{geometry}
\usepackage{amsfonts,amsmath,amssymb}
\usepackage[none]{hyphenat}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{float}
\usepackage{enumitem}
\usepackage{xcolor}
\usepackage{lastpage}

\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyhead[L]{\texttt{\@modname \ }}
\fancyhead[R]{\texttt{\@studentid}}
\fancyfoot[C]{\thepage}

\parindent 0ex
\renewcommand{\baselinestretch}{1.4}

\newcommand{\module}[2]{\def\@modname{#1} \def\@modcode{#2}}
\newcommand{\cwtitle}[1]{\def\@cwtitle{#1} \def\@cwtitlebig{- #1 -}}
\newcommand{\studentid}[1]{\def\@studentid{#1}}

\newcommand{\start}{\begin{enumerate}[font=\bfseries]}
\newcommand{\finish}{\end{enumerate}}

\newenvironment{parts}{\start}{\finish}
\newenvironment{solution}{\color{blue}}{}

\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\der}[1]{\mathrm{d}#1}

\newcommand{\coverpage}{
	\begin{titlepage}
	\begin{center}
		\vspace*{5cm}
		\line(1,0){400}\\[5mm]
		\Huge{\textbf{\@modname}} \\
		\huge{\@cwtitlebig}

		\line(1,0){400}\\[5mm]
		\large{\textbf{Student Number: }\texttt\@studentid} \\
		\vspace{3mm}
		\large{\textbf{Page Count: } \pageref{LastPage} \ \textit{(excl. title page)}}
	\end{center}	
	\end{titlepage}
	
	\begin{center}
	\Large{\MakeUppercase{\@cwtitle}}\\
	\line(1,0){485}	
	\end{center}
	
	\start

}

\newcommand{\nocoverpage}{
	\begin{center}
	\Large{\MakeUppercase{\@cwtitle}}\\
	\line(1,0){485}	
	\end{center}
	
	\start
}


%\AtBeginDocument{
%
%	\begin{titlepage}
%	\begin{center}
%		\vspace*{5cm}
%		\line(1,0){400}\\[5mm]
%		\Huge{\textbf{\@modname}} \\
%		\huge{\@cwtitlebig}
%
%		\line(1,0){400}\\[5mm]
%		\large{\textbf{Student Number: }\texttt\@studentid} \\
%		\vspace{3mm}
%		\large{\textbf{Page Count: } \pageref{LastPage} \ \textit{(excl. title page)}}
%	\end{center}	
%	\end{titlepage}
%
%	\begin{center}
%	\Large{\MakeUppercase{\@cwtitle}}\\
%	\line(1,0){485}	
%	\end{center}
%	
%	\start
%
%}


\AtEndDocument{

\finish

}








