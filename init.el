(install-packs '(;; some playtime with graphviz
                 graphviz-dot-mode
                 htmlize
                 auto-complete))

(require 'auto-complete)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

(live-load-config-file "bindings.el")
