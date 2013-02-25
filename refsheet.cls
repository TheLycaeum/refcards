\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{refsheet}[2013/02/25 Reference Sheet Class]


\newcommand{\refsheet@columns}{3}

% Would be good to have an option for how many columns are desired

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}

\ProcessOptions

\LoadClass{article}[2013/02/25]

\RequirePackage{fixltx2e}
\RequirePackageWithOptions{nag}[2013/03/25 othodox,l2tabu,abort]

%% Page layout

\RequirePackage{geometry}[2013/03/25]
%\usepackage[landscape,margin=0.5in]{geometry}
\geometry{landscape,margin=0.5in}
\RequirePackage{multicol}


%% Title area

% \RequirePackage{titling} % Unnecessary
\renewcommand{\maketitle}{%
  {\begin{center}\Large \@title \\ \vspace{4pt} \small \@author, \@date\end{center}}%
}


%% Document Divisions

\RequirePackage{titlesec}
\RequirePackage{nopageno} % To keep \section from resetting page style

\setcounter{secnumdepth}{0} % no section numbering
\setlength{\parindent}{0pt} % disabling indentation by default
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}


%% Lists

\RequirePackage{enumitem} % for consistent formatting of lists
\RequirePackage{calc} % for \widthof

% Provide a list-type for commands and descriptions
\newlist{ttdesc}{description}{1}
\setlist[ttdesc]{font=\ttfamily,noitemsep}

\AtBeginDocument{\begin{multicols}{\refsheet@columns}}
\AtEndDocument{\end{multicols}}
