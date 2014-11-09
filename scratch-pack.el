;;; scratch-pack.el --- A pack to tinker

;;; Commentary:

;;; Code:

(require 'install-packages-pack)
(install-packages-pack/install-packs '(graphviz-dot-mode
                                       htmlize
                                       google-this))

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

(provide 'scratch-pack)
;;; scratch-pack.el ends here