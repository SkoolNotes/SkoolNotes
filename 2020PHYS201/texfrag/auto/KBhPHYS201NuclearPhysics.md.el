(TeX-add-style-hook
 "KBhPHYS201NuclearPhysics.md"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath"
    "amsfonts"
    "inputenc"
    "fontenc"))
 :latex)

