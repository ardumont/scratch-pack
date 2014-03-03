;;; scratch-pack.el --- A pack to tinker

;;; Commentary:

;;; Code:

(install-packs '(graphviz-dot-mode
                 htmlize
                 auto-complete
                 guide-key))

(require 'auto-complete)

;; delay before displaying the help message
(setq ac-quick-help-delay 0.3)

(require 'guide-key)
(setq guide-key/idle-delay 0.1)                ;; Delay in seconds before guide
                                               ;; buffer is displayed.
(setq guide-key/guide-key-sequence '("C-c"))   ;; key sequence to learn
(setq guide-key/recursive-key-sequence-flag t)

(guide-key-mode 1)                             ;; Enable guide-key-mode

;;; scratch-pack.el ends here
