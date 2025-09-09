\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EstructuraPlantilla}[2025/02/16 Clase personalizada basada en book para LuaLaTeX]

\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{book}
}

\ProcessOptions\relax

% - Cargar la clase base
\LoadClass[twoside]{book}

\RequirePackage[spanish, es-noshorthands, es-tabla, es-lcroman]{babel}

% - Cargar paquetes
\RequirePackage[
    a4paper,twoside,
    inner=22mm,outer=5.25cm,
    marginparwidth=35mm,
    marginparsep=5mm,
    top=22mm,bottom=17mm
]{geometry}
% \RequirePackage{showframe}

\setlength{\parskip}{0.6\baselineskip}
\setlength{\headheight}{9pt}

% Guardar algunas longitudes como comandos
\newlength\outermarginwidth
\setlength\outermarginwidth{1.5cm}
\newlength\covershift
\setlength\covershift{5cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Paquetes Necesarios %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fix-cm}
\RequirePackage[
    compact,
    newparttoc,
    newlinetospace,
]{titlesec}
\RequirePackage{titletoc}
\RequirePackage[strict]{changepage}
\RequirePackage{everypage}
\RequirePackage{fullwidth}
\RequirePackage{varwidth}

\RequirePackage[dvipsnames,svgnames,table]{xcolor}
    \definecolor{darkc}{RGB}{0,153,76}
    \definecolor{mainc}{RGB}{0,102,204}
        \colorlet{mainc1}{mainc!85!black}
    \definecolor{lightc}{RGB}{153,0,0}
    \definecolor{ultralightc}{RGB}{255,102,0}
    
    \definecolor{page}{HTML}{FFFFFF} % white
    \definecolor{text}{HTML}{000000} % black


\RequirePackage[bbgreekl]{mathbbol}
\RequirePackage{amsmath, amsfonts, amssymb, amsthm}
\RequirePackage{cancel}
\RequirePackage{bm}
\RequirePackage{stmaryrd}
\RequirePackage{thmtools}
\RequirePackage{bookmark}
\RequirePackage{booktabs}
\RequirePackage{calc}
\RequirePackage{caption}
\RequirePackage[inline]{enumitem}
\RequirePackage{tasks}
\RequirePackage{multienum} %.sty
\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage{floatrow}
\RequirePackage{graphicx}
\RequirePackage{transparent}
\RequirePackage[font=normalsize]{subfig} % Para subfiguras o figuras más complejas
\RequirePackage{makecell}
\RequirePackage{nicematrix}
\RequirePackage[section]{placeins} % Evita que los flotadores lleguen a las secciones transversales
\RequirePackage{marginnote} % Provides options for margin notes
\RequirePackage{marginfix} % Proporciona opciones para notas al margen
\RequirePackage{sidenotes} % Para usar notas al margen
\RequirePackage{chngcntr} % Restablecer contadores en secciones
\RequirePackage[bottom, symbol*, hang, flushmargin, stable]{footmisc} % Requerido para configurar las notas al pie
\RequirePackage{footnotebackref} % Crea referencias posteriores de las notas al pie de página al texto
\RequirePackage{mdframed}
\RequirePackage{microtype}
\RequirePackage{multicol}
\RequirePackage{ragged2e}
\RequirePackage{verbatim}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage{geometry}
\RequirePackage{lipsum}
\RequirePackage{qrcode}
\RequirePackage{ccicons}
\RequirePackage{emptypage}
\RequirePackage{pdfpages}

\RequirePackage{circuitikz,siunitx}
\RequirePackage{tikz}
\RequirePackage{ifthen}
    \usetikzlibrary{shapes}
    \usetikzlibrary{positioning,calc,backgrounds,tikzmark}
    \usetikzlibrary{shapes.geometric}
    \usetikzlibrary{calendar}
    \usetikzlibrary{mindmap}
    \usetikzlibrary{trees}
    \usetikzlibrary{decorations.pathmorphing}

    \tikzstyle{level 1}=[level distance=30mm, sibling distance=21mm]
    \tikzstyle{level 2}=[level distance=30mm, sibling distance=4.5mm]
    \tikzstyle{level 3}=[level distance=20mm]
    
    \tikzstyle{ejes}=[-stealth,thick]
    \tikzstyle{recta}=[thick]
    \tikzstyle{linea punteada}=[dash pattern=on 2pt,gray]
    \tikzstyle{linea punteada 2}=[dash pattern=on 3pt,gray]
    \tikzstyle{vector}=[-latex,thick]
    \tikzstyle{-vector}=[latex-,thick]
    \tikzstyle{papa}=[gray,thick]

    % Física
    \newcommand{\vecr}{\mathbfit{\vec{r}}}
    \newcommand{\veloinew}{\mathbfit{\dot{\vecr}}}
    \newcommand{\aceinew}{\mathbfit{\ddot{\vec{r}}}}
    
    \newcommand{\runi}{\mathbfit{\hat{r}}}
    
    \newcommand{\veci}{\hat{\mathbfit{i}}}
    \newcommand{\vecj}{\hat{\mathbfit{j}}}
    \newcommand{\veck}{\mathbfit{\hat{k}}}
    
    \newcommand{\uniu}{\mathbfit{\hat{u}}}
    \newcommand{\velou}{\mathbfit{\vec{u}}}
    
    \newcommand{\auni}{\mathbfit{\hat{a}}}
    
    \newcommand{\Deltar}{\Delta\vecr}
    
    \newcommand{\Deltax}{\Delta x}
    \newcommand{\Deltay}{\Delta y}
    \newcommand{\Deltaz}{\Delta z}
    
    \newcommand{\Deltavx}{\Delta v_x}
    \newcommand{\Deltavy}{\Delta v_y}
    \newcommand{\Deltavz}{\Delta v_z}
    
    \newcommand{\Deltaax}{\Delta a_x}
    \newcommand{\Deltaay}{\Delta a_y}
    \newcommand{\Deltaaz}{\Delta a_z}
    
    \newcommand{\Deltabx}{\Delta b_x}
    \newcommand{\Deltaby}{\Delta b_y}
    \newcommand{\Deltabz}{\Delta b_z}
    
    \newcommand{\Deltat}{\Delta t}
    
    \newcommand{\Deltav}{\Delta\veloi}
    
    \newcommand{\velom}{\mathbfit{\vec{\bar{v}}}}
    \newcommand{\acem}{\mathbfit{\vec{\bar{a}}}}
    
    \newcommand{\veloi}{\mathbfit{\vec{v}}}
    \newcommand{\acei}{\mathbfit{\vec{a}}}
    
    \newcommand{\vecce}{\mathbfit{\vec{0}}}
    
    \newcommand{\veca}{\mathbfit{\vec{a}}}
    \newcommand{\vecb}{\mathbfit{\vec{b}}}
    \newcommand{\vecc}{\mathbfit{\vec{c}}}
    
    \newcommand{\cte}{\overrightarrow{cte}}
    
    \newcommand{\thetau}{\hat{\theta}}

    \newcommand{\F}{\mathbfit{\vec{F}}}

    \newcommand{\posi}{\mathbfit{\vec{p}}}

    \newcommand{\vecu}{\mathbfit{\vec{u}}}
    \newcommand{\vecv}{\mathbfit{\vec{v}}}

\newcommand{\romano}[1]{\textit{\creato\selectfont\color{mainc}#1)}}

\newtheorem*{primera}{Ley Primera}
\newtheorem*{segunda}{Ley Segunda}
\newtheorem*{tercera}{Ley Tercera}

\newtheorem*{defpri}{Definición \textsc{I}}
\newtheorem*{defseg}{Definición \textsc{II}}
\newtheorem*{defcua}{Definición \textsc{IV}}

    % Mano
    \colorlet{brownskin}{pink!5!brown!45}

    \usetikzlibrary{arrows.meta}
    \usetikzlibrary{shadows}
    \usetikzlibrary{calc}
    \usetikzlibrary{intersections}
    \usetikzlibrary{decorations.pathreplacing}
    \usetikzlibrary{decorations.markings}
    \usetikzlibrary{matrix}
    \usetikzlibrary{backgrounds}
    \usetikzlibrary{fit}
    \usetikzlibrary{3d}
    \usetikzlibrary{patterns,angles,quotes,math}
    \RequirePackage{tikz-3dplot}
    \usetikzlibrary{decorations}

\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
    \usetikzlibrary{pgfplots.fillbetween}

\RequirePackage[most]{tcolorbox}
    \tcbuselibrary{skins}
    \tcbuselibrary{listings,breakable}
    \tcbuselibrary{documentation}
    \usetikzlibrary{shadings}
    \tcbuselibrary{theorems}
    \tcbuselibrary{hooks}

\RequirePackage{tikzpagenodes}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Configuración Fuentes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
\usepackage{unicode-math}

\setmainfont{XITS}
[    Extension = .otf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic,
]
\setmathfont{XITSMath-Regular}
[    Extension = .otf,
      BoldFont = XITSMath-Bold,
]
\setmathfont{Latin Modern Math}[range={\sum,\in}]

\newfontfamily\altone[Path=fonts/altone/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{Altone}

\newfontfamily\cafe[Path=fonts/cafe/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{LouisGeorgeCafe}

\newfontfamily\creato[Path=fonts/creato/, Extension = .otf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{CreatoDisplay}

\newfontfamily\gravity[Path=fonts/gravity/, Extension = .otf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{Gravity}

\newfontfamily\ipn[Path=fonts/ipn/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{NotoSans}

\newfontfamily\naturalfont[Path=fonts/natural/]{NaturalFont.ttf}

\newfontfamily\roboto[Path=fonts/roboto/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{Roboto}

\newfontfamily\sft[Path=fonts/sft/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{SFTSchriftedSans}

\newfontfamily\superior[Path=fonts/superior/, Extension = .otf,
   UprightFont = *-Regular,
      BoldFont = *-Bold]{LTSuperior}

\newfontfamily\tnr[Path=fonts/tnr/, Extension = .ttf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic]{TimesNewRoman}

\newfontfamily\TrajanProB[Path=fonts/trajan/]{TrajanPro-Bold.otf}
\newfontfamily\TrajanProR[Path=fonts/trajan/]{TrajanPro-Regular.ttf}

\newfontfamily\Bahnschrift[Path=fonts/, Extension = .ttf]{Bahnschrift}

\newfontfamily\malgungothic[Path=fonts/, Extension = .ttf]{malgungothic}

\newfontfamily\juk[Path=fonts/, Extension = .ttf]{JukFont}

\newfontfamily\Lato[
  Mapping         = tex-text,
  UprightFont     = *-Regular,
  ItalicFont      = *-Italic,
  BoldFont        = *-Bold,
  BoldItalicFont  = *-BoldItalic,
]{Lato}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Hipervínculos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\urlstyle{rm}
\hypersetup{
	pdfborder={1 1 0},
	pdfcreator=LuaLaTeX,
    pdftitle={Introducción a la Física},
	pdfauthor={Vicente Chavarría Gámez},
    pdfsubject={Notas de Física en LaTeX.},
    bookmarksopen=false,
    linktocpage=true,
    colorlinks=false,
	% linkcolor=black,
    linktoc=all,
	% urlcolor=black,
	% citecolor=black,
	% filecolor=black,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Pie de página %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\thefootnote}{\arabic{footnote}}

\renewcommand{\footnoterule}{%
    \vspace*{1mm}%
    \noindent
    \begin{tikzpicture}[remember picture,overlay]
        \draw[line width=0.15mm,mainc!70] (0,0) -- (0.4\textwidth,0);
        \foreach \i in {0, 1, 2} {
            \fill[mainc] (\i*0.2+0.025, 0) circle (0.05 - \i*0.01);
        }
    \end{tikzpicture}%
    \vspace*{1.3mm}%
}

\renewcommand\@makefntext[1]{%
    \noindent
    \textsuperscript{%
        \protect\hyper@linkstart{link}{footnote.\@thefnmark}{%
        {\color{mainc}\superior\bfseries\selectfont\@thefnmark}%
    }%
        \protect\hyper@linkend
    }%
    \enspace #1
}

% \renewcommand\@makefnmark{%
%   \textsuperscript{%
%     \protect\hyper@linkstart{link}{footnote.\@thefnmark}{%
%       {\color{mainc}\creato\bfseries\selectfont\@thefnmark}%
%     }%
%     \protect\hyper@linkend
%   }%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Encabezados %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancypagestyle{fancy}{
  \renewcommand{\headrulewidth}{0pt}
  \fancyhf{}
  \fancyhfoffset[LE,RO]{\marginparsep + \marginparwidth}

  % - Encabezado en páginas pares
  \fancyhead[LE]{%
    \ifnum\c@chapter>0
      {\small\color{mainc}%
        \protect\hyperref[toc-contents]{\creato\selectfont\bfseries\thepage}}%
    \else
      {\small\bfseries\color{mainc}%
        \protect\hyperref[toc-contents]{\TrajanProB\selectfont{\scriptsize\thepage}}}%
    \fi
    \hspace{4.5em}\small\leftmark%
  }

  % - Encabezado en páginas impares
  \fancyhead[RO]{%
    \small\rightmark\hspace{4.5em}%
    \ifnum\c@chapter>0
      {\small\color{mainc}%
        \protect\hyperref[toc-contents]{\creato\selectfont\bfseries\thepage}}%
    \else
      {\leftmark\hspace{4.5em}{\small\bfseries\color{mainc}%
        \protect\hyperref[toc-contents]{\TrajanProB\selectfont\MakeLowercase{\scriptsize\thepage}}}}%
    \fi
  }
}

\def\sectionmark#1{%
  \markright{%
    \protect\hyper@linkstart{link}{\@currentHref}{%{\TrajanProB\selectfont\color{mainc}Sección}~
      {\color{mainc}\bfseries\thesection}\hspace{1.5em}%
    \creato\selectfont#1}\protect\hyper@linkend
  }%
}

\renewcommand{\chaptermark}[1]{%
  \ifnum\c@chapter>0
    % — Capítulo numerado
    \markboth{%
      \protect\hyper@linkstart{link}{\@currentHref}{%
        {\TrajanProB\selectfont\bfseries\color{mainc}%
          \chaptertitlename}~%
          {\bfseries\color{mainc}\thechapter% \fontencoding{T1}\fontfamily{phv}
          \hspace{1.5em}}
            \creato\selectfont#1}%
      \protect\hyper@linkend}{}%
  \else
    % — Capítulo no numerado
    \markboth{%
      \protect\hyper@linkstart{link}{\@currentHref}{%
        \creato\selectfont%
          #1}%
      \protect\hyper@linkend}{}%
  \fi
}

\fancypagestyle{plain}{                % - Estilo para cuando se especifica un estilo de página simple
    \fancyhead{}                       % - Borrar encabezados
    \renewcommand{\headrulewidth}{0pt} % - Eliminar línea de encabezado
}

\let\oldtextbf\textbf
\renewcommand{\textbf}[1]{\oldtextbf{\textcolor{mainc}{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Notas al Margen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\noHyphen}{%
  \righthyphenmin=62
  \lefthyphenmin=62
}

% - Comando para alternar notas en los márgenes (sin altura)
\newcommand{\altmarginnote}[1]{%
  \ifoddpage
    \reversemarginpar  
  \else
    \normalmarginpar   
  \fi
  \marginnote{\parbox[t]{\marginparwidth}{\noindent\justifying#1}}%
}

\pgfkeys{
    /yMarginDesign/.cd,
    alignment/.code = \FlushLeft,
    emph color/.initial = black,
    text color/.initial = black,
    size/.code = \footnotesize,
    titleFormat/.code = \bfseries\scshape,
    marginparskip/.initial = 3mm,
}

% - Para escribir un párrafo en el margen
\DeclareDocumentCommand{\marginElement}{m}{%
    \marginpar{{%
      \pgfkeys{/yMarginDesign/alignment}%
        \pgfkeys{/yMarginDesign/size}%
        \color{\pgfkeysvalueof{/yMarginDesign/text color}}
        \setlist{
            noitemsep,
            left=0mm,
        }%
        #1\par\vspace*{\baselineskip}%
    }}\unskip%
}%

\newcounter{marginnote}

\DeclareDocumentCommand{\yTitle}{m}{%
    \begingroup%
        \large\scshape\selectfont\creato\bfseries\color{blue}%
        #1%
    \endgroup%
}

\DeclareDocumentCommand{\printchaptertableofcontents}{}{%
  \marginElement{%
    \vspace*{3mm}
    \begin{tikzpicture}[baseline,
      every node/.style={
        inner sep=1mm,
        text width=\marginparwidth,%\dimexpr\marginparwidth+1mm\relax, 
        align=left
      }]
      \node[fill=mainc!15,rounded corners=2pt,
        path picture={
          \path[fill=mainc]
            ([xshift=0pt,yshift=0pt]path picture bounding box.north west) --
            ([xshift=0pt,yshift=0pt]path picture bounding box.north east) --
            ([xshift=0mm,yshift=-3.5mm]path picture bounding box.north east)
              arc[start angle=180,end angle=270,radius=1mm] --
            ([xshift=0mm,yshift=-4.5mm]path picture bounding box.north west)
              arc[start angle=270,end angle=180,radius=1mm] --
            cycle;
        }
      ] (tocbox) {%
        \yTitle{\small\color{white}Contenido}\\[1mm]
        {\scriptsize\printcontents{c}{1}[1]{\hypersetup{linkcolor=black}}}%
      };
    \end{tikzpicture}%
  }%
}

\newcommand{\infoBulle}[1]{
    \marginElement{\justify
        {\color{mainc!90}\vrule width 3pt}\colorbox{white}{
            \parbox[c]{\dimexpr\linewidth-3pt-2\fboxsep-2\fboxrule}{\vspace{1mm}\textbf{\textcolor{mainc!90}{\fontfamily{lmr}\selectfont\large i}\qquad\superior\selectfont\small Nota}\\[1.5mm]
            \creato\fontsize{7}{7}\linespread{1.25}\selectfont#1
            }\,\,\,
        }
    }
}

\newcommand{\infohyBulle}[1]{
    \marginElement{\justify
        {\color{mainc!80}\vrule width 3pt}\colorbox{white}{
            \parbox[c]{\dimexpr\linewidth-3pt-2\fboxsep-2\fboxrule}{\vspace{1mm}\textbf{\textcolor{mainc!80}{\large i}\qquad\superior\selectfont\small Nota Histórica}\\[1.5mm]
            \creato\fontsize{6}{6}\linespread{1.25}\selectfont#1
        }\,\,\,}
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Flotantes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\fps@figure}{H}
\renewcommand{\fps@table}{H}

% \setlength{\intextsep}{3pt}

\DeclareCaptionLabelFormat{mysubf}{\ipn\selectfont\bfseries\color{mainc!95!black}#2)}

\DeclareCaptionFont{ipn}{\ipn\selectfont\bfseries\color{mainc!95!black}}
\DeclareCaptionJustification{justified}{\justifying}

\captionsetup{
    justification={justified},
    labelfont={ipn},
    font={footnotesize},
    singlelinecheck=false,
    labelsep={colon},
    strut=yes
}

\floatsetup[figure]{
    floatwidth=\textwidth,
    justification=justified,
}

\floatsetup[table]{
    floatwidth=\textwidth,
    justification=justified,
}

\captionsetup[subfloat]{
    labelformat={mysubf},
    labelsep={none},
    font={footnotesize}
}

\DeclareDocumentCommand{\sideTable}{o m}{%
    \marginpar{%
        \strictpagechecktrue%
        \checkoddpage%
        \ifoddpage%
            \footnotesize%
        \else%
            \RaggedLeft\footnotesize%
        \fi%
        \@afterindentfalse\@afterheading
        \vspace*{6mm} % Compensa el espacio de la tabla añadido por encima de la primera línea 
        #2
        \captionsetup*[table]{font={scripsize},hypcap=false}
        \IfValueT{#1}{\captionof{table}{#1}} % \justifying
    }
}

\DeclareDocumentCommand{\sideFigure}{o O{0mm} m}{%
    \marginElement{%
        \strictpagechecktrue
        \checkoddpage
        \ifoddpage%
            \RaggedRight%
        \else%
            \RaggedLeft%
        \fi%
        \@afterindentfalse\@afterheading%
        \vspace*{#2}%
        \centering
        #3%
        \captionsetup*[figure]{font={footnotesize},hypcap=false}%
        \IfValueT{#1}{\captionof{figure}{#1}}%
    }
}

\DeclareDocumentCommand{\sideFigureStar}{o O{0mm} m}{%
    \marginElement{%
        \strictpagechecktrue
        \checkoddpage
        \ifoddpage%
            \RaggedRight%
        \else%
            \RaggedLeft%
        \fi%
        \@afterindentfalse\@afterheading%
        \vspace*{#2}%
        \IfValueT{#1}{#1}
        #3%
    }%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Capítulos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\chapternn}[1]{\gdef\currentchapternn{#1}}
\chapternn{}

\titleformat{\chapter}[block]
{}%
{\begin{tikzpicture}[remember picture,overlay]
    % - Coordenadas
    \coordinate (A) at (current page.north west);%
    \coordinate[xshift=0.75cm] (B) at (current page.north west);%
    \coordinate[xshift=0.5cm,yshift=-10cm] (C) at (current page.north);%
    \coordinate[yshift=-10cm] (D) at (current page.north west);%
    \coordinate[xshift=4.75cm] (E) at (current page.north west);%
    \coordinate[xshift=8.75cm] (F) at (current page.north west);%
    \coordinate (G) at (current page.north);%
    \coordinate (J) at ($(C)+(-1cm,0)$);%
    \coordinate[xshift=-0.75cm] (K) at (current page.north east);%
    \coordinate[xshift=1.75cm] (L) at (current page.north);%
    \coordinate[xshift=5.75cm] (M) at (current page.north);%
    % - Polígonos
    \draw[mainc!0!white,name path=B--C] (B) -- (C);%
    \draw[mainc!0!white,name path=E--E'] (E) -- ($(E)+(0,-10cm)$);%
    \path [name intersections={of=B--C and E--E',by=H}];%
    \draw[mainc!0!white] (F) -- (H);%
    \draw[mainc!0!white,name path=G--G'] (G) -- ($(G)+(0,-10cm)$);%
    \path [name intersections={of=B--C and G--G',by=I}];%
    \draw[mainc!0!white,name path=J--K] (J) -- (K);%
    \draw[mainc!0!white,name path=M--M'] (M) -- ($(M)+(0,-10cm)$);%
    \path [name intersections={of=J--K and M--M',by=N}];%
    \draw[mainc!0!white,name path=L--J''] (L) -- ($(J)+(12.5cm,0)$);%
    \draw[mainc!0!white,name path=Z--Z'] (current page.north east) -- ($(current page.north east)+(0,-10cm)$);%
    \path [name intersections={of=L--J'' and Z--Z',by=O}];%
    \fill[mainc!15!white] (B) -- (H) -- (E) -- cycle;%
    \fill[mainc!30!white] (E) -- (H) -- (F) -- cycle;%
    \fill[mainc!40!white] (G) -- (F) -- (H) -- (I) -- cycle;%
    \fill[mainc!60!white] (G) -- (I) -- (N) -- (L) --  cycle;%
    \fill[mainc!25!white] (C) -- (I) -- (N) -- ($(M)+(0,-10cm)$) --  cycle;%
    \fill[mainc!20!white] ($(M)+(0,-10cm)$) -- (N) -- (O) -- ($(current page.north east)+(0,-10cm)$) --  cycle;%
    \fill[mainc!40!white] (O) -- (N) -- (M) -- (current page.north east) --  cycle;%
    \fill[mainc!50!white] ($(current page.north east)+(-3cm,0)$) -- (current page.north east) -- ($(current page.north east)+(0,-2cm)$) -- cycle;%
    \fill[mainc!80!white] (A) -- (B) -- (C) -- (D) -- cycle;%
    \fill[mainc!90!white] ($(A)+(-0.25cm,0)$) -- (J) -- (D) -- cycle;%
    \fill[mainc!40!white,opacity=0.2] ($(E)+(0,-10cm)$) -- (H) -- (I) -- (J) --  cycle;%
    \fill[mainc!25!white,opacity=0.5] (C) -- (I) -- (J) --  cycle;%
    % - Sombras
    \node[anchor=north west,right] (cap) at ($(H)+(-2.6cm,-0.55cm)$)
        {\creato\fontsize{27}{29}\selectfont\bfseries\color{black!90}\chaptertitlename};%
    \node[anchor=north] at ($(cap.south)+(0.5mm,-4.5mm)$)
        {\fontsize{135}{140}\selectfont\bfseries\color{black!90}\thechapter};%
    % - Letras
    \node[anchor=north west,right] (num) at ($(H)+(-2.65cm,-0.5cm)$)
        {\creato\fontsize{27}{29}\selectfont\bfseries\color{white}\chaptertitlename};%
    \node[anchor=north] at ($(num.south)+(0,-3.5mm)$)
        {\fontsize{135}{140}\selectfont\bfseries\color{white}\thechapter};%
\end{tikzpicture}
}
{0pt}
{%
    \blockmargin%
    \begin{adjustwidth}{0mm}{-\marginparwidth - \marginparsep}
        \begingroup
        \sloppy\FlushLeft
            \selectfont\superior
        \fontsize{50}{52}\selectfont\bfseries%
	\noHyphen%
}[% 
    \endgroup
    \end{adjustwidth}
    \unblockmargin%
]

% - Nombre de capítulo para capítulos no numerados
\titleformat{name=\chapter,numberless}[block]
{}%
{\begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at (current page.north west);
    \coordinate (B) at (current page.north east);
    \coordinate (C) at ($(B)+(0,-8cm)$);
    \coordinate (D) at ($(A)+(0,-8cm)$);
    \fill[mainc!30!white] (A) rectangle (C);
    \shade[left color=mainc!60,right color=mainc!20!white,shading angle=15] (A) rectangle ($(C)+(0,2.7)$);
    \fill[mainc!70!white] 
        (A) .. controls ($(A)+(3,-4cm)$) and ($(A)+(5,-5cm)$) .. ($(A)+(16,-5.3cm)$) -- ($(C)+(0,2.7cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!60!white] 
        ($(A)+(0,-1.5cm)$) .. controls ($(A)+(2,-5cm)$) and ($(A)+(8,-6cm)$) .. ($(A)+(15,-6cm)$) -- ($(C)+(0,2cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!90!white] 
        ($(A)+(0,-3.5cm)$) .. controls ($(A)+(5,-6.5cm)$) and ($(A)+(10,-5.5cm)$) .. ($(A)+(19,-5.5cm)$) -- ($(C)+(0,2.5cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!50!white]
        (D) .. controls ($(A)+(5,-6.5cm)$) and ($(A)+(10,-6cm)$) .. ($(A)+(19,-5.8cm)$) -- ($(C)+(0,2.3cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!80!white]
        ($(D)!0.4!(C)$) .. controls ($(D)!0.5!(C)+(3,1.7cm)$) and ($(D)!0.7!(C)+(1,1.8cm)$) .. ($(D)!0.9!(C)+(1,2.05cm)$) -- ($(C)+(0,2.1cm)$) -- (C) -- (D) -- cycle;
    % - Sombras
    \node[anchor=north west,right] at ($(D)+(2.3cm,1.5cm)$)
        {\cafe\fontsize{60}{62}\selectfont\bfseries\color{black!90}\currentchapternn};%
    % - Letras
    \node[anchor=north west,right] at ($(D)+(2.2cm,1.6cm)$)
        {\cafe\fontsize{60}{62}\selectfont\bfseries\color{white}\currentchapternn};%
\end{tikzpicture}
}
{0pt}% 
{% 
    \begin{adjustwidth}{0mm}{-\marginparwidth - \marginparsep}
    \begingroup\FlushLeft
            \selectfont\superior
        \color{white}\fontsize{1}{1}\selectfont\raggedright\bfseries%
		\noHyphen%
}[% 
	\endgroup
    \end{adjustwidth}
]

\titlespacing*
    {\chapter}
    {0pt}
    {0.27\textheight}
    {5ex}
    [0pt]

\titlespacing*
    {name=\chapter,numberless}
    {0pt}             % - Margen izquierdo
    {0.22\textheight} % - Espacio vertical antes
    {0ex}             % - Espacio después
    [0pt]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Secciones %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}
    {\Large\bfseries}
    {\color{mainc}\Large\thesection} % \hspace{\marginparsep}\makebox[-8mm][r]{} \fontencoding{T1}\fontfamily{phv}\selectfont
    {0.6\marginparsep}
    {\gravity\selectfont\raggedright}

\titleformat{\subsection}
    {\large\bfseries}
    {\color{mainc}\selectfont\thesubsection} % \hspace{\marginparsep}\makebox[-8mm][r]{}
    {0.6\marginparsep}
    {\gravity\selectfont\raggedright}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Listas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlist[enumerate]{font=\creato\color{mainc}}
\setlist[description]{font=\creato\color{mainc!80}}
\setlist[itemize]{label={\color{mainc!80}$\bullet$}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Tabla de Contenidos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\contentsmargin{0cm}
\setcounter{tocdepth}{1}

% - Estilo de texto de parte
\titlecontents{part}[0cm]
    {\addvspace{20pt}\centering\large\bfseries\color{white}}
    {}
    {}
    {}

\titlecontents{lchapter}[1.4cm]                           % - Sangría
    {\addvspace{5pt}\large\bfseries}                      % - Opciones de espaciado y fuente para los capítulos
    {\contentslabel[\Large\thecontentslabel]{1cm}}        % - Número de capítulo
    {}
    {\normalsize\;\titlerule*[.6pc]{.}\;\thecontentspage} % - Número de página

\titlecontents{chapter}[9.3pc]
    {\addvspace{6pt}\bfseries}
    {
        \begin{tikzpicture}[remember picture, overlay]%
            \draw[fill=mainc!70, draw=mainc!70,rounded corners] (-4,-.2) rectangle (-0.5,.5);%
            \node at (-2.25,0.15) {
               \color{white}\Large\scshape\bfseries{\gravity\selectfont\chaptertitlename}~{\thecontentslabel}
            };%
        \end{tikzpicture}
        \gravity\selectfont\color{mainc!70}\large\scshape\bfseries
    }
    {}%
    {
        \color{mainc!70}\;\titlerule\;\creato\selectfont\large\scshape\bfseries \thecontentspage\hspace*{-3.5pt}\vspace*{7pt}
    }% \begin{tikzpicture}[remember picture, overlay]
    %     \draw[fill=mainc!70,draw=mainc!70] (3pt,0.2pt) rectangle (6,0.2pt);
    % \end{tikzpicture}

\titlecontents{chapter*}[0pc]
    {\addvspace{-8pt}\gravity\selectfont\large\bfseries\color{mainc!80}}
    {}%
    {}%
    {\TrajanProB\selectfont\;{\color{black}\titlerule*[.4pc]{.}}\;\MakeLowercase{\normalsize\thecontentspage}}

\newcommand\originalappendix{}
\let\originalappendix\appendix
\renewcommand\appendix{\originalappendix\addtocontents{toc}{\protect\appendixintoc}}
\newcommand\appendixintoc{\def\chaptertitlename{\appendixname}}

\titlecontents{section}[7pc]
    {\superior\selectfont\addvspace{-8pt}} % - Opciones de espaciado y fuente para las secciones
    {\contentslabel[\fontencoding{T1}\fontfamily{phv}\selectfont\thecontentslabel]{1cm}} % - Número de sección % 
    {}
    {\normalsize\fontencoding{T1}\fontfamily{phv}\selectfont\;{\TrajanProB\selectfont\titlerule*[.4pc]{.}}\;\thecontentspage} % - Número de página % 
    []

\renewcommand{\tableofcontents}{%
\chapter*{%
    \vspace*{-20\p@}%
    \begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at (current page.north west);
    \coordinate (B) at (current page.north east);
    \coordinate (C) at ($(B)+(0,-8cm)$);
    \coordinate (D) at ($(A)+(0,-8cm)$);
    \fill[mainc!30!white] (A) rectangle (C);
    \shade[left color=mainc!60,right color=mainc!20,shading angle=15] (A) rectangle (C);
    \fill[mainc!70!white] 
        (A) .. controls ($(A)+(3,-4cm)$) and ($(A)+(5,-5cm)$) .. ($(A)+(16,-5.3cm)$) -- ($(C)+(0,2.7cm)$) -- (C) -- (D) -- cycle;
    % \fill[mainc!95!white] ($(A)+(5mm,0)$) .. controls ($(A)+(2.5,-4.5cm)$) and ($(A)+(5.5,-5.5cm)$) .. ($(A)+(10.5cm,-4.3cm)$) .. controls ($(A)+(17.5,-2.5cm)$) and ($(A)+(22,-4.5cm)$) .. ($(C)+(0,3.5cm)$) -- (C) -- (D) -- (A) -- cycle;
    % \fill[mainc!80!white] (A) .. controls ($(A)+(2,-5cm)$) and ($(A)+(5,-6cm)$) .. ($(A)+(10,-5cm)$) .. controls ($(A)+(17,-3cm)$) and ($(A)+(22,-5cm)$) .. ($(C)+(0,3cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!60!white] 
        ($(A)+(0,-1.5cm)$) .. controls ($(A)+(2,-5cm)$) and ($(A)+(8,-6cm)$) .. ($(A)+(15,-6cm)$) -- ($(C)+(0,2cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!90!white] 
        ($(A)+(0,-3.5cm)$) .. controls ($(A)+(5,-6.5cm)$) and ($(A)+(10,-5.5cm)$) .. ($(A)+(19,-5.5cm)$) -- ($(C)+(0,2.5cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!50!white]
        (D) .. controls ($(A)+(5,-6.5cm)$) and ($(A)+(10,-6cm)$) .. ($(A)+(19,-5.8cm)$) -- ($(C)+(0,2.3cm)$) -- (C) -- (D) -- cycle;
    \fill[mainc!80!white]
        ($(D)!0.4!(C)$) .. controls ($(D)!0.5!(C)+(3,1.7cm)$) and ($(D)!0.7!(C)+(1,1.8cm)$) .. ($(D)!0.9!(C)+(1,2.05cm)$) -- ($(C)+(0,2.1cm)$) -- (C) -- (D) -- cycle;
    % - Sombras
    \node[anchor=north west,right] at ($(D)+(2.3cm,1.7cm)$)
        {\cafe\fontsize{60}{62}\selectfont\bfseries\color{black!90}\currentchapternn};%
    % - Letras
    \node[anchor=north west,right] at ($(D)+(2.2cm,1.8cm)$)
        {\cafe\fontsize{60}{62}\selectfont\bfseries\color{white}\currentchapternn};%
\end{tikzpicture}
}%
\@starttoc{toc}}

\titlecontents{csection}[1.4pc]%
    {\creato\selectfont\addvspace{1pt}}%
    {\contentslabel[\color{mainc}\bfseries\thecontentslabel]{6mm}{\gravity\selectfont\noHyphen}}% \fontencoding{T1}\fontfamily{phv}\selectfont
    {\hspace*{-8mm}\noHyphen}% 
    {\;\titlerule*[0.4pc]{.}\;{\creato\selectfont\color{mainc}\bfseries\thecontentspage}}% \fontencoding{T1}\fontfamily{phv}\selectfont

% - Parte numerada en la tabla de contenido
\newcommand{\@mypartnumtocformat}[2]{%
\setlength\fboxsep{0pt}%
\noindent\colorbox{mainc!20}{\strut\parbox[c][.8cm]{\ecart}{\color{mainc!70}\Large\bfseries\centering#1}}\hskip\esp\colorbox{mainc!90}{\strut\parbox[c][.8cm]{\linewidth-\ecart-\esp}{\Large\centering\vphantom{é}\smash{#2}}}}% \selectfont\Lato
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% - Parte no numerada en la tabla de contenido
\newcommand{\@myparttocformat}[1]{%
\setlength\fboxsep{0pt}%
\noindent\colorbox{mainc!40}{\strut\parbox[c][.8cm]{\linewidth}{\Large\centering#1}}}% \fontencoding{T1}\fontfamily{phv}\selectfont
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength\esp
\setlength\esp{8pt}
\newlength\ecart
\setlength\ecart{1.2cm-\esp}
\newcommand{\thepartimage}{}%
\newcommand{\partimage}[1]{\renewcommand{\thepartimage}{#1}}%
\def\@part[#1]#2{%
\ifnum \c@secnumdepth >-2\relax%
\refstepcounter{part}%
\addcontentsline{toc}{part}{\texorpdfstring{\protect\@mypartnumtocformat{\thepart}{#1}}{\partname~\thepart\ ---\ #1}}
\else%
\addcontentsline{toc}{part}{\texorpdfstring{\protect\@myparttocformat{#1}}{#1}}%
\fi%
\startcontents%
\markboth{}{}%
\let\c@oldpage\relax
\newcounter{oldpage}
\setcounter{oldpage}{\value{page}} 
\pagenumbering{gobble}
{\thispagestyle{empty}%
\begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.north)!0.2!(current page.north west)$);
    \coordinate (A') at (current page.south east);
    \coordinate (B) at ($(current page.south west)!0.325!(current page.west)$);
    \coordinate (B') at ($(current page.east)!0.2!(current page.south east)$);
    \coordinate (D) at ($(current page.north west)!0.25!(current page.west)$);
    \coordinate (D') at ($(current page.north east)!0.25!(current page.east)$);
    \coordinate (F) at ($(current page.north)!0.5!(current page.north east)$);

    \begin{scope}[opacity=0]
        \draw[red,name path=A--A'] (A) -- (A');
        \draw[red,name path=B--B'] (B) -- (B');
        \draw[red,name path=D--D'] (D) -- (D');

        \path[name intersections={of=A--A' and B--B',by=C}];%
        \path[name intersections={of=A--A' and D--D',by=E}];%
    \end{scope}
    
    \fill[mainc!40] (A) -- (C) -- (B) -- (current page.south west) -- (A') -- (current page.north east);
    
    \shade[top color=mainc!35,bottom color=mainc!70] (current page.north west) -- (A) -- (C) -- (B) -- cycle;
    
    \shade[top color=mainc!40,bottom color=mainc!70,opacity=0.25] ($(current page.south west)!0.2!(current page.west)$) -- ++(\paperwidth,0.1\paperheight) -- (B') -- (B);

    \fill[mainc!50] ($(current page.south west)+(-0.8,0)$) -- (B') -- ($(B')+(0.3,0)$) -- ($(current page.south west)+(0.4,0)$) -- cycle;
    
    \fill[mainc!60,opacity=0.5] (F) -- (E) -- (A') -- (current page.north east);
    
    \shade[top color=mainc!90, bottom color=mainc!60,opacity=0.3] (C) -- ++(0,-9) -- ($(B')+(0,0.8)$) -- ($(A)+(4.3,0)$) -- (A) -- cycle;
    
    \fill[mainc!70] (E) -- ++(3.5,0) -- (C);
    
    \fill[mainc] ($(A)+(0.3,0)$) -- ($(A')+(0.2,0)$) -- (A') -- (A) -- cycle;
    
    \fill[mainc] (B) -- (B') -- ($(B')+(0,0.15)$) -- ($(B)+(0,0.25)$) -- cycle;
    % Sombras
    \node[right,inner sep=0pt] (numpart) at ($(current page.west)+(2.1,7.9)$) {\color{black!95}\scalebox{19}{\TrajanProB\selectfont\bfseries\@Roman\c@part}};
    \node[right] (nompart) at ($(current page.west)+(2.075,0.675)$) {\parbox[t][][t]{16cm}{\strut\raggedright\renewcommand\baselinestretch{1.2}\TrajanProB\selectfont\color{black!95}\fontsize{55}{55}\bfseries#2}};
    % Letras
    \node[anchor=north west,inner sep=0pt] at ($(numpart.north west)+(-0.1,0.1)$) {\color{white}\scalebox{19}{\TrajanProB\selectfont\bfseries\@Roman\c@part}};
    \node[anchor=north west] at ($(nompart.north west)+(-0.075,0.075)$) {\parbox[t][][t]{16cm}{\strut\raggedright\renewcommand\baselinestretch{1.2}\TrajanProB\selectfont\color{white}\fontsize{55}{55}\bfseries#2}};
\end{tikzpicture}}
\clearpage
\pagenumbering{arabic}
\setcounter{page}{\numexpr\value{oldpage}-1}
\@endpart}
\def\@spart#1{%
\startcontents%
\phantomsection
\let\c@oldpage\relax
\newcounter{oldpage}
\setcounter{oldpage}{\value{page}}%
\pagenumbering{gobble}
{\thispagestyle{empty}%
\begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.north)!0.2!(current page.north west)$);
    \coordinate (A') at (current page.south east);
    \coordinate (B) at ($(current page.south west)!0.325!(current page.west)$);
    \coordinate (B') at ($(current page.east)!0.2!(current page.south east)$);
    \coordinate (D) at ($(current page.north west)!0.25!(current page.west)$);
    \coordinate (D') at ($(current page.north east)!0.25!(current page.east)$);
    \coordinate (F) at ($(current page.north)!0.5!(current page.north east)$);

    \begin{scope}[opacity=0]
        \draw[red,name path=A--A'] (A) -- (A');
        \draw[red,name path=B--B'] (B) -- (B');
        \draw[red,name path=D--D'] (D) -- (D');

        \path[name intersections={of=A--A' and B--B',by=C}];%
        \path[name intersections={of=A--A' and D--D',by=E}];%
    \end{scope}
    
    \fill[mainc!40] (A) -- (C) -- (B) -- (current page.south west) -- (A') -- (current page.north east);
    
    \shade[top color=mainc!35,bottom color=mainc!70] (current page.north west) -- (A) -- (C) -- (B) -- cycle;
    
    \shade[top color=mainc!40,bottom color=mainc!70,opacity=0.25] ($(current page.south west)!0.2!(current page.west)$) -- ++(\paperwidth,0.1\paperheight) -- (B') -- (B);

    \fill[mainc!50] ($(current page.south west)+(-0.8,0)$) -- (B') -- ($(B')+(0.3,0)$) -- ($(current page.south west)+(0.4,0)$) -- cycle;
    
    \fill[mainc!60,opacity=0.5] (F) -- (E) -- (A') -- (current page.north east);
    
    \shade[top color=mainc!90, bottom color=mainc!60,opacity=0.3] (C) -- ++(0,-9) -- ($(B')+(0,0.8)$) -- ($(A)+(4.3,0)$) -- (A) -- cycle;
    
    \fill[mainc!70] (E) -- ++(3.5,0) -- (C);
    
    \fill[mainc] ($(A)+(0.3,0)$) -- ($(A')+(0.2,0)$) -- (A') -- (A) -- cycle;
    
    \fill[mainc] (B) -- (B') -- ($(B')+(0,0.15)$) -- ($(B)+(0,0.25)$) -- cycle;
    % Sombras
    \node[right] (partnn) at ($(current page.west)+(2.075,0.675)$) {\parbox[t][][t]{15cm}{\strut\raggedright\color{black!95}\fontsize{60}{60}\TrajanProB\selectfont\bfseries#1}};
    % Letras
    \node[anchor=north west] at ($(partnn.north west)+(-0.075,0.075)$) {\parbox[t][][t]{15cm}{\strut\raggedright\color{white}\fontsize{60}{60}\TrajanProB\selectfont\bfseries#1}};
\end{tikzpicture}
\clearpage             % - Separa la portada de la reactivación de la numeración
\pagenumbering{arabic} % - Restaura la numeración en arábigo
\setcounter{page}{\numexpr\value{oldpage}-1}
}
\addcontentsline{toc}{part}{\texorpdfstring{%
\setlength\fboxsep{0pt}%
% - Apéndice
\noindent\protect\colorbox{mainc!70}{\strut\protect\parbox[c][.8cm]{\linewidth}{\Large\protect\centering\vphantom{é}\smash{#1} \quad\mbox{}}}}{#1}}% \selectfont\Lato
\@endpart}
\def\@endpart{\vfil\newpage
\if@twoside
\if@openright
\null
\thispagestyle{empty}%
\begin{tikzpicture}[remember picture,overlay,opacity=0.75]
    \coordinate (A) at ($(current page.north)!0.2!(current page.north east)$);
    \coordinate (A') at (current page.south west);
    \coordinate (B) at ($(current page.south east)!0.325!(current page.east)$);
    \coordinate (B') at ($(current page.west)!0.2!(current page.south west)$);
    \coordinate (D) at ($(current page.north east)!0.25!(current page.east)$);
    \coordinate (D') at ($(current page.north west)!0.25!(current page.west)$);
    \coordinate (F) at ($(current page.north)!0.5!(current page.north west)$);

    \begin{scope}[opacity=0]
        \draw[red,name path=A--A'] (A) -- (A');
        \draw[red,name path=B--B'] (B) -- (B');
        \draw[red,name path=D--D'] (D) -- (D');

        \path[name intersections={of=A--A' and B--B',by=C}];%
        \path[name intersections={of=A--A' and D--D',by=E}];%
    \end{scope}

    \fill[mainc!40] (A) -- (C) -- (B) -- (current page.south east) -- (A') -- (current page.north west);
    
    \shade[top color=mainc!35,bottom color=mainc!70] (current page.north east) -- (A) -- (C) -- (B) -- cycle;
    
    \shade[top color=mainc!40,bottom color=mainc!70,opacity=0.25] ($(current page.south east)!0.2!(current page.east)$) -- ++(-\paperwidth,0.1\paperheight) -- (B') -- (B);

    \fill[mainc!50] ($(current page.south east)+(0.8,0)$) -- (B') -- ($(B')+(-0.3,0)$) -- ($(current page.south east)+(-0.4,0)$) -- cycle;
    
    \fill[mainc!60,opacity=0.5] (F) -- (E) -- (A') -- (current page.north west);
    
    \shade[top color=mainc!90, bottom color=mainc!60,opacity=0.3] (C) -- ++(0,-9) -- ($(B')+(0,0.8)$) -- ($(A)+(-4.3,0)$) -- (A) -- cycle;
    
    \fill[mainc!70] (E) -- ++(-3.5,0) -- (C);
    
    \fill[mainc] ($(A)+(-0.3,0)$) -- ($(A')+(-0.2,0)$) -- (A') -- (A) -- cycle;
    
    \fill[mainc] (B) -- (B') -- ($(B')+(0,0.15)$) -- ($(B)+(0,0.25)$) -- cycle;
\end{tikzpicture}
\newpage
\fi
\fi
\if@tempswa
\twocolumn
\fi}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matemáticas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Teoremas
\newtcbtheorem[number within=section]{theorem}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline north={1.5pt}{0pt}{darkc},
    borderline south={1.5pt}{0pt}{darkc},
    % Sombra
    % drop shadow={shadow xshift=0mm,shadow yshift=-0.8mm,opacity=0.25},
    % Colores
    colback=white,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=-0.7mm,
    right=-0.7mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Teorema~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{thm}

% Corolarios
\newtcbtheorem[number within=section]{corollary}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline north={1.5pt}{0pt}{mainc1},
    borderline east={1.5pt}{0pt}{mainc1},
    borderline south={1.5pt}{0pt}{mainc1},
    % Sombra
    drop shadow={shadow xshift=-0.7mm,shadow yshift=-0.7mm,opacity=0.25},
    % Colores
    colback=white,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=-0.7mm,
    right=1mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Corolario~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{cor}

% Definiciones
\newtcbtheorem[number within=section]{definition}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline east={1.5pt}{0pt}{darkc},
    borderline south={1.5pt}{0pt}{darkc},
    % Sombra
    drop shadow={shadow xshift=0.8mm,shadow yshift=-0.7mm,opacity=0.25},
    % Colores
    colback=darkc!10!white,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=1mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Definición~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{def}

% Lemas
\newtcbtheorem[number within=section]{lemma}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline north={1.5pt}{0pt}{mainc1},
    borderline south={1.5pt}{0pt}{mainc1},
    % Sombra
    drop shadow={shadow xshift=0.8mm,shadow yshift=-0.7mm,opacity=0.25},
    % Colores
    colback=mainc!15,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=1mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Lema~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{lemma}

% Observaciones
\newtcbtheorem[number within=section]{observation}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    % Sombra
    drop shadow={shadow xshift=0.8mm,shadow yshift=-0.7mm,opacity=0.25},
    borderline west={1.5pt}{0pt}{mainc1},
    % Colores
    colback=mainc!15,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=1mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Observación~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{obs}

% Proposiciones
\newtcbtheorem[number within=section]{proposition}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline west={1.5pt}{0pt}{darkc},
    borderline north={1.5pt}{0pt}{darkc},
    % Colores
    colback=white,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=-0.7mm,
    top=0mm,
    bottom=-0.7mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Proposición~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{prop}

% Ejemplos
\newtcbtheorem[number within=section]{example}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline west={1.5pt}{0pt}{darkc},
    % Colores
    colback=white,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=1mm,
    top=-0.8mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Ejemplo~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
    % Superposición
    overlay={
      \draw[darkc,line width=1.5pt] (frame.south west) -- ($(frame.south west)+(0.3\textwidth,0)$);
      % \fill[mainc] (frame.north west) rectangle ($(frame.north west)+(2.9,-0.51)$);
    },
}{example}

% Notas
\newtcbtheorem[number within=section]{note}{}{
    % Estilo del teorema
    theorem style=change break,
    enhanced,
    breakable,
    % Bordes
    boxrule=0pt,
    frame hidden,
    borderline west={1.5pt}{0pt}{mainc1},
    borderline north={1.5pt}{0pt}{mainc1},
    borderline east={1.5pt}{0pt}{mainc1},
    borderline south={1.5pt}{0pt}{mainc1},
    % Sombra
    drop shadow={shadow xshift=0.8mm,shadow yshift=-0.7mm,opacity=0.25},
    % Colores
    colback=mainc!15,
    coltitle=mainc,
    attach title to upper={},
    % Márgenes
    left=1mm,
    right=1mm,
    top=0mm,
    bottom=1mm,
    % Esquinas
    sharp corners,
    % Título
    before title={Nota~},
    after title={~},
    fonttitle=\par\noindent\creato\bfseries\large,
    % Texto
    fontupper=\normalsize\setlength{\parindent}{1em},
}{note}

\DeclareSymbolFontAlphabet{\mathbbm}{AMSb}
\DeclareSymbolFontAlphabet{\mathbb}{bbold}%

% - OPERADORES

% - Conjuntos de números
\newcommand{\RR}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{R}}{\mathbbm{R}^{#1}}}}
\newcommand{\NN}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{N}}{\mathbbm{N}^{#1}}}}
\newcommand{\ZZ}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{Z}}{\mathbbm{Z}^{#1}}}}
\newcommand{\QQ}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{Q}}{\mathbbm{Q}^{#1}}}}
\newcommand{\CC}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{C}}{\mathbbm{C}^{#1}}}}
\newcommand{\PP}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{P}}{\mathbbm{P}^{#1}}}}
\newcommand{\HH}[1][]{\ensuremath{\ifstrempty{#1}{\mathbbm{H}}{\mathbbm{H}^{#1}}}}
% - Valor esperado
\newcommand{\EE}{\ensuremath{\mathbbm{E}}}

\newenvironment{solucion}{\par\noindent\textcolor{mainc}{\Lato\selectfont\bfseries\itshape Solución.}}{\hfill\textcolor{mainc}{$\square$}}

\newcommand{\sol}{\par\noindent\textcolor{mainc}{\Lato\selectfont\bfseries\itshape Solución.~}}
\newcommand{\Square}{\textcolor{mainc}{\ensuremath{\square}}}

\newenvironment{demo}{\par\noindent\textcolor{mainc}{\Lato\selectfont\bfseries\itshape Demostración.}}{\hfill\textcolor{mainc}{$\blacksquare$}}

\newcommand{\dem}{\par\noindent\textcolor{mainc}{\Lato\selectfont\bfseries\itshape Demostración.~}}
\newcommand{\BlackSquare}{\textcolor{mainc}{\ensuremath{\blacksquare}}}

\renewcommand{\tagform@}[1]{
    \text{{\fontencoding{T1}\fontfamily{phv}\selectfont\color{mainc!80!white}(\ignorespaces#1\unskip)}}
}

\renewcommand{\eqref}[1]{\text{{\fontencoding{T1}\fontfamily{phv}\selectfont(\ref{#1})}}}

% Estilo base
\newcommand{\refstyle}[1]{\text{\textbf{#1}}}

% Referencias
\ExplSyntaxOn

\cs_new:Npn \ref_env_link:nn #1#2 {
  \refstyle{\hyperref[#1:#2]{\ref*{#1:#2}}}
}

\cs_new_protected:Npn \ref_env_list:nnnn #1#2#3#4
  {
    \seq_set_split:Nnn \l_tmpa_seq { , } { #4 }
    \int_compare:nNnTF { \seq_count:N \l_tmpa_seq } = { 1 }
      {
        % Caso: sólo una referencia
        #2~\ref_env_link:nn {#1} { \seq_item:Nn \l_tmpa_seq {1} }
      }
      {
        \int_compare:nNnTF { \seq_count:N \l_tmpa_seq } = { 2 }
          {
            % Caso: exactamente dos referencias (con espacio bien puesto)
            #3~
            \ref_env_link:nn {#1} { \seq_item:Nn \l_tmpa_seq {1} }~y~%
            \ref_env_link:nn {#1} { \seq_item:Nn \l_tmpa_seq {2} }
          }
          {
            % Caso: tres o más referencias
            #3~
            \seq_pop_right:NN \l_tmpa_seq \l_tmpb_tl
            \seq_map_inline:Nn \l_tmpa_seq
              {
                \ref_env_link:nn {#1} {##1},\,
              }
            y~\ref_env_link:nn {#1} { \l_tmpb_tl }
          }
      }
  }

% Comandos públicos
\NewDocumentCommand{\refthm}{m}{\ref_env_list:nnnn {thm} {Teorema} {Teoremas} {#1}}
\NewDocumentCommand{\refcor}{m}{\ref_env_list:nnnn {cor} {Corolario} {Corolarios} {#1}}
\NewDocumentCommand{\refdef}{m}{\ref_env_list:nnnn {def} {Definición} {Definiciones} {#1}}
\NewDocumentCommand{\reflemma}{m}{\ref_env_list:nnnn {lemma} {Lema} {Lemas} {#1}}
\NewDocumentCommand{\refobs}{m}{\ref_env_list:nnnn {obs} {Observación} {Observaciones} {#1}}
\NewDocumentCommand{\refprop}{m}{\ref_env_list:nnnn {prop} {Proposición} {Proposiciones} {#1}}
\NewDocumentCommand{\refexample}{m}{\ref_env_list:nnnn {example} {Ejemplo} {Ejemplos} {#1}}
\NewDocumentCommand{\refnote}{m}{\ref_env_list:nnnn {note} {Nota} {Notas} {#1}}

\ExplSyntaxOff

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Semblanza Histórica %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xparse}
\RequirePackage{expl3}
\RequirePackage{xstring}

\NewDocumentEnvironment{semblanza}{m m O{}}{% #1 = nombre, #2 = años, #3 = imagen (opcional)
    \clearpage
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture, overlay]
        \coordinate (A) at (current page.north west);
        \coordinate (B) at (current page.north east);
        \coordinate (C) at ($(B)+(0,-0.25\paperheight)$);
        \coordinate (D) at ($(A)+(0,-0.25\paperheight)$);
        \shade[top color=mainc!10!white,bottom color=mainc!25!white] (D) rectangle (current page.south east);
        \fill[mainc!60!white] (A) rectangle (C);
        \fill[mainc!90!white]
            (A) -- ($(A)+(0.25\paperwidth,0)$) .. controls ($(D)!0.7!(C)$) and ($(D)!0.9!(C)$) .. ($(C)+(0,0.15\paperheight)$) -- (C) -- (D) -- cycle;
        \fill[mainc!60!black] (A) rectangle ($(D)+(0.25\paperwidth,0)$);
        \node[anchor=north west,right] at ($(A)+(0.05\paperwidth,-0.162\paperheight)$)
            {\includegraphics[width=0.16\paperwidth]{images/semblanza/pluma.pdf}};
        \node[anchor=north west,right] at ($(A)+(0.262\paperwidth,-0.202\paperheight)$)
            {\superior\fontsize{25}{27}\selectfont\bfseries\color{black!90}Semblanza de...};
        \node[anchor=north west,right] at ($(A)+(0.26\paperwidth,-0.2\paperheight)$)
            {\superior\fontsize{25}{27}\selectfont\bfseries\color{white}Semblanza de...};
        \IfStrEq{#3}{}{}{%
            \node[anchor=north west,right] (image) at ($(A)+(0.68\paperwidth,-0.115\paperheight)$){\includegraphics[width=0.2\paperwidth]{images/semblanza/#3}};
            \node[anchor=north] at ($(image.south)+(0,-1mm)$){\superior\selectfont\small\bfseries\color{white}#1};
        }
    \end{tikzpicture}
    \vspace*{55mm}
    \begin{fullwidth}[      width=\dimexpr\textwidth+\marginparsep+\marginparwidth\relax,%
                      outermargin=\dimexpr-\marginparsep-\marginparwidth\relax]%
        {\superior\fontsize{15}{17}\selectfont\par\noindent\bfseries\color{mainc}#1}~~{\roboto\fontsize{15}{17}\selectfont\bfseries\color{mainc}(#2)}
        \begin{multicols}{2}
            \setlength{\columnsep}{1cm}
            \ignorespaces
}{%
        \end{multicols}
    \end{fullwidth}
    \clearpage
    \thispagestyle{fancy}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Resumen %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Problemas %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\problemstitle}{%
    \begin{fullwidth}[      width=\dimexpr\textwidth+\marginparsep+\marginparwidth\relax,%
                      outermargin=\dimexpr-\marginparsep-\marginparwidth\relax]%
        \begin{tikzpicture}[remember picture,overlay]
            \fill[mainc!80!white] (0,1.7) -- (4.25,1.7) -- (4.75,0.7) -- (0,0.7) -- cycle;
            \fill[mainc!95!black] (0,0.7) rectangle (\linewidth,0.775);
            \fill[mainc!70!black] (0,0.7) rectangle (0.2,1.7);
            \node[anchor=west,right,font=\bfseries\Large,text=white] at (0.25,1.2) {{\gravity\selectfont Problemas}~\thesection};
        \end{tikzpicture}
    \end{fullwidth}
}

\newcommand{\problemsend}{%
    \begin{fullwidth}[      width=\dimexpr\textwidth+\marginparsep+\marginparwidth\relax,%
                      outermargin=\dimexpr-\marginparsep-\marginparwidth\relax]%
        \begin{tikzpicture}[remember picture,overlay]
            \fill[mainc!95!black] (0,3mm) rectangle (\linewidth,3.75mm);
        \end{tikzpicture}
    \end{fullwidth}
}

\newenvironment{problemas}{%
    % \phantomsection
    % \pagestyle{fancy}
    \vspace*{2cm}
    \problemstitle
    \vspace*{-7mm}
}{%
    \problemsend
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Dedicatoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{dedication}{%
    \clearpage
    \pagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \coordinate (A) at (current page.north west);
        \coordinate (B) at ($(current page.north east)+(0,-6)$);

        \begin{scope}[opacity=0]
            \draw[blue,name path=A--A'] (A) -- ($(A)+(6,-6)$);
            \draw[red,name path=B--B'] ($(A)-(0,5.2)$) -- ($(B)+(0,0.8)$);

            \path[name intersections={of=A--A' and B--B',by=C}];%
        \end{scope}
        
        \shade[right color=mainc!60,left color=mainc!30] (A) rectangle (B);
        
        \fill[mainc!90] (A) -- ++(0,-6) -- ++(6,0) -- cycle;
        
        \shade[right color=mainc!80,left color=mainc!50] ($(A)+(0,-5.2)$) rectangle (B);
        
        \node[anchor=south east] (shadow) at ($(B)+(-2.1,0.675)$)
            {\cafe\fontsize{55}{57}\selectfont\bfseries\color{black!95}DEDICATORIA};
        \node[anchor=north west] at ($(shadow.north west)+(-0.1,0.1)$)
            {\cafe\fontsize{55}{57}\selectfont\bfseries\color{white}DEDICATORIA};
    \end{tikzpicture}
    \vspace*{0.23\textheight}
    \begin{fullwidth}[width=\dimexpr\textwidth+\marginparsep+25mm\relax]%
        \FlushRight
}{%
    \end{fullwidth}
    \clearpage
    \pagestyle{fancy}
}

\newcommand{\LaTeXNew}{{\tnr\selectfont\LaTeX}}