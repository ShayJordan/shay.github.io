\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{revision}[2022/01/24 Revision]

\LoadClass[a4paper,12pt]{article}

\usepackage{charter}
\usepackage[hmargin=1.6cm,vmargin=1.6cm]{geometry}
\usepackage{amsfonts,amsmath,amssymb}
\usepackage[none]{hyphenat}
\usepackage{graphicx}
\usepackage{float}
\usepackage{enumitem}
\usepackage{xcolor}
\usepackage{lastpage}

\parindent 0ex
\renewcommand{\baselinestretch}{1.4}

\newcommand{\start}{\begin{itemize}}
\newcommand{\finish}{\end{itemize}}

\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\der}[1]{\mathrm{d}#1}

\renewcommand{\emph}[1]{\textbf{\color{red}{#1}}}

\pagestyle{empty}







