;;; install-packages-pack.el --- Install routine

;;; Commentary:

;;; Code:

(install-packs '(;; some playtime with graphviz
                 graphviz-dot-mode
                 htmlize
                 auto-complete
                 cyberpunk-theme
                 solarized-theme))

(require 'auto-complete)

;; (disable-them 'zenburn)
;; (load-theme 'zenburn t)
;; (load-theme 'solarized-dark t)
(load-theme 'cyberpunk t)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

;;; install-packages-pack.el ends here
