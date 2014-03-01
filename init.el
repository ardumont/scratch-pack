;;; install-packages-pack.el --- Install routine

;;; Commentary:

;;; Code:

(install-packs '(;; some playtime with graphviz
                 graphviz-dot-mode
                 htmlize
                 auto-complete))

(require 'auto-complete)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

;;; install-packages-pack.el ends here
