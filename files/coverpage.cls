\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverpage}[2021/01/24] 

\LoadClass[a4paper,11pt]{article}

\usepackage[hmargin=2cm,vmargin=3cm]{geometry}
\renewcommand{\baselinestretch}{1.4}

\newcommand{\module}[1]{\def\@module{#1}}
\renewcommand{\title}[1]{\def\@title{- #1 -}}
\newcommand{\studentnumber}[1]{\def\@studentnumber{#1}}

\AtBeginDocument{

	\begin{titlepage}
		\begin{center}

			\vspace*{6cm}
			\line(1,0){400}\\[5mm]
			\Huge{\textbf{\@module}} \\
			\huge{\@title}
		
			\line(1,0){400}\\[5mm]
			\large{\textbf{Student Number: }\texttt{\@studentnumber}} \\
			\vspace{3mm}
			\large{\textbf{Page Count:} \underline{\ \ \ \ \ \ } }

		\end{center}	
	\end{titlepage}

}














