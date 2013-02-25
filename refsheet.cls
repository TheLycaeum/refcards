\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{refsheet}[2013/02/25 Reference Sheet Class]
\LoadClass{article}[2013/02/25]

\RequirePackage{fixltx2e}
\RequirePackageWithOptions{nag}[2013/03/25 othodox,l2tabu,abort]

%% Page layout
\RequirePackageWithOptions{geometry}[2013/03/25 landscape,margin=0.5in]
\RequirePackage{multicol}


\newcommand{\refsheet@columns}{2}

% Would be good to have an option for how many columns are desired

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}

%% Title area

% \RequirePackage{titling} % Unnecessary
\renewcommand{\maketitle}{%
  {\begin{center}\Large \@title\end{center}}%
}

%% Document Divisions

\RequirePackage{titlesec}
\RequirePackage{nopageno} % To keep \section from resetting page style

\setcounter{secnumdepth}{0}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\setlength{\parindent}{0pt} % disabling indentation by default

%% Lists

\RequirePackage{enumitem} % for consistent formatting of lists
\RequirePackage{calc} % for \widthof
\newlist{ttdesc}{description}{1}
\setlist[ttdesc]{font=\ttfamily,noitemsep}

\AtBeginDocument{\begin{multicols}{\refsheet@columns}}
\AtEndDocument{\end{multicols}}
