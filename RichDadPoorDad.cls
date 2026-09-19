\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RichDadPoorDad}

\newif\if@twopages

\DeclareOption{twopages}{
  \@twopagestrue
}

\ProcessOptions\relax

% 设置纸张为A4，字号
\LoadClass[cs4size,a4paper,12pt,twoside]{ctexart}   

% 设置页边距
\usepackage[top=3.2cm, bottom=2.7cm, left=3.18cm, right=3.18cm]{geometry}

\usepackage{color}
\usepackage{xcolor}

% 设置中文支持
\usepackage[AutoFallBack=true]{xeCJK}
\setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01} 
\setCJKsansfont[BoldFont={FZHei-B01}]{FZKai-Z03} 
\setCJKmonofont[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\setCJKfamilyfont{zhsong}{FZShuSong-Z01}
\setCJKfamilyfont{zhhei}{FZHei-B01} 
\setCJKfamilyfont{zhkai}[BoldFont={FZHei-B01}]{FZKai-Z03} 
\setCJKfamilyfont{zhfs}[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\newCJKfontfamily\xbsong{FZXiaoBiaoSong-B05S}
\newCJKfontfamily\cusong{FZCuSong-B09S}
\setCJKfallbackfamilyfont{\CJKrmdefault}{TH-Sy-P0,FZSongS--GB1-5,FZSONG_ZHSJ_02--GB1-5}

% 为特定字符设置字体
\newfontface\extendfont{TH-Sy-P0}
\newcommand{\myfont}[1]{\hspace{0pt}\extendfont{#1}\hspace{0pt}}

% 英文修改为Times New Roman字体
\setmainfont{Times New Roman}[SmallCapsFont=TeX Gyre Termes:+smcp]

% 设置页眉页脚
\usepackage{fancyhdr}
\usepackage{emptypage}
\fancypagestyle{tocstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0.35pt}
    \fancyhead[C]{{\kaishu{\small{目录}}}}
    \fancyfoot[C]{\small{\thepage}}
}
\fancypagestyle{tocblankstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
}
\fancypagestyle{docstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0.35pt}
    \fancyhead[CO]{{\kaishu{\small{\rightmark}}}} % 奇数页页眉为文章标题
    \fancyhead[CE]{{\kaishu{\small{富爸爸\q 穷爸爸}}}} % 偶数页页眉
    \fancyfoot[C]{\small{\thepage}}
}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\fancypagestyle{appendixstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0.35pt}
    \fancyhead[CO]{{\kaishu{\small{附录}}}}
    \fancyhead[CE]{{\kaishu{\small{富爸爸\q 穷爸爸}}}}
    \fancyfoot[C]{\small{\thepage}}
}
\setlength{\headheight}{15pt}

% 避免页面底部对可伸缩间距进行强制拉伸
\raggedbottom

% 设置段落缩进
\usepackage{indentfirst}
\setlength{\parindent}{2em}

% 设置行距
\usepackage{setspace}
\setstretch{1.5}
\setlength{\parskip}{0.25em}

\usepackage[stable]{footmisc}

\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=black,
    urlcolor=black,
    linktoc=all
}
\usepackage{etoolbox}
\pretocmd{\section}{\phantomsection}{}{}

% 设置标题格式
\usepackage{titlesec}
\ctexset{
    section = {
        format = \centering\xbsong\fontsize{16pt}{24pt}\selectfont
    }
}
\titleformat{\section}[block]{\centering\xbsong\fontsize{16pt}{24pt}\selectfont}{\thesection}{0pt}{\phantomsection}[]
\titlespacing*{\section}{0pt}{-1ex plus -.2ex minus -.2ex}{2.3ex plus .2ex}
\titleformat{\subsection}[block]{\raggedright\heiti \setstretch{1.35} \zihao{-3} }{ \thesubsection}{0em}{\phantomsection}[]
\titlespacing*{\subsection}{0pt}{1.5ex plus .2ex}{1ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{5pt}{5pt}


% 两个空格大小
\newcommand{\q}{\ \ }

\usepackage{float}

\newenvironment{poem}{\setlength{\leftskip}{1em} \setlength{\rightskip}{1em} \kaishu}

% 引用中用楷书
\AtBeginEnvironment{quotation}{\kaishu}


\endinput
