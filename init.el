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
(setq guide-key/idle-delay 0.8)                ;; Delay in seconds before guide
                                               ;; buffer is displayed.
(setq guide-key/guide-key-sequence '("C-c" "C-x"))   ;; key sequence to learn
(setq guide-key/recursive-key-sequence-flag t)

(guide-key-mode 1)                             ;; Enable guide-key-mode

(require 'graphviz-dot-mode)

(add-hook 'graphviz-dot-mode-hook
          (lambda ()
            (define-key graphviz-dot-mode-map "\C-cv" nil)
            (define-key graphviz-dot-mode-map "\C-cp" nil)
            (define-key graphviz-dot-mode-map "\C-cc" nil)
            (define-key graphviz-dot-mode-map "\C-c\C-c" nil)
            (define-key graphviz-dot-mode-map "\C-c\C-u" nil)

            ;; (define-key graphviz-dot-mode-map "\r"       'electric-graphviz-dot-terminate-line)
            ;; (define-key graphviz-dot-mode-map "{"        'electric-graphviz-dot-open-brace)
            ;; (define-key graphviz-dot-mode-map "}"        'electric-graphviz-dot-close-brace)
            ;; (define-key graphviz-dot-mode-map ";"        'electric-graphviz-dot-semi)
            ;; (define-key graphviz-dot-mode-map "\M-\t"    'graphviz-dot-complete-word)
            ;; (define-key graphviz-dot-mode-map "\C-\M-q"  'graphviz-dot-indent-graph)
            (define-key graphviz-dot-mode-map (kbd "C-c G p") 'graphviz-dot-preview)
            (define-key graphviz-dot-mode-map (kbd "C-c G c") 'compile)
            (define-key graphviz-dot-mode-map (kbd "C-c G v") 'graphviz-dot-view)
            (define-key graphviz-dot-mode-map (kbd "C-c G C-c") 'comment-region)
            (define-key graphviz-dot-mode-map (kbd "C-c G C-u") 'graphviz-dot-uncomment-region)))

;;; scratch-pack.el ends here
