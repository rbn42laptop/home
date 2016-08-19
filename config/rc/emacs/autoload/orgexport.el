;为了在org转换html后用firefox打开
;(setq browse-url-generic-program
;      (cond
;       ((eq window-system 'mac) "open") ; mac
;       ((or (eq system-type 'gnu/linux) (eq system-type 'linux)) ; linux
;        (executable-find "firefox"))
;       ))

;(setq browse-url-generic-program
;      (executable-find "firefox"))
;(setq browse-url-browser-function 'browse-url-generic
;      browse-url-generic-program "firefox")

;https://kuanyui.github.io/2014/05/10/emacs-org-mode-xelatex-output-chinese-pdf/
;org2pdf中文 这部分配置运作正常,但是ctexart模板本身有问题
;(setq org-latex-classes
;      '(("article"
;         "
;\\documentclass[nofonts]{ctexart}
;\\author{Robin}
;\\setCJKmainfont[ItalicFont={AR PL UKai CN}]{AR PL UMing CN} 
;\\setCJKsansfont{WenQuanYi Zen Hei} 
;\\setCJKmonofont{WenQuanYi Zen Hei Mono} 
;"
;         ("\\section{%s}" . "\\section*{%s}")
;         ("\\subsection{%s}" . "\\subsection*{%s}")
;         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;         ("\\paragraph{%s}" . "\\paragraph*{%s}")
;         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
;        ))
;添加层级
;(require 'org-latex)
;(require 'ox-latex)

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))  

(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             `("book"
               "\\documentclass{book}"
               ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
             )

(add-to-list 'org-latex-classes
             `("thesiszh"
               "
\\documentclass{book}
\\usepackage{zhfontcfg}
               "
              ; ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;这个模板排版紧凑,那么就不便于凑页数了.
;有特殊的字体要求,所以暂时不可用中文.
(add-to-list 'org-latex-classes
          '("koma-article"
             "\\documentclass{scrartcl}"
             ("\\section{%s}" . "\\section*{%s}")
             ("\\subsection{%s}" . "\\subsection*{%s}")
             ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
             ("\\paragraph{%s}" . "\\paragraph*{%s}")
             ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; [FIXME]
;; 原本是不要讓 org 插入 hypersetup（因為 org-mode 這部份設計成沒辦法自訂，或許可以去 report 一下？）
;; 改成自行插入，但這樣 pdfcreator 沒辦法根據 Emacs 版本插入，pdfkeyword 也會無效...幹。
(setq org-latex-with-hyperref t)

;; 把預設的 fontenc 拿掉
;; 經過測試 XeLaTeX 輸出 PDF 時有 fontenc[T1]的話中文會無法顯示。
;; hyperref 也拿掉，改從 classes 處就插入，原因見上面 org-latex-with-hyperref 的說明。
(setq org-latex-default-packages-alist
      '(("" "hyperref" nil)
        ("AUTO" "inputenc" t)
        ("" "fixltx2e" nil)
        ("" "graphicx" t)
        ("" "longtable" nil)
        ("" "float" nil)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "textcomp" t)
        ("" "marvosym" t)
        ("" "wasysym" t)
        ("" "multicol" t)  ; 這是我另外加的，因為常需要多欄位文件版面。
        ("" "amssymb" t)
        "\\tolerance=1000"))

;; Use XeLaTeX to export PDF in Org-mode
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"))

;; 指定你要用什麼外部 app 來開 pdf 之類的檔案。我是偷懶所以直接用 kde-open，你也可以指定其他的。
;(setq org-file-apps '((auto-mode . emacs)
;                      ("\\.mm\\'" . default)
;                      ("\\.x?html?\\'" . "xdg-open %s")
;                      ("\\.pdf\\'" . "kde-open %s")
;                      ("\\.jpg\\'" . "kde-open %s")))
