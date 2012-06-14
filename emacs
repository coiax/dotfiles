;; I like my terminals black, and something something something.
;(set-background-color "black")
;(set-foreground-color "white")
; Not needed thanks to emacs themes

;;Requirements
(require 'tex-site)

; Go go colour theme
(require 'color-theme)
(color-theme-dark-laptop)

(add-to-list 'load-path "~/elisp")
;;(require 'screenplay)
; I decided to write it in screenplay class LaTeX instead
(require 'unbound)

(require 'gnugo)
; (load-file 'default-gnugo-xpms)

(fset 'latex-screenplay-begin-dialogue
      "\\begin{dialogue}")
(fset 'latex-screenplay-end-dialogue
      " \\end{dialogue}")
(global-set-key (kbd "C-c b") 'latex-screenplay-begin-dialogue)
(global-set-key (kbd "C-c e") 'latex-screenplay-end-dialogue)
(setq-default ispell-program-name "/usr/bin/aspell")
