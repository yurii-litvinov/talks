% Style for SPbU lectures. Uses classic black-on-white theme with minimal visual clutter.
% Using ../.. in style name because latex was created before Git and knows nothing about relative paths to style files.
\ProvidesClass{slides-style}[2022/08/14 version 1.00 SPbU lecture slides]
\NeedsTeXFormat{LaTeX2e}

\ProcessOptions\relax

% Loading Beamer as a base class. 
\LoadClass[xetex,mathserif,serif]{beamer}

% Loading common packages
\usepackage{polyglossia}
\setdefaultlanguage[babelshorthands=true]{russian}
\usepackage{csquotes}
\usepackage{bookmark}
\usepackage[dvipsnames]{xcolor}

% Loading font (we use default)
\usepackage{fontspec}
\setmainfont{FreeSans}
\newfontfamily{\russianfonttt}{FreeSans}

% Selecting Beamer outer theme with some presentation structure info.
\usetheme{SPbU}

% Link colors
\definecolor{links}{HTML}{2A1B81}
\hypersetup{colorlinks,linkcolor=,urlcolor=links}

% Remove slide navigation buttons
\beamertemplatenavigationsymbolsempty

\newcommand{\highlight}[1]{{\usebeamercolor[fg]{title in head/foot} #1}}

% Slide title with shortened title command. Takes four arguments --- title, date, shortened title for slide footer and optional subtitle.
\newcommand{\slidetitleext}[4][{}] {
    \title[#4]{#2}
    \subtitle{#1}
    \author[Юрий Литвинов]{Юрий Викторович Литвинов\newline\small{\textcolor{gray}{cтарший преподаватель кафедры системного программирования\newline{y.litvinov@spbu.ru}}}}
    \date{#3}
}

