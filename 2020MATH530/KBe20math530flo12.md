<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta name="generator" content="pandoc" />
                        <title>KBDefaultTemplate</title>
        <style type="text/css">code{white-space: pre;}</style>
                                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <style>
html {
    min-height: 100%;
    min-width: 100%;
    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
    font-weight: 300;
    background-color: #fafafa;
}

    #center-viewport {
        margin: 0 auto;
        padding-left: 20px;
        padding-right: 20px;
        max-width: 1200px;
        padding-bottom: 20px;
    }

    img {
        max-height: 40vh;
        width: auto;
        max-width: 100%;
    }

    a {
        font-size: 8px; color: darkgreen
    }

    h1, h2, h3 {
        margin: 0;
    }

    p {
        margin: 0;
        margin-bottom: 10px;
        margin-top: 5px;
    }

    h1 {
        margin-top: 20px;
        display: inline-block;
        /* border-bottom: 2px rgba(191, 60, 60, 0.4) solid; */
    }

    h2 {
        margin-top: 10px;
    }

    h3 {
        margin-top: 20px;
    }

    body {
        margin: 0;
    }

        </style>
    </head>
    <body>
        <div style="position: sticky; position: -webkit-sticky; top: 0; height: 30px; width: 100%; background-color: #BF3C3C; margin-bottom: 20px;z-index: 10000; color: white;   display: flex; flex-direction: column; justify-content: center;">
            <div><span style='cursor: pointer; font-family: "Courier New", Courier, monospace; font-weight: 700; margin-left: 20px' onclick="window.location.href='https://taproot.shabang.cf/'">Taproot</span><span style='cursor: default; font-family: "Courier New", Courier, monospace; font-weight: 300 !important; margin-right: 20px; float:right'><strong></strong></span></div>
        </div>
        <div id="center-viewport">
            <hr />
        </div>

        <script>
            $(document).ready(function() {
                // Generate clickable links
                let content = $("#center-viewport").html().replace(/<span>\[<\/span><span>\[<\/span>\w*?<span>]<\/span><span>]/gi, function(x) {
                    <!--let docPointer = x.match(/(\w)*/);-->
                        <!--let docPointer = x.match(/KB\w*/);-->
                    docPointer = [ x.replace(/\<\/?[a-z]+\>/g, '').slice(2, -2) ]

                    if (docPointer) {
                        let url = `https://taproot.shabang.cf/relay?request=${docPointer[0]}`;
                        return `<a href="${url}"><span>[[</span><span>${docPointer[0]}</span><span>]]</span></a>`;
                    } else {
                        console.log(`Cannot parse , returning...`);
                        return x;
                    }
                })
                $("#center-viewport").html(content);
                $("img").each(function() {  
                    let src = this.src.replace(/.*?\/Users\/houliu\/Documents\/School%20Work\/2020-2021\/KnowledgeBase\//gi, "https://taproot.shabang.cf/");
                    console.log(src);
                    $(this).attr("src", src);
                });
            });
        </script>
    </body>
</html>
---
title:   
context: 
author:  
source:  #index
---

---
\documentclass[
]{article}

\setlength\parindent{0pt}

\usepackage{amsmath}
\usepackage{amssymb}

\usepackage[normalem]{ulem}

\usepackage{cancel}

\usepackage{ifthen}
\usepackage{trimspaces}

\usepackage{graphicx}
\usepackage{xesearch}
\usepackage[dvipsnames]{xcolor}

\usepackage{enumitem}
\setlistdepth{9}

\setlist[itemize,1]{label=\textbullet}
\setlist[itemize,2]{label=\textbullet}
\setlist[itemize,3]{label=\textbullet}
\setlist[itemize,4]{label=\textbullet}
\setlist[itemize,5]{label=\textbullet}
\setlist[itemize,6]{label=\textbullet}
\setlist[itemize,7]{label=\textbullet}
\setlist[itemize,8]{label=\textbullet}
\setlist[itemize,9]{label=\textbullet}

\renewlist{itemize}{itemize}{9}

\makeatletter
\def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth\else\Gin@nat@width\fi}
\def\maxheight{\ifdim\Gin@nat@height>\textheight\textheight\else\Gin@nat@height\fi}
\makeatother


\UndoBoundary{[, ], \_}
\SearchList{startbrac}{}{*[?}
\SearchList{endbrac}{}{*]?}
\SearchList{kbtag}{\color{ForestGreen}{\href{http://taproot.shabang.cf/relay?request=#1}{\tiny\textulf{[[}\textbf{#1}\textulf{]]}}}\color{black}}{*KB?}



% Scale images if necessary, so that they will not overflow the page
% margins by default, and it is still possible to overwrite the defaults
% using explicit options in \includegraphics[width, height, ...]{}
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}
% Set default figure placement to htbp
\makeatletter
\def\fps@figure{htbp}
\makeatother

\graphicspath{ {./} }

\usepackage{titlesec}
\usepackage{titling}
\usepackage{makecell}
\usepackage{bookmark}

\usepackage{float}
\let\origfigure\figure
\let\endorigfigure\endfigure
\renewenvironment{figure}[1][2] {
    \expandafter\origfigure\expandafter[H]
} {
    \endorigfigure
}

\usepackage{mathspec}
\setmainfont[
   ItalicFont     = HelveticaNeue-Italic,
   BoldFont       = HelveticaNeue-Bold,
   BoldItalicFont = HelveticaNeue-BoldItalic]{HelveticaNeue}
\newfontfamily\NHLight[
   ItalicFont     = HelveticaNeue-LightItalic,
   BoldFont       = HelveticaNeue-UltraLight,
   BoldItalicFont = HelveticaNeue-UltraLightItalic]{HelveticaNeue-Light}

\newcommand\textrmlf[1]{{\NHLight#1}}
\newcommand\textitlf[1]{{\NHLight\itshape#1}}
\let\textbflf\textrm
\newcommand\textulf[1]{{\NHLight\bfseries#1}}
\newcommand\textuitlf[1]{{\NHLight\bfseries\itshape#1}}

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}



\usepackage[margin=1in]{geometry}

\usepackage{fancyhdr}
\usepackage{hyperref}

\usepackage{longtable,booktabs}
\usepackage{caption}
% Correct order of tables after \paragraph or \subparagraph
\usepackage{etoolbox}
\makeatletter
\patchcmd\longtable{\par}{\if@noskipsec\mbox{}\fi\par}{}{}
\makeatother
% Allow footnotes in longtable head/foot
\IfFileExists{footnotehyper.sty}{\usepackage{footnotehyper}}{\usepackage{footnote}}
\makesavenoteenv{longtable}


\newcommand{\thecourse}{}
\newcommand{\thelesson}{}

\title{\textbf{\thecourse}\thelesson}

\pagestyle{fancy}

\fancyfoot{}

\makeatletter
\trim@spaces@in \thecourse
\trim@spaces@in \thelesson
\makeatother
\lhead{\textbf{\thecourse} \thelesson}
\rhead{\textrmlf{Compiled} \today}
\lfoot{Taproot \(\cdot\) \textbf{2020-2021}}
\rfoot{\textrmlf{Page} \thepage}


\titleformat{\section}
{\Large}
{\textrmlf{\thesection} {|}}
{0.3em}
{\textbf}


\titleformat{\subsection}
{\large}
{}
{0em}
{\textbf}

\titleformat{\subsubsection}
{}
{}
{0em}
{\textbf}

\setlength{\parskip}{0.45em}

\newcounter{definitionct}
\newcommand{\definition}[3][]{
    \stepcounter{definitionct}
    \begin{center}
        Definition \arabic{definitionct} \(\cdot\) [ \textbf{#2} \textrmlf{#3} ]
        \ifthenelse{ \equal{#1}{} }
            {}
            {\\ \textrmlf{#1}}
    \end{center}
}

\begin{document}

% DID YOU SET SPELL????

\begin{center}\rule{0.5\linewidth}{0.5pt}\end{center}

\end{document}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta name="generator" content="pandoc" />
                        <title>KBDefaultTemplate</title>
        <style type="text/css">code{white-space: pre;}</style>
                                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <style>
html {
    min-height: 100%;
    min-width: 100%;
    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
    font-weight: 300;
    background-color: #fafafa;
}

    #center-viewport {
        margin: 0 auto;
        padding-left: 20px;
        padding-right: 20px;
        max-width: 1200px;
        padding-bottom: 20px;
    }

    img {
        max-height: 40vh;
        width: auto;
        max-width: 100%;
    }

    a {
        font-size: 8px; color: darkgreen
    }

    h1, h2, h3 {
        margin: 0;
    }

    p {
        margin: 0;
        margin-bottom: 10px;
        margin-top: 5px;
    }

    h1 {
        margin-top: 20px;
        display: inline-block;
        /* border-bottom: 2px rgba(191, 60, 60, 0.4) solid; */
    }

    h2 {
        margin-top: 10px;
    }

    h3 {
        margin-top: 20px;
    }

    body {
        margin: 0;
    }

        </style>
    </head>
    <body>
        <div style="position: sticky; position: -webkit-sticky; top: 0; height: 30px; width: 100%; background-color: #BF3C3C; margin-bottom: 20px;z-index: 10000; color: white;   display: flex; flex-direction: column; justify-content: center;">
            <div><span style='cursor: pointer; font-family: "Courier New", Courier, monospace; font-weight: 700; margin-left: 20px' onclick="window.location.href='https://taproot.shabang.cf/'">Taproot</span><span style='cursor: default; font-family: "Courier New", Courier, monospace; font-weight: 300 !important; margin-right: 20px; float:right'><strong></strong></span></div>
        </div>
        <div id="center-viewport">
            <hr />
        </div>

        <script>
            $(document).ready(function() {
                // Generate clickable links
                let content = $("#center-viewport").html().replace(/<span>\[<\/span><span>\[<\/span>\w*?<span>]<\/span><span>]/gi, function(x) {
                    <!--let docPointer = x.match(/(\w)*/);-->
                        <!--let docPointer = x.match(/KB\w*/);-->
                    docPointer = [ x.replace(/\<\/?[a-z]+\>/g, '').slice(2, -2) ]

                    if (docPointer) {
                        let url = `https://taproot.shabang.cf/relay?request=${docPointer[0]}`;
                        return `<a href="${url}"><span>[[</span><span>${docPointer[0]}</span><span>]]</span></a>`;
                    } else {
                        console.log(`Cannot parse , returning...`);
                        return x;
                    }
                })
                $("#center-viewport").html(content);
                $("img").each(function() {  
                    let src = this.src.replace(/.*?\/Users\/houliu\/Documents\/School%20Work\/2020-2021\/KnowledgeBase\//gi, "https://taproot.shabang.cf/");
                    console.log(src);
                    $(this).attr("src", src);
                });
            });
        </script>
    </body>
</html>
%PDF-1.5
%����
11 0 obj
<</Filter/FlateDecode/Length 309>>
stream
x�uR�N�0���-���z��ZB)� ��D:� �A�W���c;8<�D�q�����V�����?*����'��EH&9�0�<81����+k��88E*�8P�X��G�:�}Y���<ݫ��ԙL ��.Uݶ'�-8o�r=�<�X��X��<T��O݃U;s*<�w3�	%��}96�F8i�`�:��
'AUA�0$�U�<6��Y�ｱ0���4w�m�Ǖb�jO��8���YNY6��i����'=�EY�]io<�5���p.e�y��66�*y����b\�����k�A$�5(-�f������
endstream
endobj
15 0 obj
<</Filter/FlateDecode/Length 234>>
stream
x�]P1n�0��
�)�BR�v14NhH[T��Q�hW@,	�<���#C���V�(�M@���t֙����Fh����=��V��.*|��6�8����������vwJ3��V���Ǆ�p���  �{�8�8�����V�3�����V2#r
����e��7iopJcT�GR0VBQ�%Ag��6E��_&_���2wCW���aOO1.{���u�u��S�aU����m=
endstream
endobj
17 0 obj
<</Subtype/Type1C/Filter/FlateDecode/Length 309>>
stream
x�cd`aa`dd�qw�tu�v�
�44 ��������l��?d�2��c�!�"�Ћ�?�,�GA��D� �j@�QJ�����������X����9���(3=�DA#YS����\G����R�17�(391O�7�$#57���Q�O�L-�Tа�())���///�K�-��/J���Q(�,�PJ-N-*KMQp��+Q�K�MU��]B9�����)�槤�1��t`##�ʏ��+�G~e|���{��>�ŋ�����X�x�
9���?������.��b>��sW�f��ܛg�� 1���" ��c�
endstream
endobj
19 0 obj
<</Filter/FlateDecode/Length 296>>
stream
x�]�Qk�0�w?�=v�blm���m��u�la�i<m����~&'}X@�/��O��\I����@�T����@�`-U͠��o�p��'�{� ���z�sx~��/Z)�{�~��j���.ZB�՟�a6:���b����$	 ��a�Κ;L�e{�'7�eJ4R�09g��)z�oؠ���4��EԠhK�4h��1H�0RHv�HT��Ѹ�R�+7�|�����|�`^��2"��bRFZ����ׂ�^IsRF�IҒ�#��+�[{t?���/zc�(�%��]R��u��*������
endstream
endobj
20 0 obj
<</Filter/FlateDecode/Length 314>>
stream
x�]�Qk�0���y�C�m�@�ֶLغ2[��Ƴ�b��/޹>,��/�����aQnJ���8�(][��J`g�(��J���0AX��-����uXo_��NI���N�_��<��x�rS�zm���eY�X��{gol���3<�w����NE�7�`�ZЎEA����dWCo�+��,�+g�ί< ]�{�maڹ���<��Q9�)I���"!Z͑��HKN�BD$���!Z�R�4""��T�_:�F���_��~9Ip�M�)���	���]���~��-:4Si��o:3f������
endstream
endobj
21 0 obj
<</Filter/FlateDecode/Length 261>>
stream
x�]��J�0��y�9��Ҧ�"���V{p���-M�5�&!M���MZzp 	3�͟�򪨔t}X�kt�J%,�z���N*B��-7�!Q��̉
Q�R}?_�b��Nrv�	�O��˹�w �]��l�-��z�j5�)�>����B7x�k�V�����%�C����q@� &Y���G�8Z�:$i�Di�DFP��m�i������I譾S�(�}�M��k��
��ᓵ˲��`��X*܍6���p� ��;
endstream
endobj
24 0 obj
<</Filter/FlateDecode/Length 11>>
stream
xګ� <I
v
endstream
endobj
25 0 obj
<</Length1 9829/Filter/FlateDecode/Length 4763>>
stream
x��Z{L\Wz?��0��� �����cccbl�İ��\f�0�f�{��f-U��M���Ҷ�6����mU6IWU�(���(j�}Hە[��+��O���#i��;�=3�g��Z�ν�9�;�����8l&1���ufc�������"���_�=]7�/|��cR
����Jr�;gAJ���C+������O�_������>
��s�Un�i8���O��D���I�Z�My�1�IϮ��j�']�U��5�^��/:���B_I�I����>Fk~��j����3������?������0�%�d�0&3����e&�=Ô�����������߲�ݻ=���.�;����cCl��ѫ`G�2��d������!��z�f��x�λV!ۙS~�9���6+9��-Izii[����l��
V�l�/�n3ɯ(���-�Ytd?|P6�r|��~�ܢwI���8��Wjl��N_Lh7���-����}~ѳ5��Γ����ع;ɹ�	W��+$���?�l�:�,�]ܺ>�ޚ�^r{<ʱ�7�,n�9��,-��(�)�_����й�b�%e2 b��
ѓ;<[o޸�Kh��ٖ������~l[�:CSS^��x=^�X�������c���5)�lH�
!������i����� �|8�.�\�!��C:��byH������~*�����@~݂��C ���φ���:�_K�xL���>���
�9�M���7@ΨF
����ReCM*c��~�t`����<.ig��t}����}��v���$�q�C�e��Y7K�0Km=�L���Y�uhh�h�ўB�������;h��m�w��/F(�
�1�|��07�$���Hl'��20 �l��
���EN�#�
���C������y5x���}>��+s��iG�ؙ�����������҇�O��^yav�����+G�m�K�06�Y>��plp�K�����"�߿�KH	OZ�m@v����O�䋀�DZ7Z�$������"���^A{�{h�-�e���RlU���V%@���D3 P�
���y%W��!:�'{�''O����ǁӣ--��Ҫ�63;;#]�3,
�����!7�K����+W�<9��x�EX5	�`#���oy2OF��<�'#�d����x2OF��<�'#9OF����W���*�Z�mn�6k���o�÷�~���m�}�ՓPf�ى�V'%��ښ
��w��ᑡ"o됋#��pp�\T�LJ#�ayn�i������&����m#=^��l�/w�����O��Ύ(��G��|Ju��'��[��x8TR߭�6:��r��pg��U���P�/��!{�Tu(�V^�;�y�c�WW�n���++�Kˬ<��"#�Y����)��|,�h�[<�0�tE�5^��
��I>ڈ�FpT�v�&o��-7�冷���r�[nx�
o��-7�冷��;�-7�冷,��<%l����Ѩ�hx\^���4�J"s��rX.m�4�_kj�0��,�w��{�w�XOuuϱ�ީ�j���4��+���##�S=�;�eI�윜�_ߊ�� q[
/��ԑJePo?@��~�Ah�-����(}�1�
c9s+���]��!e�!�3�I����b�V��B��I�����7�	w�}M�5�~dq��Ҩ�=�tx�jM�y�XZ��
<<�4���b9�m|vqb�c��w�d��M���Y�3b#|_lԁ����b�G���  f�E q@\�E q@\�E q��E q����-����\�
��P="Vz�]��[{O|#<P� [����㥳�d�>�%_�y�������d��:��b�`w�#l���_n���WS���
wU��&}��j;�+�O\Qg���/���;���;�Z�����f;���h��
y-���E�"?�:w�MĎ�Ҋ�5��n���<��
�����{��ΝOq�
d(�D$V�*��;�`������w�����ߎ��MVΤ� ~=G��E8p$��Ò26v�Fq�CI��Ml�����i|a=����B���VIq������N���1�-��A�A/ND�����joYt�-�ڜ_sdQ�֢�>���C���_CY�\�3������l��t6�x�w�@jk;z��ѩ�oH��|0�p
\y�\
���۬�u�y���O�[�pܹ�|r"���'�ɉ|r"���''�ɉ|r"���''�ɉ|r��ɉ|rZ��R�B�"wjD��SPA��*(�����z�{�+�zRQ&�_�;&绻�';r�!�ltt4:��c}����G�z`W�#��۬����n��Ksu��ם���^�a�KQ�kM��xo�!�@O7Z�$������"���^A{�{h���ó�+S
|Zĥ�ź���V
�{��T ��	:yF�r'O8Z'K�ܹ��?D��Τ�4��*z���?>����;w�g&���#Q���e��GR���8�����������������n��!��w�}��=wW)~;'%��(�������D���k���Ͻo1
T��d������yfж���<�9�����S�O�H��G~J~K~���x^�g�~	ϧ����Ⱦ��i͊���R��i�_�Œ\��N�U�g�2sȊ�m�'���j�yA;�>9*�"V-_t1�����K��mY�e�������W��o-��?Zf%��mc��]A�Y��B�V�8 h�_��.f͎h.���p�Ft�R�N4Gf�� ���9�4xJ�^@�"h;_�����X�8K�]�:JÂ.��[�	�T���t���-A��}���UN��mLqz�.�z:#D�]�<It%�
�<�.�Ht�Q����N���c�[G�eo��%����78��ps�����׏�3�Y}%a*]�ne 4:���Az�R�TD�9=�673�嬚�TN$�g�tV�MCQ�q}UWM-����VW�h:�QS�f�)ti?C�j��]�b}�����WtS]]�T�T4���M�)
�jL]^�#77Ԭ�ıc&���E�Ԋbb�ylW�����Q-e`��V6�k�n(��1aIF˚�J:��hzL[]ֲ+ZV�ήE�&U��K)�d2�ɒ��~J���f*�\+K-�W����FfU��d2������>��̪)#�e��n�f"�f�bڵ�0���n�P@�@����hE�.�n�T"�4�]�4L-i('�m6��r/Y�8gy�\��غf�QU9��is|��!��ƕ���@l@W��@�wp�a�9���ꥩ�{�[��T�RLK�٫�6߯l$�h��B>Y�a'�WO)Q�Z���ZV7bz���)�Q�]]3�uD�^�$�鵕�����6i�����eC��|���3�kN5�ޅ
�0���j����W4���Q���R�+�o���{��
0����Z)��ǒ�@��JV�$6��\�@h(`�� �N�[D�
z
@�T���I�b�>mA�x���2���%Ӝ�0
S��j*�@�L�$=�I��){fc_��ii�2ظ~���
<
$E/�O�C��i�%L33�߿��їs��GJI�#�O�%�e!���p9��
+�)���k��h:������r4��V4��j !EL�q.�D�p��YVw�W���Lͥ7�lT5��/~�o�Le+LcY�r�ᾛbGY�ep�͢����Ŧ�Eq7V� nǣx���`,�C�TH�������=Ґ��]41���T�M�O�$�3��Q0k2�����lMŘF��׋�xV1�x�\���hD���gP��s�Ir~�)e�1�u�/�D��\O
R�1�IsQ�s}4!QŌ
kVi� w26�V���l٘��KZ��~c�����,N�5Җc%
����
8Ӑ�1�\��I�.��$�����|�p[�Y+"6�7��*Ygؗ"$Ox9�Bݸu�=���l
�xd-�*Ā��W�	����VIBn4Ikt��{9��L��p6)θfq�0+f7H��g ��k�G� �,q������Q+�����l�@$91���]��4N�
'E�f!?Mx�"��r��=�q�ܘ���QV�q�"@�������'M� % Y���A�����D��ʼ_ރ�r�zV�~���|��ȉ�<{�>_�)��w� ;��b�t0I�&�,E���bU��`�,��H�'M��q���{�
��*��h^#�~�j�8mP�j$�?)!ۀ�e�?F<��*P�C��MU�
��e:�e�G	����<c����[��\݊C�T�V���U���!$��W���ޙ��6��(�4,�R]I>��9
y~!΍�N�a��6�qkU���h.ӊ���h�"�2X/C�1q�ilL�m���I�3��֌F9'�/"Ӡ�����?񬪒�(έ�E���7Y0�'b�~o[�4�*�pJ�4^��2�i�uKȝ��8zE��i]�䘄m��~(��٠���7?�����\m�,�Ú��(�$f��cG~��樒X9��{�����W��VFI;~�H	^�k���C�#�q�){h���;�B���f5=�s�ZV�#��g
�6��kS�MViϰ���1r �=���z���νU
��zo��d��U����Y���H5{��j�eRh0'h�52;s�l�J�?=l�R>*3��������!�(;��ii�9ȺQT�z�V2�f�ꍂ�=��� k���p0�7�܎�� ���
endstream
endobj
28 0 obj
<</Filter/FlateDecode/Length 12>>
stream
xګ� G�f
endstream
endobj
29 0 obj
<</Length1 8649/Filter/FlateDecode/Length 4509>>
stream
x��Ykl#�u�3|��V"%R��P�DIK�)R��+��zW^I���>F�H�5_��V�4-H��j��Ak�6�Oi�
��FSױ���A�Z?Z�N���N�:Ym�{g����x,�rpf�=��s���9g�H�#���Mb ��K���c�~�o�����B�2�!\�M녍���3��	1�mdv���\�w1=Mȱ��$��3�h!��U��6!���y�����̪7<7�R{\.�O���?#���d���L�����rbVR�����&!ծBQ*<W+D�|���{��Cb�.�u��a�!<1}�!��E��6Z9�8w�������I�a�|��?�ĿIg'���r-���ΛH5��X�a�XW��q�M�sw{���"Vb�ryp�p~A��g���h�~<�~������UoR�v�]ᴰ)���=�i7��Ҫ���go:�Zf�d���#�����k��k�܁�ɿ �zW�Xݻ9ۺ7=�l�x���WW�^�m�$��2�=��7�&�g|6��Ҭ,�L$ww����{uw�u+a�g�#� +�:���}nz�uM{=�T��x=�#9�V����<�POl���V@j��������5i�CA�x0�N�점�=R�/�,�~ �75�o> ���v�r�ݕ7�[7C��!��07?�-F�>�P���O��J�o~P��!o���'B8�-�;��"b�#����*r�6(x��� u�"Fpcnyl��dR���D�T`�2���� �^h��8=�N��{��o�H�h��Ο��߉��,�͑�$yRMp#� o�t^d<<�H��κ8)9qGjx�{�����8SM���p>_���h;/�%�>p��<ϿF����a���a�	����ÙVb��P/}?�N�~
���4�9�A/��t�Ҍ���w�/�2��"i���������V0͠~P� %A2h�,�y�K�[�7@�.�RO:��2�����#4T?<i��;�nW
��
�>Wړ��p����1�guz���a��ʙZ�c��V�E��c������Q�G�S���255>��68>5�җzr|�ɔϷ�x&��;��L��� ����X�<�[�ڈ� M+s�s�a�s _���o=No���8��wd�{��o��>{d��&�z���?��������.`j�0�S{	S;0�S;0�S;0�S;0�S;0�S;0�S;0�5Xl��7��8 �Mči��@��Q�#��<��)Ж���LF&
 ������+���ih�왍yM�����7r���{ǟ����qo
S�κ�`{�h(��>��Z�D�>�;���FZ{O=M�
�v��a�y �5lm[+�AJ2︨��S�Iw�(ʩ��cA�S q�/$�>��/_\����۳��?�S�� ��H�X�~'(���2�.`�*a��.�%@I��=z���
�:|�Y;�ͤ�Mӌ)�d��f��H�@�t�:̥x�z]�}����0݃��/��g.�]J�}3V.������l�{1��3�C�ň.o<�����VF[�#�cC3���u�_���5038se��1�D<z:��r��{����9
'�<����A�E���s��9�mt�F�8#���'W޽���;��?���Nxݨ?6�IB�$����$��y�4� �/32ݦ�t���l
�����G�na���!h
K����RU��<�Z%f�**��=���Js,u� �EL2�e���]���m 0/����4�,p�"�_��]��������bީ@k�Д�;js{�]�y�
�=���;7�eq�kw���vgk�k`���?�30�����G�uf��XsS[W��?:�_g�<�YG���j������uU���:v&��� �����W�I H�W۩&����=����
�Z�5Y)�k�7k�ތHo.Ez3��AqP�ɠг��A/�n�� �H�����{C�_���4��I�^�Y�D#=�5p�\)쇵jsj����ǒc�c���E7ύ9����I_��w�x�����Nl����j �62������G��]�ؙ���#]Bl��ġ
o����Z����[����m��m��[�g5���z��B�E��-Z�]�2�M�7�(�^-�F<1�N��cܗ�~�7�F=B�׸�l��
L��qܧx��Ss��L7�9����
wD�}��F�m�����j�o~ml,=߷����� ߨ�Q�g�
���J�Pb��#/��C�Ҥ�\)1B��cp�ċq�?�Y��M_�VN�̤�����_
�ݽ�;�ס��ok���}�ݔ��9-(���N��z�=�=
֕��N_C�J���/���8ʞ�yӝ�s'k:���G_�N���u4����x�30�[=K�1�����.���G����Y��K��M�02�V�0r��l�02̆�!�l�02̆�!�l�02̦��j1��^7)���B�W�~��W
����1�g��\z^�/OL^���K����&�--�D0�jiJ�k����Z<�J$Rz�C�q�?�9��t��T������5�j5�t'���/:��>Zr���=����ޣܽ���J>[��굑z��N���󑹋�,�~<�v���v�$\;��>�:`��R!������@ۍ�ڜ�t}�Z|j��ɨG��~t��0�n��Q��[Pc\��_^Y]�izf|���oz�Ņ�ot���[]-7���_#��Ԏ��s���/���d?�������Q����(�Vz� �8�o?U_C�M˷KVʿ����5�~\Y�l�~2 z��a]�������.��'��<�8�4�'ȩ��/�7���	�&��'���j��\�vqw��^���W����_��.�U���2^�������0����\���Q��dq�a�����ǒu��^)���r�r�-�牅t� �|:o�΂ΛH��y39Ƌ:o!���t�Jt��E�:o'M�u����B�qk0�P�9�6���<��:o S��I��M�M�	輙ԘFt�B\�9�r#E�lJ2���t���զ,���nӎ�C��y���8�_f|5շ~��&��N�6�_G��#��Ώ�bc���
���L��2����)_�|��S����*[��6�3r*_�)���З���C~z�{��゘K���yV��՝�f�(w�3ٵy!_dU��u9#���.�
�K����gbN���0�&�O��"�K�Ͷ�)	iyCV�LfG�r�|F�bjS�IP��ZF����-%a3���VJ�m*F/c�u1%)BFNI9�ռ���dE�巙����#�ׅyINK�5��!���VꙬ���r���d�&�Z����(+���*�Q�4��_�R�=-+���C�l>-�˺0��S�ZsʺT,��-���-�9&�( 
E�.ʪ
�l_3�(�����m���="̤��viGQ��"$�m��/�]�vザJ���.�rJ�I[�ic+#��	C�@(=$
�	��P|0ݯS�(K���~�.�9"E%-e��3�\���)�6�>�=ؐ�.
��R�[�k[EYI�)U��oҍTfK��#����f1�����x�Vc�<
��v��֚"�e���R69+)�FNXR��r����Ί*��!��-+J��)*,
�k�$8}]b����c+@(��_[�6�EEɧ�D�Q��0i~�(6w(��P<R�썅�}	�"�X�D�9�r�>bqX����A�BQK�y�S��!e�T��UHe$��!"'�29�Y����yUF���P���I���B�,V���Ay��T%��������v� *I�B����Qi��TTNm�E1��!��^��/	��-��YyCT���S�lk(��tXʒsy�sҹ�,@X*��-��䋺�֥\k�=��ߑ�H�8��ȏ��#yܳD$��z�xժ���#)��2�S�(��2��#|��i]�{ϲ9󰺃Y$]���D��g���G}Ы�Y[�%�C������H	:�� �BJ��!UH �����֢��י� ��ld���4ӥ��l4�S�U:CZ�����>�G�-�����(�^��m�V*Y��X��Zڂ:~2U�{Y_�:�/1o))恢Ϯb� �<lP̨�e�6K��Rek��1��#_i��dw��3luJ��r�3�\ڧJ�����%-jgG��F�Z�J��-}}~}he���4���,2��LA3_�G�YeqF=[g+,����M��Z��Dn0�(�
�+2MUG@D���u�Q-�>>G��'�
>��1^�v	V�q��!��m��U��{�q�ܸ�ܠ�
�#�"�^���WVM3�kJ��}5�N�_C�x���jz���d6C��
��a2.�'p�W�\}���/��f�9h~��пSs�?
<i8ν��$!�I'�Go�q�
z�_D?����~�k���'64���N
endstream
endobj
32 0 obj
<</Filter/FlateDecode/Length 12>>
stream
xګ���  �>
endstream
endobj
33 0 obj
<</Length1 5771/Filter/FlateDecode/Length 2991>>
stream
xڭXkl�>3��ǎ��3�'w���xm��v�&��1	��Mk��wgw'�����z�U#���(Q�����CEB��(uBQ ��RUT�mZ�� D��HB���o����W��w�=��s�s���DD�t�\<<�?��O��9y8�h�ܓ�I���e��?��<�3D�x2�|f�
��"W ����������;Px�t=����oO���^�2D���O�����Qn�R�g�	O�?B��Ք6t�{��x*�ʘZ���5|㟑,�U>O�7�!iK�{�>%��܅1���|u��&����C���Q�g��ͫ���z��HΟ�_竓\O)z�N�G�V�G�����z��}��з�Y�\���dUcn
	\!ej�I:3�"]}te�Z�"�C���`l�>�,=���b��`��]��̶ͱ%�4]b�YB�.�;�7���~�Lӳ:ڙY���\sjss;��������9x8�x8*<���0��e׶��{g�O�5/���5��l����c���9Xy������F'�2���P^�2
p1�����m��KK�K�Dh��+9
d�m\�V��)14��o�6�q̍��88=���y$_���J(�,�t«�V�"J�o���7E����� f������}�E��u>Y`��u�[�p�W3�P�p#�mo�Eo��7��M�g�17q�7m^�R�O~�P�唷�P�T
��w�sx��ѝ(A�T?��r��� �gaX�������a�Ͻ�=/C�ϟ�=��_㯫��H߽��+��CWH~��	�W��h�ޒ�I̭�sB�¬����+M�8�e��Oހg��߬P q�B�e#b��c��������Ɵې���Ab�E�c�� ?��y
R5��C x�?e��^[/�p]�����>���p� l�tC	�D��!߃<yrrR5���Yag��Q'8�Ӈ,�v�C�[�
��r[k��Y�E
��Я�,y�7u��t5U�I��@O_��L��������������ݒZ�1���i���P�����o�~z��}�{�?.���)�6UP�9t��Bi��s��\(����������N}û��}�����*�ؕ�$�5�1^�m����>��>�<*��G<*�Q�
xT���G<*�O�EH*����w=V�e���
�ub�F�ۊ=�q+g74�t6rv˪]�Q�ݞUj;NU6�l����3������d��/�����v������(�~�9����.�o�����q�}Gpס�Б�-=�����ci��}�_���!���ٟ����Vϳ� \v~�1��﹄���U/ſF�#��[�'=M�r@��qFn�s@|>�ꥧ�|�p�\D�NF[���݅S�G;�_��#��p�u0�e�`u��vS�|��=T.?�`/��	��?���B�\I[�O8x�r��v��`���q����"��S�a�p���f{�����2j���ٺ9nϔ�^`�gF�2~���/����=�^yL�J�F����'���Uy^��E�Z�_yM�:���^���\��-�&�u�{���r\.bV>�x�$�_��ϭp�52yS�'l��fᑁ oEm���(@�Czڰ�
`�T�<O-`��t�bj,�'u�֢E��Z2�"F*��u��c{��Y��,�\Ԣ}3	�E��n��d�i����I�i
�jT]Hj�2bvN55Êӈf#z:�l̞�b15�Y,�G������F��K9a�)ʹ�̈��Ւ��L6ff#�R�%�K�=�"e�S��aZ�J�yx�����
���ۨne�j�Ô�c���$
b�M5m�4�D7��	#k����x��,�3u�F j���y_*�/[8(��5�t޲���&���1L^�B5��qd��آf��MjY�.#]�a\��
����.6�C���1\5+�^>Һֺ�J�E��j�q��K葄���G\G��Z=�"����YS��z�֍4j��$����]vm�$L#O\o��X����ȥame,=����Z�]�T���;��-�SK��X8�!�EMl�X6-bE�-;�=_�1cղ�H�x�S���7�L"�����A�9�;�8s6�;?��DzD�Ug!�쾌����i;���W��o����2�e dZ6�$5��>열-\p"�4��D��]K�Z��]f�ÌǷ�����?�D/v�C`i��K�vfg.��[-�S�><F�o0<�M�l:��'�λa:Y��Cz\���~��J!�b�p�1,j&
�7���ZS��2��E�Z���Eˊ�y��o�.�QT�6>{ɠ.;&.=qJ@è�"�1��hm��Kp���TJ�oAvF�k+�X!����B���{��V&Z����G�$D�N���35�$1�>-�C�֢>h�8���D��k�^��p�����G���<N
^�
Q'��"���h�G#*�I
��|�D�\sr̠垲���ǡ���g��b¿&��DD������|pθ�%W⩰JFdi�x<L0��<�����E�h-����*�/-�/��j�Jc��Y��V�Oމ�ﬅ"W������_������M�9��k-#�4��x��>��D��3��'{v	cqq�-ag
K�a@�h!�E�3n���w�S8R<ma
���������b��S"�	gߚ�o>lg�_;G֜�#_:wafh
���\��y^���<Y����࿂�_~��/����ϝI�q�]���q���pt��<}x��x���Xc���H�p;�Qc��*^L:i+^jq�&���*P�:�h�}�
���� ���W�����K5>ھ�^��p3^�
�7Y�
���u<*W�+r\m��J��y�����V�O�`J��PU�VjF���9�r��+��J���=-�
endstream
endobj
13 0 obj
<</Type/ObjStm/N 20/First 137/Filter/FlateDecode/Length 1028>>
stream
xڭ�[o�H���S���*:w������5Z�&��\<!���l�M����$��Z�s��~��8P`0	LI���i`\��� �Aq
\�f
$h��s0w�)g<|
��w.�i!�j)AP`FRpۨ�����R8:"�,-݃�	�od�Ѩ̡Hg��n�L�l>�e@&��ه��ԏ~����_��-�u>�fXy�=�,��~�6-]�����"`�͛��
�Κ|I�"�
9�q������amx�s�ۨ���Y4���_R��-:�s{�v%���[�}��o��G�SN�`�G�]�N�t��5�\-��/=�;��@�v�re����Y�QR�U��Yl���^��e�b	U!OW�
�2Zf�p�?��hǄL�?K7q�02˾����^*WI\�N-uܼ(�Q�M:�6�~T�����x|��88���h�h�y���MNdݝ������&��<_�^1w�(q�h��$�^�XZ�0��J2-��� 1�2Z��}ǫ�
t��*d�=*:��F��
m��u�"H-�b��6nW�ѝݭ��P�@S*x�����P�@i	����B_����b�F�㡛���ȯ�����S���e2�.��v�\s���kͣ��c���7Yu(IQ揭^���mr��Xb�h�c,2)ۘ�j��wUo��
���"W�h<β���<Z��Mo�kpOo�u8
 Ͷ�:����RHn��I�4:/f|�w�'��O�=������$J��Q��D%�>ϺX؆�/���gK��j�7:��O5�
�����<�W@{�Aj�
+誆�Ԁ�	��� O�a8�]M�ǻپ���9��S_�|�_���-��Ir݌���[B0�Aǽgj!P����^m��}	�'	pH��8:�^����ϖ�>JA�4J�~�V�(u��y�],��ŒQ��k�R�S-��0�Ǚ�o�7D��o���*�V!^y��
黮��_�d���iӹ8�X���!�[/Ws@�W�����~XN�vK�ۼ�͚���4�
endstream
endobj
34 0 obj
<</Type/XRef/Root 1 0 R/Info 2 0 R/ID[<3ced41ae9013f10431130eaceb522403><3ced41ae9013f10431130eaceb522403>]/Size
35/W[1 2 2]/Filter/FlateDecode/Length 116>>
stream
x�%��
�@��e�EA@������В5X	'T`E��M����� ���Qd�����ED#�Dh���W ?�r��W�8�%_���v��m-}�����j������g�1�����
endstream
endobj
startxref
16043
%%EOF
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta name="generator" content="pandoc" />
                        <title>KBDefaultTemplate</title>
        <style type="text/css">code{white-space: pre;}</style>
                                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <style>
html {
    min-height: 100%;
    min-width: 100%;
    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
    font-weight: 300;
    background-color: #fafafa;
}

    #center-viewport {
        margin: 0 auto;
        padding-left: 20px;
        padding-right: 20px;
        max-width: 1200px;
        padding-bottom: 20px;
    }

    img {
        max-height: 40vh;
        width: auto;
        max-width: 100%;
    }

    a {
        font-size: 8px; color: darkgreen
    }

    h1, h2, h3 {
        margin: 0;
    }

    p {
        margin: 0;
        margin-bottom: 10px;
        margin-top: 5px;
    }

    h1 {
        margin-top: 20px;
        display: inline-block;
        /* border-bottom: 2px rgba(191, 60, 60, 0.4) solid; */
    }

    h2 {
        margin-top: 10px;
    }

    h3 {
        margin-top: 20px;
    }

    body {
        margin: 0;
    }

        </style>
    </head>
    <body>
        <div style="position: sticky; position: -webkit-sticky; top: 0; height: 30px; width: 100%; background-color: #BF3C3C; margin-bottom: 20px;z-index: 10000; color: white;   display: flex; flex-direction: column; justify-content: center;">
            <div><span style='cursor: pointer; font-family: "Courier New", Courier, monospace; font-weight: 700; margin-left: 20px' onclick="window.location.href='https://taproot.shabang.cf/'">Taproot</span><span style='cursor: default; font-family: "Courier New", Courier, monospace; font-weight: 300 !important; margin-right: 20px; float:right'><strong></strong></span></div>
        </div>
        <div id="center-viewport">
            <hr />
        </div>

        <script>
            $(document).ready(function() {
                // Generate clickable links
                let content = $("#center-viewport").html().replace(/<span>\[<\/span><span>\[<\/span>\w*?<span>]<\/span><span>]/gi, function(x) {
                    <!--let docPointer = x.match(/(\w)*/);-->
                        <!--let docPointer = x.match(/KB\w*/);-->
                    docPointer = [ x.replace(/\<\/?[a-z]+\>/g, '').slice(2, -2) ]

                    if (docPointer) {
                        let url = `https://taproot.shabang.cf/relay?request=${docPointer[0]}`;
                        return `<a href="${url}"><span>[[</span><span>${docPointer[0]}</span><span>]]</span></a>`;
                    } else {
                        console.log(`Cannot parse , returning...`);
                        return x;
                    }
                })
                $("#center-viewport").html(content);
                $("img").each(function() {  
                    let src = this.src.replace(/.*?\/Users\/houliu\/Documents\/School%20Work\/2020-2021\/KnowledgeBase\//gi, "https://taproot.shabang.cf/");
                    console.log(src);
                    $(this).attr("src", src);
                });
            });
        </script>
    </body>
</html>
\documentclass[
]{article}

\setlength\parindent{0pt}

\usepackage{amsmath}
\usepackage{amssymb}

\usepackage[normalem]{ulem}

\usepackage{cancel}

\usepackage{ifthen}
\usepackage{trimspaces}

\usepackage{graphicx}
\usepackage{xesearch}
\usepackage[dvipsnames]{xcolor}

\usepackage{enumitem}
\setlistdepth{9}

\setlist[itemize,1]{label=\textbullet}
\setlist[itemize,2]{label=\textbullet}
\setlist[itemize,3]{label=\textbullet}
\setlist[itemize,4]{label=\textbullet}
\setlist[itemize,5]{label=\textbullet}
\setlist[itemize,6]{label=\textbullet}
\setlist[itemize,7]{label=\textbullet}
\setlist[itemize,8]{label=\textbullet}
\setlist[itemize,9]{label=\textbullet}

\renewlist{itemize}{itemize}{9}

\makeatletter
\def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth\else\Gin@nat@width\fi}
\def\maxheight{\ifdim\Gin@nat@height>\textheight\textheight\else\Gin@nat@height\fi}
\makeatother


\UndoBoundary{[, ], \_}
\SearchList{startbrac}{}{*[?}
\SearchList{endbrac}{}{*]?}
\SearchList{kbtag}{\color{ForestGreen}{\href{http://taproot.shabang.cf/relay?request=#1}{\tiny\textulf{[[}\textbf{#1}\textulf{]]}}}\color{black}}{*KB?}



% Scale images if necessary, so that they will not overflow the page
% margins by default, and it is still possible to overwrite the defaults
% using explicit options in \includegraphics[width, height, ...]{}
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}
% Set default figure placement to htbp
\makeatletter
\def\fps@figure{htbp}
\makeatother

\graphicspath{ {./} }

\usepackage{titlesec}
\usepackage{titling}
\usepackage{makecell}
\usepackage{bookmark}

\usepackage{float}
\let\origfigure\figure
\let\endorigfigure\endfigure
\renewenvironment{figure}[1][2] {
    \expandafter\origfigure\expandafter[H]
} {
    \endorigfigure
}

\usepackage{mathspec}
\setmainfont[
   ItalicFont     = HelveticaNeue-Italic,
   BoldFont       = HelveticaNeue-Bold,
   BoldItalicFont = HelveticaNeue-BoldItalic]{HelveticaNeue}
\newfontfamily\NHLight[
   ItalicFont     = HelveticaNeue-LightItalic,
   BoldFont       = HelveticaNeue-UltraLight,
   BoldItalicFont = HelveticaNeue-UltraLightItalic]{HelveticaNeue-Light}

\newcommand\textrmlf[1]{{\NHLight#1}}
\newcommand\textitlf[1]{{\NHLight\itshape#1}}
\let\textbflf\textrm
\newcommand\textulf[1]{{\NHLight\bfseries#1}}
\newcommand\textuitlf[1]{{\NHLight\bfseries\itshape#1}}

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}



\usepackage[margin=1in]{geometry}

\usepackage{fancyhdr}
\usepackage{hyperref}

\usepackage{longtable,booktabs}
\usepackage{caption}
% Correct order of tables after \paragraph or \subparagraph
\usepackage{etoolbox}
\makeatletter
\patchcmd\longtable{\par}{\if@noskipsec\mbox{}\fi\par}{}{}
\makeatother
% Allow footnotes in longtable head/foot
\IfFileExists{footnotehyper.sty}{\usepackage{footnotehyper}}{\usepackage{footnote}}
\makesavenoteenv{longtable}


\newcommand{\thecourse}{}
\newcommand{\thelesson}{}

\title{\textbf{\thecourse}\thelesson}

\pagestyle{fancy}

\fancyfoot{}

\makeatletter
\trim@spaces@in \thecourse
\trim@spaces@in \thelesson
\makeatother
\lhead{\textbf{\thecourse} \thelesson}
\rhead{\textrmlf{Compiled} \today}
\lfoot{Taproot \(\cdot\) \textbf{2020-2021}}
\rfoot{\textrmlf{Page} \thepage}


\titleformat{\section}
{\Large}
{\textrmlf{\thesection} {|}}
{0.3em}
{\textbf}


\titleformat{\subsection}
{\large}
{}
{0em}
{\textbf}

\titleformat{\subsubsection}
{}
{}
{0em}
{\textbf}

\setlength{\parskip}{0.45em}

\newcounter{definitionct}
\newcommand{\definition}[3][]{
    \stepcounter{definitionct}
    \begin{center}
        Definition \arabic{definitionct} \(\cdot\) [ \textbf{#2} \textrmlf{#3} ]
        \ifthenelse{ \equal{#1}{} }
            {}
            {\\ \textrmlf{#1}}
    \end{center}
}

\begin{document}

% DID YOU SET SPELL????

\begin{center}\rule{0.5\linewidth}{0.5pt}\end{center}

\end{document}
---
title:   
context: 
author:  
source:  #index
---

---
