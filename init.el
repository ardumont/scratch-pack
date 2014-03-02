;;; scratch-pack.el --- A pack to tinker

;;; Commentary:

;;; Code:

(install-packs '(graphviz-dot-mode
                 htmlize
                 auto-complete))

(require 'auto-complete)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

;;; scratch-pack.el ends here
